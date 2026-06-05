package mobi.beyondpod.rsscore;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class FeedURLPatcher {
    private static final String TAG = "FeedURLPatcher";

    /* loaded from: classes.dex */
    public static class PatchResult {
        private String _PatchMessage;
        private String _PatchedURL;
        private String _Result;

        public PatchResult(String str) {
            if (StringUtils.isNullOrEmpty(str)) {
                return;
            }
            String[] split = str.split("\r\n|\r|\n");
            if (split.length > 0) {
                this._Result = split[0];
            }
            if (split.length > 1) {
                this._PatchedURL = split[1];
            }
            if (split.length > 2) {
                this._PatchMessage = split[2];
            }
        }

        public boolean isPatched() {
            return "PATCHED".equals(this._Result);
        }

        public String patchedURL() {
            return this._PatchedURL;
        }

        public String patchMessage() {
            return this._PatchMessage;
        }
    }

    private static URI constructPatchURL(String str) {
        return URI.create(Configuration.beyondPodPublicWebSite() + "/android/search/PatchFeedURL.aspx?q=" + CoreHelper.safeEncodeUrl(str));
    }

    public static PatchResult tryPatchFeedUrl(String str) {
        return new PatchResult(new FeedURLPatcher().callUrlPatcher(str));
    }

    private String callUrlPatcher(String str) {
        CoreHelper.writeTraceEntry(TAG, "++++++++ Starting Patch of url for: " + str);
        IHttpClient createClient = HttpClientFactory.createClient();
        createClient.httpGet(constructPatchURL(str).toString());
        try {
            try {
                try {
                    createClient.execute();
                    int statusCode = createClient.getStatusCode();
                    if (statusCode != 200) {
                        CoreHelper.writeTraceEntry(TAG, "Error " + statusCode + " while retrieving bitmap from " + str);
                        return null;
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(createClient.getUnzippedContent()), 4096);
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            return sb.toString();
                        }
                        sb.append(readLine);
                        sb.append("\n");
                    }
                } catch (Exception unused) {
                    createClient.abort();
                    return null;
                }
            } catch (IOException e) {
                createClient.abort();
                CoreHelper.writeTraceEntry(TAG, "Network error while retrieving patched URL for " + str + ", reason: " + e.getMessage());
                return null;
            }
        } finally {
            createClient.close();
        }
    }
}
