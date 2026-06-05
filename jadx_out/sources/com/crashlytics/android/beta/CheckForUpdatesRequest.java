package com.crashlytics.android.beta;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
class CheckForUpdatesRequest extends AbstractSpiCall {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    static String createBetaTokenHeaderValueFor(String str) {
        return "3:" + str;
    }

    public CheckForUpdatesRequest(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    public CheckForUpdatesResponse invoke(String str, String str2, BuildProperties buildProperties) {
        HttpRequest httpRequest;
        String header;
        Logger logger;
        String str3;
        StringBuilder sb;
        Map<String, String> queryParamsFor;
        HttpRequest httpRequest2;
        try {
            try {
                queryParamsFor = getQueryParamsFor(buildProperties);
                httpRequest2 = getHttpRequest(queryParamsFor);
            } catch (Throwable th) {
                th = th;
            }
            try {
                httpRequest = applyHeadersTo(httpRequest2, str, str2);
                try {
                    Fabric.getLogger().d(Beta.TAG, "Checking for updates from " + getUrl());
                    Fabric.getLogger().d(Beta.TAG, "Checking for updates query params are: " + queryParamsFor);
                } catch (Exception e) {
                    e = e;
                    Fabric.getLogger().e(Beta.TAG, "Error while checking for updates from " + getUrl(), e);
                    if (httpRequest != null) {
                        header = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
                        logger = Fabric.getLogger();
                        str3 = Fabric.TAG;
                        sb = new StringBuilder();
                        sb.append("Checking for updates request ID: ");
                        sb.append(header);
                        logger.d(str3, sb.toString());
                    }
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                httpRequest = httpRequest2;
            } catch (Throwable th2) {
                th = th2;
                str = httpRequest2;
                if (str != 0) {
                    String header2 = str.header(AbstractSpiCall.HEADER_REQUEST_ID);
                    Fabric.getLogger().d(Fabric.TAG, "Checking for updates request ID: " + header2);
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            httpRequest = null;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
        if (httpRequest.ok()) {
            Fabric.getLogger().d(Beta.TAG, "Checking for updates was successful");
            CheckForUpdatesResponse fromJson = this.responseTransform.fromJson(new JSONObject(httpRequest.body()));
            if (httpRequest != null) {
                String header3 = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
                Fabric.getLogger().d(Fabric.TAG, "Checking for updates request ID: " + header3);
            }
            return fromJson;
        }
        Fabric.getLogger().e(Beta.TAG, "Checking for updates failed. Response code: " + httpRequest.code());
        if (httpRequest != null) {
            header = httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID);
            logger = Fabric.getLogger();
            str3 = Fabric.TAG;
            sb = new StringBuilder();
            sb.append("Checking for updates request ID: ");
            sb.append(header);
            logger.d(str3, sb.toString());
        }
        return null;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str, String str2) {
        return httpRequest.header("Accept", "application/json").header("User-Agent", AbstractSpiCall.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).header(AbstractSpiCall.HEADER_DEVELOPER_TOKEN, "470fa2b4ae81cd56ecbcda9735803434cec591fa").header(AbstractSpiCall.HEADER_CLIENT_TYPE, "android").header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, str).header(HEADER_BETA_TOKEN, createBetaTokenHeaderValueFor(str2));
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION, buildProperties.versionCode);
        hashMap.put(DISPLAY_VERSION, buildProperties.versionName);
        hashMap.put(INSTANCE, buildProperties.buildId);
        hashMap.put(SOURCE, "3");
        return hashMap;
    }
}
