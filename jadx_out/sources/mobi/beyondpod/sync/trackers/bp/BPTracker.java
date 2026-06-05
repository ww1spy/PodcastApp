package mobi.beyondpod.sync.trackers.bp;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.events.ApplicationEvents;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.SyncWorker;
import mobi.beyondpod.sync.TrackedChangeBase;
import mobi.beyondpod.sync.TrackedChangeEnclosure;
import mobi.beyondpod.sync.TrackedChangeEpisode;
import mobi.beyondpod.sync.TrackedChangeFeed;
import mobi.beyondpod.sync.TrackedChangePost;
import mobi.beyondpod.sync.trackers.ITracker;
import mobi.beyondpod.sync.trackers.bp.BeyondPodServiceClientV1;

/* loaded from: classes.dex */
public class BPTracker implements ITracker {
    private static final int BACKOFF_MILLI_SECONDS = 2000;
    private static final int MAX_ATTEMPTS = 5;
    private static final String TAG = "BPTracker";
    private static final Random random = new Random();

    @Override // mobi.beyondpod.sync.trackers.ITracker
    public void close() {
    }

    /* loaded from: classes.dex */
    public static class RemoteActivities {
        private List<DeviceActivity> _Activities;
        public Date _RemoteDateTime;

        public RemoteActivities(List<DeviceActivity> list, Date date) {
            this._Activities = list;
            this._RemoteDateTime = date;
        }

        boolean hasRemoteActivities() {
            return this._Activities != null && this._Activities.size() > 0;
        }

        List<DeviceActivity> getActivities() {
            return this._Activities;
        }

        Date getRemoteDate() {
            return this._RemoteDateTime == null ? new Date() : this._RemoteDateTime;
        }
    }

    @Override // mobi.beyondpod.sync.trackers.ITracker
    public void initialize() throws Exception {
        if (StringUtils.isNullOrEmpty(Configuration.CDSUserName()) || StringUtils.isNullOrEmpty(ChangeTracker.deviceID())) {
            throw new Exception("Invalid User or device id");
        }
    }

    @Override // mobi.beyondpod.sync.trackers.ITracker
    public void syncChangesUp(List<TrackedChangeBase> list) throws Exception {
        throw new Exception("Not Implemented");
    }

    @Override // mobi.beyondpod.sync.trackers.ITracker
    public List<TrackedChangeBase> getRemoteChangesSince(long j) throws Exception {
        throw new Exception("Not Implemented");
    }

