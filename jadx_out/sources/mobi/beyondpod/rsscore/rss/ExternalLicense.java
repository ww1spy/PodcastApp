package mobi.beyondpod.rsscore.rss;

import android.net.Uri;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ExternalLicense {
    /* JADX INFO: Access modifiers changed from: package-private */
    public String getLicenseKey(Uri uri) {
        try {
            String externalLicenseKey = BeyondPodApplication.getInstance().getExternalLicenseKey();
            if (StringUtils.isNullOrEmpty(externalLicenseKey)) {
                return null;
            }
            return Integer.toOctalString(uri.toString().hashCode()) + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + externalLicenseKey;
        } catch (Exception unused) {
            return null;
        }
    }
}
