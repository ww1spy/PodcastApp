package mobi.beyondpod.htmlbuilder;

import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.events.ApplicationEvents;

/* loaded from: classes.dex */
public class RssTemplatingEngine {
    private static final String DOWNLOAD_ENCODE_KEY = "";
    private static final String STREAM_ENCODE_KEY = "";
    public static long lastTransformationDuration;
    private static final ErrorMessageTemplate m_ErrorTmpl = new ErrorMessageTemplate(TemplateBase.TemplateTypes_RSS);
    private static final InfoMessageTemplate m_InfoTmpl = new InfoMessageTemplate(TemplateBase.TemplateTypes_RSS);

    public static boolean transformFeedLoadError(String str, String str2, File file) {
        m_ErrorTmpl.setFeedName(str);
        m_ErrorTmpl.setMessage(str2);
        try {
            return m_ErrorTmpl.saveAsHtml(file);
        } catch (Exception e) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(e, 0));
            return false;
        }
    }

    public static boolean transformNoCachedFeedInfo(String str, File file) {
        m_InfoTmpl.setFeedName(str);
        try {
            return m_InfoTmpl.saveAsHtml(file);
        } catch (Exception e) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(e, 0));
            return false;
        }
    }

    public static String encodeDownloadEnclosureUrl(String str) {
        return str + "";
    }

    public static String encodeStreamEnclosureUrl(String str) {
        return str + "";
    }

    public static String decodeDownloadEnclosureUrl(String str) {
        return str.replace("", "");
    }

    public static String decodeStreamEnclosureUrl(String str) {
        return str.replace("", "");
    }

    public static boolean isDownloadEncodedEnclosureUrl(String str) {
        return str.endsWith("");
    }

    public static boolean isStreamEncodedEnclosureUrl(String str) {
        return str.endsWith("");
    }

    public static void reloadAllTemplates() {
        InfoMessageTemplate.refreshTemplate();
    }
}
