package mobi.beyondpod.services.player;

import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.player.impl.ChromecastDevice;

/* loaded from: classes.dex */
public class ChromecastUtils {
    public static String buildCastingToTitle(String str) {
        if (!ChromecastDevice.isConnected()) {
            return str;
        }
        try {
            String string = BeyondPodApplication.getInstance().getResources().getString(R.string.cc_casting_to, BeyondPodApplication.getInstance().chromecastDevice().connectedDeviceName());
            return !StringUtils.isNullOrEmpty(str) ? String.format("%s • %s", string, str) : string;
        } catch (Exception unused) {
            return str;
        }
    }
}
