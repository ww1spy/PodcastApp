package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.ui.core.volley.DiskBasedCacheBP;

/* loaded from: classes.dex */
public class ClearCachesDialog {
    private static final String CACHE_CLEARED = CoreHelper.loadResourceString(R.string.clear_cache_dio_cache_cleared);
    private Context _Context;

    public static void showDialog(Context context) {
        ClearCachesDialog clearCachesDialog = new ClearCachesDialog();
        clearCachesDialog._Context = context;
        clearCachesDialog.createDialog().show();
    }

    public Dialog createDialog() {
        final View inflate = LayoutInflater.from(this._Context).inflate(R.layout.clear_caches_view, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(R.id.ccd_clearFeedCache);
        Button button2 = (Button) inflate.findViewById(R.id.ccd_clearPodcastImageCache);
        button.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ClearCachesDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RssFeedCache.deleteCacheForAllFeeds();
                Toast.makeText(inflate.getContext(), ClearCachesDialog.CACHE_CLEARED, 0).show();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ClearCachesDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedRepository.clearTrackImageCaches();
                DiskBasedCacheBP.deleteCachedFiles();
                Toast.makeText(inflate.getContext(), ClearCachesDialog.CACHE_CLEARED, 0).show();
            }
        });
        return new AlertDialog.Builder(this._Context).setNegativeButton(R.string.alert_dialog_close, (DialogInterface.OnClickListener) null).setView(inflate).create();
    }
}
