package mobi.beyondpod.ui.views.player;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.content.pm.ShortcutInfoCompat;
import android.support.v4.content.pm.ShortcutManagerCompat;
import android.support.v4.graphics.drawable.IconCompat;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.services.scheduler.CommandReceiver;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.ShortcutHandler;

/* loaded from: classes.dex */
public class SmartPlayListView extends ListView implements AdapterView.OnItemClickListener {
    private static final int MENU_ADD_TO_HOME_SCREEN = 5;
    private static final int MENU_DELETE_PLAYLIST = 3;
    private static final int MENU_EDIT_PLAYLIST = 2;
    private static final int MENU_SET_DEFAULT_PLAYLIST = 4;
    private static final int MENU_UPDATE_PLAYLIST = 1;
    private SmartPlaylistViewAdapter _Adapter;
    boolean _CanCreateShortcut;
    private IPlayListOwner _Owner;

    /* loaded from: classes.dex */
    public interface IPlayListOwner {
        void onPlaylistSelected(SmartPlaylist smartPlaylist);

        void onSmartPlaylistDeleted();

        void runOnUiThread(Runnable runnable);
    }

    public void onAfterDeactivate() {
    }

    public void onBeforeActivate() {
    }

    public SmartPlayListView(Context context) {
        super(context, null);
        this._CanCreateShortcut = false;
    }

    public SmartPlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._CanCreateShortcut = false;
    }

    public void initializeView(IPlayListOwner iPlayListOwner) {
        this._CanCreateShortcut = ShortcutManagerCompat.isRequestPinShortcutSupported(getContext());
        this._Owner = iPlayListOwner;
        this._Adapter = new SmartPlaylistViewAdapter(getContext(), this);
        setTextFilterEnabled(false);
        setOnItemClickListener(this);
        setAdapter((ListAdapter) this._Adapter);
        reloadList();
    }

    private boolean isInitialized() {
        return (this._Owner == null || this._Adapter == null) ? false : true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        SmartPlaylist itemAt = this._Adapter.getItemAt(i - getHeaderViewsCount());
        if (itemAt != null) {
            this._Owner.onPlaylistSelected(itemAt);
        }
    }

    public void reloadList() {
        if (isInitialized()) {
            this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.SmartPlayListView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SmartPlayListView.this._Adapter != null) {
                        SmartPlayListView.this._Adapter.reloadPlaylists();
                    }
                }
            });
        }
    }

    public void openPlaylistOverflow(View view, final SmartPlaylist smartPlaylist) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        popupMenu.getMenu().add(0, 1, 1, R.string.MENU_update_smartplay);
        popupMenu.getMenu().add(0, 2, 2, R.string.MENU_edit_smartplay);
        popupMenu.getMenu().add(0, 3, 3, R.string.MENU_delete_smartplay);
        if (SmartPlaylistManager.numVisiblePlaylists() > 1 && smartPlaylist != SmartPlaylistManager.primarySmartPlay()) {
            popupMenu.getMenu().add(0, 4, 4, R.string.MENU_setdefault_smartplay);
        }
        if (this._CanCreateShortcut) {
            popupMenu.getMenu().add(0, 5, 5, R.string.MENU_addtohome_smartplay);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.SmartPlayListView.2
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                switch (menuItem.getItemId()) {
                    case 1:
                        CommandManager.cmdUpdateSmartPlayList(smartPlaylist.name());
                        return true;
                    case 2:
                        CommandManager.cmdEditSmartPlayList(smartPlaylist.id());
                        return true;
                    case 3:
                        new AlertDialog.Builder(SmartPlayListView.this.getContext()).setMessage(SmartPlayListView.this.getContext().getResources().getString(R.string.dlg_DeleteFeedMsg, smartPlaylist.name())).setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.SmartPlayListView.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                SmartPlaylistManager.deleteSmartPlaylist(smartPlaylist);
                                SmartPlaylistManager.saveToDatabase();
                                SmartPlayListView.this.reloadList();
                                SmartPlayListView.this._Owner.onSmartPlaylistDeleted();
                            }
                        }).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create().show();
                        return true;
                    case 4:
                        SmartPlaylistManager.setDefaultSmartPlay(smartPlaylist);
                        SmartPlayListView.this.reloadList();
                        return true;
                    case 5:
                        try {
                            Intent intent = new Intent(SmartPlayListView.this.getContext(), (Class<?>) ShortcutHandler.class);
                            intent.putExtra(CommandReceiver.EXTRA_PLAYLIST_ID, smartPlaylist.id());
                            intent.addFlags(268435456);
                            intent.addFlags(67108864);
                            intent.addFlags(8388608);
                            intent.addFlags(1073741824);
                            intent.setAction("android.intent.action.CREATE_SHORTCUT");
                            Toast.makeText(SmartPlayListView.this.getContext(), R.string.smart_playlist_shortcut_creating, 1).show();
                            ShortcutManagerCompat.requestPinShortcut(SmartPlayListView.this.getContext(), new ShortcutInfoCompat.Builder(SmartPlayListView.this.getContext(), smartPlaylist.name()).setIntent(intent).setIcon(IconCompat.createWithResource(SmartPlayListView.this.getContext(), SmartPlayListView.this.nextShortcutIconResId())).setShortLabel(smartPlaylist.name()).build(), null);
                        } catch (Exception unused) {
                            Toast.makeText(SmartPlayListView.this.getContext(), R.string.smart_playlist_shortcut_create_failed, 1).show();
                        }
                        return true;
                    default:
                        return true;
                }
            }
        });
        popupMenu.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int nextShortcutIconResId() {
        int[] iArr = {R.drawable.ic_smartplay_orange, R.drawable.ic_smartplay_green, R.drawable.ic_smartplay_purple, R.drawable.ic_smartplay_blue};
        int nextSmartPlayShortcutId = Configuration.nextSmartPlayShortcutId();
        if (nextSmartPlayShortcutId >= iArr.length) {
            nextSmartPlayShortcutId = 0;
        }
        Configuration.setNextSmartPlayShortcutId(nextSmartPlayShortcutId);
        return iArr[nextSmartPlayShortcutId + 1];
    }
}
