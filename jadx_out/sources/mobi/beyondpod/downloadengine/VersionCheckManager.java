package mobi.beyondpod.downloadengine;

import android.net.Uri;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.helpers.Version;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.ui.views.notifications.Message;

/* loaded from: classes.dex */
public class VersionCheckManager {
    private static final String TAG = "VersionCheckManager";
    private static DownloadAgent _VersionCheckAgent;
    private static File _VersionInfoFile = new File(Configuration.versionInfoPath());
    private static File _VersionInfoTmpFile = new File(Configuration.versionInfoPath() + ".tmp");
    public static VersionInformation VersionInfo = loadVersionFromInfoFile(CheckLocation.VersionInfoFile);

    /* loaded from: classes.dex */
    public enum CheckLocation {
        VersionInfoFile,
        VersionInfoTempFile
    }

    public static Double versionInfoAgeInHours() {
        return getFileAgeInHours(_VersionInfoFile);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static VersionInformation loadVersionFromInfoFile(CheckLocation checkLocation) {
        VersionInformation versionInformation = new VersionInformation();
        File file = checkLocation == CheckLocation.VersionInfoTempFile ? _VersionInfoTmpFile : _VersionInfoFile;
        if (!file.exists()) {
            return versionInformation;
        }
        Scanner scanner = null;
        try {
            try {
                ArrayList arrayList = new ArrayList();
                Scanner scanner2 = new Scanner(file);
                while (scanner2.hasNextLine() && arrayList.size() <= 6) {
                    try {
                        arrayList.add(scanner2.nextLine());
                    } catch (Exception e) {
                        e = e;
                        scanner = scanner2;
                        CoreHelper.logException(TAG, "Unable to parse version file!", e);
                        if (scanner != null) {
                            scanner.close();
                        }
                        return versionInformation;
                    } catch (Throwable th) {
                        th = th;
                        scanner = scanner2;
                        if (scanner != null) {
                            scanner.close();
                        }
                        throw th;
                    }
                }
                if (arrayList.size() > 0) {
                    versionInformation = new VersionInformation(arrayList);
                }
                if (scanner2 != null) {
                    scanner2.close();
                }
            } catch (Exception e2) {
                e = e2;
            }
            return versionInformation;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void checkForNewVersionIfNeeded() {
        Double fileAgeInHours = getFileAgeInHours(_VersionInfoTmpFile);
        if ((fileAgeInHours == null || fileAgeInHours.doubleValue() >= 24.0d) && (_VersionCheckAgent == null || !_VersionCheckAgent.isDownloading())) {
            downloadVersionInfo();
        }
        AnalyticsTracker.dispatch();
    }

    private static Double getFileAgeInHours(File file) {
        if (file.exists()) {
            return Double.valueOf(new TimeSpan(new Date().getTime() - file.lastModified()).getTotalHours());
        }
        return null;
    }

    private static void downloadVersionInfo() {
        try {
            _VersionCheckAgent = new DownloadAgent(constructAutoVersionCheckURL(), _VersionInfoTmpFile, null);
            _VersionCheckAgent.setDownloadListener(new DownloadAgent.DownloadListener() { // from class: mobi.beyondpod.downloadengine.VersionCheckManager.1
                @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
                public void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2) {
                }

                @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
                public void onDownloadStarted(DownloadAgent downloadAgent) {
                }

                @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
                public void onDownloadTerminated(DownloadAgent downloadAgent) {
                }

                @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
                public void onDownloadCompleted(DownloadAgent downloadAgent, boolean z) {
                    try {
                        VersionInformation loadVersionFromInfoFile = VersionCheckManager.loadVersionFromInfoFile(CheckLocation.VersionInfoTempFile);
                        if (loadVersionFromInfoFile.LastPublicVersion.isZero() || loadVersionFromInfoFile.LastDevVersion.isZero() || VersionCheckManager.VersionInfo.equals(loadVersionFromInfoFile)) {
                            return;
                        }
                        FileUtils.copyFile(VersionCheckManager._VersionInfoTmpFile.getAbsolutePath(), VersionCheckManager._VersionInfoFile.getAbsolutePath());
                        Configuration.setNextNotificationTime(new Date());
                        VersionCheckManager.VersionInfo = loadVersionFromInfoFile;
                    } catch (Exception e) {
                        CoreHelper.logException(VersionCheckManager.TAG, "Unable to rename the Version Info temp file.", e);
                    }
                }

                @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
                public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
                    CoreHelper.writeLogEntryInProduction(VersionCheckManager.TAG, "Unable to check for new version! reason: " + CoreHelper.extractExceptionMessages(exc));
                }
            });
            _VersionCheckAgent.setAllowResume(false);
            CoreHelper.writeTraceEntry(TAG, "Checking for New Version");
            _VersionCheckAgent.startDownload();
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Unable to check for new version! reason: " + CoreHelper.extractExceptionMessages(e));
        }
    }

    private static Uri constructAutoVersionCheckURL() {
        int currentLicenseKind = LicenseManager.currentLicenseKind();
        return Uri.parse(Configuration.beyondPodPublicWebSite() + "/Android/VersionCheck.aspx?v=" + Configuration.productVersion() + "&lt=" + (currentLicenseKind == 1 ? "am" : currentLicenseKind == 6 ? "az" : currentLicenseKind == 2 ? "bt" : currentLicenseKind == 3 ? "pp" : currentLicenseKind == 5 ? "xp" : currentLicenseKind == 0 ? "tr" : currentLicenseKind == 4 ? "ot" : currentLicenseKind == -1 ? "uk" : "xx") + "&k=" + BeyondPodApplication.getInstance().appKind());
    }

    /* loaded from: classes.dex */
    public static class VersionInformation {
        public Message AllUsers;
        public Message BetaUsers;
        public Version LastDevVersion;
        public Version LastPublicVersion;
        public Message TrialUsers;

        public VersionInformation() {
            this.LastDevVersion = new Version(0, 0, 0, 0);
            this.LastPublicVersion = new Version(0, 0, 0, 0);
            this.AllUsers = new Message();
            this.BetaUsers = new Message();
            this.TrialUsers = new Message();
        }

        public VersionInformation(ArrayList<String> arrayList) {
            this.LastDevVersion = new Version(0, 0, 0, 0);
            this.LastPublicVersion = new Version(0, 0, 0, 0);
            this.AllUsers = new Message();
            this.BetaUsers = new Message();
            this.TrialUsers = new Message();
            if (arrayList.size() > 0) {
                this.LastPublicVersion = new Version(arrayList.get(0));
            }
            if (arrayList.size() > 1) {
                this.LastDevVersion = new Version(arrayList.get(1));
            }
            if (arrayList.size() > 2) {
                this.AllUsers = new Message(arrayList.get(2));
                this.AllUsers.MessageTitle = "BeyondPod";
            }
            if (arrayList.size() > 3) {
                this.BetaUsers = new Message(arrayList.get(3));
                this.BetaUsers.MessageTitle = "New BeyondPod BETA is available!";
            }
            if (arrayList.size() > 4) {
                this.TrialUsers = new Message(arrayList.get(4));
                this.TrialUsers.MessageTitle = "Announcement";
            }
        }

        public boolean isNewPublicVersionAvailable() {
            return this.LastPublicVersion != null && Version.compare(this.LastPublicVersion, Configuration.currentProductVersion()) > 0;
        }

        public boolean isNewDevVersionAvailable() {
            return this.LastDevVersion != null && Version.compare(this.LastDevVersion, Configuration.currentProductVersion()) > 0;
        }

        public int hashCode() {
            return (31 * ((((((((this.AllUsers == null ? 0 : this.AllUsers.hashCode()) + 31) * 31) + (this.BetaUsers == null ? 0 : this.BetaUsers.hashCode())) * 31) + (this.LastDevVersion == null ? 0 : this.LastDevVersion.hashCode())) * 31) + (this.LastPublicVersion == null ? 0 : this.LastPublicVersion.hashCode()))) + (this.TrialUsers != null ? this.TrialUsers.hashCode() : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof VersionInformation)) {
                return false;
            }
            VersionInformation versionInformation = (VersionInformation) obj;
            if (this.AllUsers == null) {
                if (versionInformation.AllUsers != null) {
                    return false;
                }
            } else if (!this.AllUsers.equals(versionInformation.AllUsers)) {
                return false;
            }
            if (this.BetaUsers == null) {
                if (versionInformation.BetaUsers != null) {
                    return false;
                }
            } else if (!this.BetaUsers.equals(versionInformation.BetaUsers)) {
                return false;
            }
            if (this.LastDevVersion == null) {
                if (versionInformation.LastDevVersion != null) {
                    return false;
                }
            } else if (!this.LastDevVersion.equals(versionInformation.LastDevVersion)) {
                return false;
            }
            if (this.LastPublicVersion == null) {
                if (versionInformation.LastPublicVersion != null) {
                    return false;
                }
            } else if (!this.LastPublicVersion.equals(versionInformation.LastPublicVersion)) {
                return false;
            }
            if (this.TrialUsers == null) {
                if (versionInformation.TrialUsers != null) {
                    return false;
                }
            } else if (!this.TrialUsers.equals(versionInformation.TrialUsers)) {
                return false;
            }
            return true;
        }

        public Message getCustomizedMessage() {
            int currentLicenseKind = LicenseManager.currentLicenseKind();
            if (currentLicenseKind == 2) {
                return this.BetaUsers;
            }
            if (currentLicenseKind == 5 || currentLicenseKind == 0) {
                return this.TrialUsers;
            }
            return this.AllUsers;
        }
    }
}
