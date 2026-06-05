package mobi.beyondpod.downloadengine;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import okhttp3.Credentials;

/* loaded from: classes.dex */
public class HttpClientHeaders {
    public static final String AUTHORIZATION_HEADER = "Authorization";
    private static final Pattern CONTENT_DISPOSITION_PATTERN = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");
    private static final String TAG = "HttpClientBase";

    public static void setRangeTo(IHttpClient iHttpClient, int i, Long l) {
        String str = "bytes=" + i + "-";
        if (l != null && l.longValue() >= 0) {
            str = str + (l.longValue() - 1);
        }
        iHttpClient.setHeader("Range", str);
    }

    public static void setRequestCookie(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("Cookie", str);
    }

    public static void setAcceptEncodingTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader(HttpRequest.HEADER_ACCEPT_ENCODING, str);
    }

    public static void setBeyondpodClientVersionTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("beyondpod-client-version", str);
    }

    public static void setBeyondpodSoftwareVersionTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("beyondpod-software-version", str);
    }

    public static void setContentTypeTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("Content-type", str);
    }

    public static void setBeyondpodTokenTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("beyondpod-token", str);
    }

    public static void setAcceptTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("Accept", str);
    }

    public static void setUserAgentTo(IHttpClient iHttpClient, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        iHttpClient.setHeader("User-Agent", str);
    }

    public static void setUserInfoTo(IHttpClient iHttpClient, String str) {
        String[] split;
        if (StringUtils.isNullOrEmpty(str) || (split = str.split(":")) == null || split.length != 2) {
            return;
        }
        setAuthenticationHeaderTo(iHttpClient, split[0], split[1]);
    }

    public static void setAuthenticationHeaderTo(IHttpClient iHttpClient, String str, String str2) {
        if (StringUtils.isNullOrEmpty(str) || StringUtils.isNullOrEmpty(str2)) {
            return;
        }
        iHttpClient.setHeader("Authorization", Credentials.basic(str, str2));
    }

    public static void setIfModifiedSinceTo(IHttpClient iHttpClient, Date date) {
        if (date != null) {
            iHttpClient.setHeader("If-Modified-Since", DateTime.toRFC822UTCString(date));
        }
    }

    public static void setAuthorizationTo(IHttpClient iHttpClient, String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        iHttpClient.setHeader("Authorization", str);
    }

    public static Long getContentLengthFrom(IHttpClient iHttpClient) {
        long safeParseLong = StringUtils.safeParseLong(iHttpClient.getHeader(HttpRequest.HEADER_CONTENT_LENGTH), -1L);
        if (safeParseLong < 0) {
            return null;
        }
        return Long.valueOf(safeParseLong);
    }

    public static String getContentEncodingFrom(IHttpClient iHttpClient) {
        return iHttpClient.getHeader(HttpRequest.HEADER_CONTENT_ENCODING);
    }

    public static Date getLastModifiedFrom(IHttpClient iHttpClient) {
        return DateTime.tryParseRFC822Time(iHttpClient.getHeader(HttpRequest.HEADER_LAST_MODIFIED), null);
    }

    public static String getResponseCookie(IHttpClient iHttpClient) {
        return iHttpClient.getHeader("Set-Cookie");
    }

    public static Date getResponseDate(IHttpClient iHttpClient) {
        return DateTime.tryParseRFC822Time(iHttpClient.getHeader(HttpRequest.HEADER_DATE), null);
    }

    public static String getContentDisposition(IHttpClient iHttpClient) {
        String header = iHttpClient.getHeader("Content-Disposition");
        if (StringUtils.isNullOrEmpty(header)) {
            return null;
        }
        return parseContentDisposition(header);
    }

    private static String parseContentDisposition(String str) {
        try {
            Matcher matcher = CONTENT_DISPOSITION_PATTERN.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        } catch (IllegalStateException unused) {
            return null;
        }
    }
}