    @Override // mobi.beyondpod.sync.trackers.ITracker
    public List<TrackedChangeBase> syncPushPull(List<TrackedChangeBase> list, long j) throws Exception {
        RemoteActivities storeAndRetrieveActivities;
        int size = list.size();
        if (size == 0) {
            TrackedChangeBase.logSyncEvent(TAG, " --- Nothing to upload! Checking for remote changes...", null);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, " --- Starting the execution of " + size + " upload syncing requests!", null);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<TrackedChangeBase> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            TrackedChangeBase next = it.next();
            if (Thread.interrupted()) {
                TrackedChangeBase.logSyncEvent(TAG, " --- Request Queue processing was interrupted.", null);
                break;
            }
            next.prepareForSave();
            DeviceActivity deviceActivity = new DeviceActivity();
            deviceActivity.setType(String.valueOf(next.changeType()));
            deviceActivity.setDateTime(new Date(next.timeStamp()));
            deviceActivity.setDevice(ChangeTracker.deviceID());
            deviceActivity.setData(next.blob());
            arrayList.add(deviceActivity);
        }
        BeyondPodServiceClientV1 beyondPodServiceClientV1 = new BeyondPodServiceClientV1();
        String refreshToken = refreshToken(beyondPodServiceClientV1, false);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            TrackedChangeBase.logSyncEvent(TAG, " --- [", null);
            storeAndRetrieveActivities = beyondPodServiceClientV1.storeAndRetrieveActivities(refreshToken, arrayList, true, new Date(j));
            float currentTimeMillis2 = ((float) (System.currentTimeMillis() - currentTimeMillis)) / 1000.0f;
            TrackedChangeBase.logSyncEvent(TAG, " --- " + String.format(CoreHelper.getCurrentLocale(), " %.2f s.", Float.valueOf(currentTimeMillis2)) + "]", null);
        } catch (InvalidTokenException unused) {
            storeAndRetrieveActivities = beyondPodServiceClientV1.storeAndRetrieveActivities(refreshToken(beyondPodServiceClientV1, true), arrayList, true, new Date(j));
        }
        for (TrackedChangeBase trackedChangeBase : list) {
            trackedChangeBase.setSyncStatus(1);
            TrackedChangeBase.logSyncEvent(TAG, " ------> Synced:" + trackedChangeBase.changeName() + " => " + trackedChangeBase.friendlyName(), null);
        }
        if (!storeAndRetrieveActivities.hasRemoteActivities()) {
            TrackedChangeBase.logSyncEvent(TAG, " --- No remote changes since: " + new Date(j), null);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, " --- Found " + storeAndRetrieveActivities.getActivities().size() + " remote changes since: " + new Date(j), null);
        }
        if (!ChangeTracker.isDeviceTimeCorrect(storeAndRetrieveActivities.getRemoteDate())) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("device time is incorrect!"), 6));
            TrackedChangeBase.logSyncEvent(TAG, " --- device time is incorrect by: " + CoreHelper.formatTimeAsString(Math.abs(new Date().getTime() - storeAndRetrieveActivities.getRemoteDate().getTime()) / 1000) + " (it could miss some remote changes)", null);
        }
        return loadRemoteChanges(storeAndRetrieveActivities.getActivities());
    }

    private List<TrackedChangeBase> loadRemoteChanges(List<DeviceActivity> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        for (DeviceActivity deviceActivity : list) {
            long time = deviceActivity.getDateTime().getTime();
            int safeParseInt = StringUtils.safeParseInt(deviceActivity.getType(), -1);
            String data = deviceActivity.getData();
            TrackedChangeBase trackedChangeBase = null;
            if (safeParseInt == 1 || safeParseInt == 2 || safeParseInt == 3 || safeParseInt == 14) {
                trackedChangeBase = new TrackedChangeFeed(null, time, safeParseInt, 3, data);
            } else if (safeParseInt == 4 || safeParseInt == 5 || safeParseInt == 6) {
                trackedChangeBase = new TrackedChangeEnclosure(null, time, safeParseInt, 3, data);
            } else if (safeParseInt == 12 || safeParseInt == 13 || safeParseInt == 10 || safeParseInt == 11) {
                trackedChangeBase = new TrackedChangePost(null, time, safeParseInt, 3, data);
            } else if (safeParseInt == 9 || safeParseInt == 7 || safeParseInt == 8 || safeParseInt == 15) {
                trackedChangeBase = new TrackedChangeEpisode(null, time, safeParseInt, 3, data);
            }
            if (trackedChangeBase != null) {
                trackedChangeBase.setIsModified(false);
                arrayList.add(trackedChangeBase);
            }
        }
        return arrayList;
    }

    private String refreshToken(BeyondPodServiceClientV1 beyondPodServiceClientV1, boolean z) throws Exception {
        boolean equals = Configuration.CDSDeviceID().equals(ChangeTracker.deviceID());
        if (StringUtils.isNullOrEmpty(Configuration.CDSUserName()) || StringUtils.isNullOrEmpty(Configuration.CDSPassword())) {
            throw new AuthenticationException(-1, "Empty user name or password", null);
        }
        if (!equals || z || StringUtils.isNullOrEmpty(Configuration.CDSToken()) || new Date().after(Configuration.CDSTokenExpiration())) {
            TrackedChangeBase.logSyncEvent(TAG, " --- Requesting fresh token...", null);
            try {
                AuthenticationResult authenticateUser = beyondPodServiceClientV1.authenticateUser(Configuration.CDSUserName(), Configuration.CDSPassword(), BeyondPodServiceClientV1.AuthType.BeyondPod, ChangeTracker.deviceID(), true);
                if (authenticateUser.isWaitingForEmailVerification()) {
                    throw new Exception("Account is awaiting verification!");
                }
                Configuration.setCDSToken(authenticateUser.getToken());
                Configuration.setCDSTokenExpiration(authenticateUser.getTokenExpires());
            } catch (AuthenticationException e) {
                if (e.getStatusCode() == AuthenticationResult.AUTH_RESULT_AUTHENTICATION_FAILED) {
                    TrackedChangeBase.logSyncEvent(TAG, " --- Your password has changed! Please login again!", null);
                    logout();
                    throw e;
                }
            }
        }
        if (!equals) {
            Configuration.setCDSDeviceID(ChangeTracker.deviceID());
        }
        return Configuration.CDSToken();
    }

    public boolean updateServerCDMRegistration(String str, boolean z) {
        BeyondPodServiceClientV1 beyondPodServiceClientV1 = new BeyondPodServiceClientV1();
        long nextInt = 2000 + random.nextInt(1000);
        if (z) {
            TrackedChangeBase.logSyncEvent(TAG, "\n--- Registering device with CDS Server...", null);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "\n--- Unregistering device from CDS Server...", null);
        }
        long j = nextInt;
        int i = 1;
        while (true) {
            if (i > 5) {
                break;
            }
            try {
                try {
                    if (z) {
                        try {
                            beyondPodServiceClientV1.gcmRegister(refreshToken(beyondPodServiceClientV1, false), str);
                        } catch (InvalidTokenException unused) {
                            beyondPodServiceClientV1.gcmRegister(refreshToken(beyondPodServiceClientV1, true), str);
                        }
                    } else {
                        beyondPodServiceClientV1.gcmUnregister(str);
                    }
                    Configuration.setRegisteredOnServer(z);
                    if (z) {
                        TrackedChangeBase.logSyncEvent(TAG, "--- device Registered!", null);
                    } else {
                        TrackedChangeBase.logSyncEvent(TAG, "--- device Unregistered!", null);
                    }
                    return true;
                } catch (InvalidTokenException unused2) {
                    TrackedChangeBase.logSyncEvent(TAG, "--- Registration failed! Invalid token!", null);
                }
            } catch (CoreHelper.UnableToEstablishNetworkConnectionException unused3) {
                TrackedChangeBase.logSyncEvent(TAG, "--- Registration failed! Mobile connections are not allowed and WiFi is not connected!", null);
            } catch (AuthenticationException e) {
                String str2 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("--- Registration failed! Authentication error: ");
                sb.append(e.getCause() != null ? e.getCause().getMessage() : e.getMessage());
                TrackedChangeBase.logSyncEvent(str2, sb.toString(), null);
            } catch (ServiceException e2) {
                if (SyncWorker.canRetry(e2)) {
                    TrackedChangeBase.logSyncEvent(TAG, "--- Registering device with Sync Server...", null);
                    if (i == 5) {
                        break;
                    }
                    try {
                        CoreHelper.writeTraceEntry(TAG, "--- Sleeping for " + j + " ms. before retry");
                        Thread.sleep(j);
                        j *= 2;
                    } catch (InterruptedException unused4) {
                        CoreHelper.writeTraceEntry(TAG, "--- Thread interrupted: abort remaining retries!");
                        Thread.currentThread().interrupt();
                        return false;
                    }
                } else {
                    TrackedChangeBase.logSyncEvent(TAG, "--- Registeration failed! reason:" + e2.getMessage(), null);
                    break;
                }
            } catch (Exception e3) {
                TrackedChangeBase.logSyncEvent(TAG, "--- Registeration failed! reason:" + e3.getMessage(), null);
            }
            i++;
        }
        return false;
    }

    public static void logout() {
        Configuration.setCDSUserName("");
        Configuration.setCDSPassword("");
        Configuration.setCDSToken("");
        Configuration.setLastSyncTimeStamp(-1L);
        Configuration.setLastRemoteChangeTimeStamp(-1L);
        Configuration.setCDSDeviceID("");
        ChangeTracker.cleanAllRecords();
    }
}
