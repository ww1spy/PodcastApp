package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Beta extends Kit<Boolean> implements DeviceIdentifierProvider {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.2.7.19";
    }

    public static Beta getInstance() {
        return (Beta) Fabric.getKit(Beta.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    @TargetApi(14)
    public boolean onPreExecute() {
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, (Application) getContext().getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() {
        Fabric.getLogger().d(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        if (TextUtils.isEmpty(getBetaDeviceToken(context, idManager.getInstallerPackageName()))) {
            Fabric.getLogger().d(TAG, "A Beta device token was not found for this app");
            return false;
        }
        Fabric.getLogger().d(TAG, "Beta device token is present, checking for app updates.");
        BetaSettingsData betaSettingsData = getBetaSettingsData();
        BuildProperties loadBuildProperties = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettingsData, loadBuildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, loadBuildProperties, new PreferenceStoreImpl(this), new SystemCurrentTimeProvider(), new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return true;
    }

    @TargetApi(14)
    UpdatesController createUpdatesController(int i, Application application) {
        if (i >= 14) {
            return new ActivityLifecycleCheckForUpdatesController(getFabric().getActivityLifecycleManager(), getFabric().getExecutorService());
        }
        return new ImmediateCheckForUpdatesController();
    }

    @Override // io.fabric.sdk.android.services.common.DeviceIdentifierProvider
    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        String betaDeviceToken = getBetaDeviceToken(getContext(), getIdManager().getInstallerPackageName());
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            hashMap.put(IdManager.DeviceIdentifierType.FONT_TOKEN, betaDeviceToken);
        }
        return hashMap;
    }

    boolean canCheckForUpdates(BetaSettingsData betaSettingsData, BuildProperties buildProperties) {
        return (betaSettingsData == null || TextUtils.isEmpty(betaSettingsData.updateUrl) || buildProperties == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String str) {
        String str2 = null;
        try {
            String str3 = this.deviceTokenCache.get(context, this.deviceTokenLoader);
            if (!"".equals(str3)) {
                str2 = str3;
            }
        } catch (Exception e) {
            Fabric.getLogger().e(TAG, "Failed to load the Beta device token", e);
        }
        Logger logger = Fabric.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append("Beta device token present: ");
        sb.append(!TextUtils.isEmpty(str2));
        logger.d(TAG, sb.toString());
        return str2;
    }

    private BetaSettingsData getBetaSettingsData() {
        SettingsData awaitSettingsData = Settings.getInstance().awaitSettingsData();
        if (awaitSettingsData != null) {
            return awaitSettingsData.betaSettingsData;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.crashlytics.android.beta.BuildProperties loadBuildProperties(android.content.Context r7) {
        /*
            r6 = this;
            r0 = 0
            android.content.res.AssetManager r7 = r7.getAssets()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            java.lang.String r1 = "crashlytics-build.properties"
            java.io.InputStream r7 = r7.open(r1)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            if (r7 == 0) goto L4f
            com.crashlytics.android.beta.BuildProperties r1 = com.crashlytics.android.beta.BuildProperties.fromPropertiesStream(r7)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L8a
            io.fabric.sdk.android.Logger r0 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r2 = "Beta"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r3.<init>()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = r1.packageName     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = " build properties: "
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = r1.versionName     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = " ("
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = r1.versionCode     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = ") - "
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r4 = r1.buildId     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r3.append(r4)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r0.d(r2, r3)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L8a
            r0 = r1
            goto L4f
        L48:
            r0 = move-exception
            goto L6b
        L4a:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L6b
        L4f:
            if (r7 == 0) goto L89
            r7.close()     // Catch: java.io.IOException -> L55
            goto L89
        L55:
            r7 = move-exception
            io.fabric.sdk.android.Logger r1 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.String r2 = "Beta"
            java.lang.String r3 = "Error closing Beta build properties asset"
            r1.e(r2, r3, r7)
            goto L89
        L62:
            r7 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
            goto L8b
        L67:
            r7 = move-exception
            r1 = r0
            r0 = r7
            r7 = r1
        L6b:
            io.fabric.sdk.android.Logger r2 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r3 = "Beta"
            java.lang.String r4 = "Error reading Beta build properties"
            r2.e(r3, r4, r0)     // Catch: java.lang.Throwable -> L8a
            if (r7 == 0) goto L88
            r7.close()     // Catch: java.io.IOException -> L7c
            goto L88
        L7c:
            r7 = move-exception
            io.fabric.sdk.android.Logger r0 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.String r2 = "Beta"
            java.lang.String r3 = "Error closing Beta build properties asset"
            r0.e(r2, r3, r7)
        L88:
            r0 = r1
        L89:
            return r0
        L8a:
            r0 = move-exception
        L8b:
            if (r7 == 0) goto L9d
            r7.close()     // Catch: java.io.IOException -> L91
            goto L9d
        L91:
            r7 = move-exception
            io.fabric.sdk.android.Logger r1 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.String r2 = "Beta"
            java.lang.String r3 = "Error closing Beta build properties asset"
            r1.e(r2, r3, r7)
        L9d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.Beta.loadBuildProperties(android.content.Context):com.crashlytics.android.beta.BuildProperties");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
