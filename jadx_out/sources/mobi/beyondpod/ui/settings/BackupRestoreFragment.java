package mobi.beyondpod.ui.settings;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.FileProvider;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.BackupManifest;
import mobi.beyondpod.rsscore.BackupRestore;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.dialogs.BackupRestoreActivity;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.impexp.FolderBrowserViewAdapter;

/* loaded from: classes.dex */
public class BackupRestoreFragment extends PreferenceFragment {
    private static final int BACKUP_SELECTED_RESULT = 4567;
    private static final int REQUEST_EXTERNAL_STORAGE = 501;
    private static final int REQUEST_EXTERNAL_STORAGE_FOR_FILE = 502;
    private static final Object _syncLock = new Object();
    private FolderBrowserViewAdapter _Adapter;
    View _BackupCmd;
    ProgressBar _BackupProgress;
    View _BackupRestore;
    ViewStub _BrowserStub;
    ListView _Content;
    View _ExportOPMLCmd;
    TextView _ExportSummary;
    View _RestoreCmd;
    ProgressBar _RestoreProgress;
    TextView _RestoreSummary;
    View _SetBackupFolderCmd;
    TextView _SettingsSummary;
    View _ShareCmd;
    boolean _ExitOnFinish = false;
    private View.OnClickListener _BackupListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.6
        @Override // android.view.View.OnClickListener
        @SuppressLint({"NewApi"})
        public void onClick(View view) {
            if (PermissionUtil.needsStoragePermissionForPath(Configuration.defaultBackupPath()) && CoreHelper.apiLevel() >= 23) {
                BackupRestoreFragment.this.requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 502);
                return;
            }
            Iterator<Feed> it = FeedRepository.getRootFeed().subFeeds().iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!StringUtils.isNullOrEmpty(it.next().getPassword())) {
                    i++;
                }
            }
            if (i > 0) {
                new AlertDialog.Builder(BackupRestoreFragment.this.getActivity()).setTitle(R.string.dlg_user_warning_title).setMessage(BackupRestoreFragment.this.getString(R.string.br_backup_protected_feeds_warning_msg, new Object[]{Integer.valueOf(i)})).setNegativeButton(R.string.alert_dialog_cancel, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.6.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).setPositiveButton(R.string.alert_dialog_continue, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.6.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        BackupRestoreFragment.this.createBackup();
                    }
                }).create().show();
                return;
            }
            File findAndroidReportedExternalStorage = Configuration.findAndroidReportedExternalStorage();
            if (findAndroidReportedExternalStorage != null && Configuration.defaultBackupPath().startsWith(findAndroidReportedExternalStorage.getAbsolutePath())) {
                new AlertDialog.Builder(BackupRestoreFragment.this.getActivity()).setTitle(R.string.dlg_user_warning_title).setMessage(BackupRestoreFragment.this.getString(R.string.br_backup_lost_on_uninstall_warning_msg)).setNegativeButton(R.string.alert_dialog_cancel, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.6.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).setPositiveButton(R.string.alert_dialog_continue, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.6.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        BackupRestoreFragment.this.createBackup();
                    }
                }).create().show();
            } else {
                BackupRestoreFragment.this.createBackup();
            }
        }
    };
    private View.OnClickListener _RestoreListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.8
        @Override // android.view.View.OnClickListener
        @SuppressLint({"NewApi"})
        public void onClick(View view) {
            if (PermissionUtil.needsStoragePermissionForPath(Configuration.defaultBackupPath()) && CoreHelper.apiLevel() >= 23) {
                BackupRestoreFragment.this.requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 502);
                return;
            }
            if (!CoreHelper.isRunningOnARC()) {
                BackupRestoreFragment.this.selectBackupFile(R.string.br_select_backup_to_restore, new BackupSelectedListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.8.1
                    @Override // mobi.beyondpod.ui.settings.BackupRestoreFragment.BackupSelectedListener
                    public void onBackupSelected(String str, File file) {
                        BackupRestoreFragment.this.prepareForRestore(file);
                    }
                });
                return;
            }
            Intent intent = new Intent("android.intent.action.PICK");
            intent.setType("*/*");
            try {
                BackupRestoreFragment.this.startActivityForResult(intent, BackupRestoreFragment.BACKUP_SELECTED_RESULT);
            } catch (Exception unused) {
                Toast.makeText(BackupRestoreFragment.this.getActivity(), "Unable to start file selector!", 1).show();
            }
        }
    };
    public View.OnClickListener _ShareListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.9
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackupRestoreFragment.this.selectBackupFile(R.string.br_select_backup_to_share, new BackupSelectedListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.9.1
                @Override // mobi.beyondpod.ui.settings.BackupRestoreFragment.BackupSelectedListener
                public void onBackupSelected(String str, File file) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(BackupRestoreFragment.this.getActivity(), "mobi.beyondpod.evo.BackupRestoreFragment", file));
                    intent.setType("application/zip");
                    intent.setFlags(1);
                    try {
                        BackupRestoreFragment.this.getActivity().startActivity(Intent.createChooser(intent, BackupRestoreFragment.this.getString(R.string.br_share_backup_using)));
                    } catch (ActivityNotFoundException unused) {
                    }
                }
            });
        }
    };

    /* loaded from: classes.dex */
    public interface BackupSelectedListener {
        void onBackupSelected(String str, File file);
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.backup_restore_fragment, viewGroup, false);
        getActivity().setTitle(R.string.settings_backup_restore_title);
        this._BackupRestore = inflate.findViewById(R.id.backupRestore);
        this._BackupCmd = inflate.findViewById(R.id.backupCommand);
        this._BackupCmd.setOnClickListener(this._BackupListener);
        this._BackupProgress = (ProgressBar) inflate.findViewById(R.id.backupProgress);
        this._RestoreCmd = inflate.findViewById(R.id.restoreCommand);
        this._RestoreCmd.setOnClickListener(this._RestoreListener);
        this._RestoreSummary = (TextView) inflate.findViewById(R.id.restoreSummary);
        this._RestoreProgress = (ProgressBar) inflate.findViewById(R.id.restoreProgress);
        this._SetBackupFolderCmd = inflate.findViewById(R.id.settingsCommand);
        this._SetBackupFolderCmd.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BackupRestoreFragment.this.showFolderBrowser();
            }
        });
        this._ShareCmd = inflate.findViewById(R.id.shareCommand);
        this._ShareCmd.setOnClickListener(this._ShareListener);
        this._SettingsSummary = (TextView) inflate.findViewById(R.id.settingsSummary);
        this._ExportOPMLCmd = inflate.findViewById(R.id.exportToOPML);
        this._ExportOPMLCmd.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdOpenOPMLExportDialog(BackupRestoreFragment.this.getActivity());
            }
        });
        this._BrowserStub = (ViewStub) inflate.findViewById(R.id.stub_folderBrowser);
        if (getActivity() instanceof BackupRestoreActivity) {
            this._BackupCmd.setEnabled(false);
            this._SetBackupFolderCmd.setEnabled(false);
            this._ShareCmd.setEnabled(false);
            this._ExportOPMLCmd.setEnabled(false);
            inflate.findViewById(R.id.backupTitle).setEnabled(false);
            inflate.findViewById(R.id.backupSummary).setEnabled(false);
            inflate.findViewById(R.id.shareTitle).setEnabled(false);
            inflate.findViewById(R.id.shareSummary).setEnabled(false);
            inflate.findViewById(R.id.settingsTitle).setEnabled(false);
            inflate.findViewById(R.id.settingsSummary).setEnabled(false);
            inflate.findViewById(R.id.exportTitle).setEnabled(false);
            inflate.findViewById(R.id.exportSummary).setEnabled(false);
        }
        verifyAndResetRestorePathIfItNeedsPermission();
        startRestoreIfNeeded(getActivity().getIntent());
        return inflate;
    }

    private void verifyAndResetRestorePathIfItNeedsPermission() {
        if (PermissionUtil.needsStoragePermissionForPath(Configuration.defaultBackupPath())) {
            Configuration.setDefaultBackupPath(Configuration.defaultBackupsStorageRoot());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void showFolderBrowser() {
        if (!PermissionUtil.hasExternalStoragePermission() && CoreHelper.apiLevel() >= 23) {
            requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 501);
            return;
        }
        if (this._Content == null) {
            this._BrowserStub.inflate();
            this._Content = (ListView) getView().findViewById(R.id.folderContent);
            TextView textView = (TextView) getView().findViewById(R.id.infoMsg);
            textView.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_undo, 0, 0, 0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BackupRestoreFragment.this.hideFolderBrowser();
                }
            });
            this._Adapter = new FolderBrowserViewAdapter(getActivity(), new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    File file;
                    if (view.getTag() == null || (file = (File) view.getTag()) == null) {
                        return;
                    }
                    Configuration.setDefaultBackupPath(file.getAbsolutePath());
                    BackupRestoreFragment.this.refreshBackupRestoreFolder();
                    BackupRestoreFragment.this.hideFolderBrowser();
                }
            }, false);
            this._Content.setAdapter((ListAdapter) this._Adapter);
            this._Content.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    BackupRestoreFragment.this._Adapter.setRoot(BackupRestoreFragment.this._Adapter.getFileAt(i));
                    BackupRestoreFragment.this._Content.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BackupRestoreFragment.this._Content.setSelectionAfterHeaderView();
                        }
                    }, 100L);
                }
            });
        }
        this._Adapter.setRoot(null);
        this._BrowserStub.setVisibility(0);
        this._BackupRestore.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFolderBrowser() {
        this._BrowserStub.setVisibility(8);
        this._BackupRestore.setVisibility(0);
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 501 && PermissionUtil.verifyPermissions(iArr)) {
            showFolderBrowser();
        }
        if (i == 502) {
            if (PermissionUtil.verifyPermissions(iArr)) {
                startRestoreIfNeeded(getActivity().getIntent());
                return;
            }
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        refreshBackupRestoreFolder();
    }

    void createBackup() {
        this._BackupProgress.setVisibility(0);
        BackupRestore.createZippedBackup(new BackupRestore.BackupRestoreOperationResult() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.7
            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationFailed(int i, final String str) {
                BackupRestoreFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(BackupRestoreFragment.this.getActivity(), BackupRestoreFragment.this.getString(R.string.br_backup_failed, new Object[]{str}), 1).show();
                        BackupRestoreFragment.this._BackupProgress.setVisibility(8);
                    }
                });
            }

            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationCompleted(int i, final String str, BackupManifest backupManifest) {
                BackupRestoreFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(BackupRestoreFragment.this.getActivity(), BackupRestoreFragment.this.getString(R.string.br_backup_was_saved_to, new Object[]{str}), 1).show();
                        BackupRestoreFragment.this._BackupProgress.setVisibility(8);
                        BackupRestoreFragment.this.refreshBackupRestoreFolder();
                    }
                });
            }
        });
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == BACKUP_SELECTED_RESULT && i2 == -1) {
            String str = null;
            String[] strArr = {"_data"};
            Cursor query = getActivity().getContentResolver().query(intent.getData(), strArr, null, null, null);
            if (query.moveToFirst()) {
                str = query.getString(query.getColumnIndex(strArr[0]));
                query.close();
            }
            if (!StringUtils.isNullOrEmpty(str)) {
                File file = new File(str);
                if (file.exists() && file.canRead()) {
                    prepareForRestore(file);
                    return;
                }
            }
            Toast.makeText(getActivity(), "Unable to read selected file!", 1).show();
        }
    }

    @SuppressLint({"NewApi"})
    private void startRestoreIfNeeded(Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        Uri uri = null;
        if (intent.getScheme() != null && intent.getScheme().matches("content")) {
            try {
                FileInputStream fileInputStream = new FileInputStream(BeyondPodApplication.getInstance().getContentResolver().openFileDescriptor(intent.getData(), "r").getFileDescriptor());
                File file = new File(BeyondPodApplication.getInstance().getCacheDir() + "/gmail.bpback");
                if (file.exists()) {
                    file.delete();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file.getPath());
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileInputStream.close();
                fileOutputStream.close();
                uri = Uri.parse(file.getPath());
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        } else if ("android.intent.action.SEND".equals(intent.getAction())) {
            CharSequence charSequenceExtra = intent.getCharSequenceExtra("android.intent.extra.TEXT");
            if (charSequenceExtra != null) {
                uri = Uri.parse(charSequenceExtra.toString());
            }
        } else if (intent.getData() != null) {
            String str = "http:" + intent.getData().getEncodedSchemeSpecificPart();
            if (!StringUtils.isNullOrEmpty(str)) {
                uri = Uri.parse(CoreHelper.safeDecodeUrl(str.replaceAll("\\\\x", "%")));
            }
        }
        if (uri == null || StringUtils.isNullOrEmpty(uri.getPath())) {
            return;
        }
        File file2 = new File(uri.getPath());
        if (file2.exists()) {
            if (PermissionUtil.needsStoragePermissionForPath(file2.getAbsolutePath()) && CoreHelper.apiLevel() >= 23) {
                requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 502);
            } else {
                prepareForRestore(file2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareForRestore(final File file) {
        this._RestoreProgress.setVisibility(0);
        BackupRestore.unzipBackup(file, new BackupRestore.BackupRestoreOperationResult() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.10
            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationFailed(int i, final String str) {
                BackupRestoreFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (file.getName().toLowerCase().endsWith("opml")) {
                            BackupRestoreFragment.this.getActivity().startActivity(new Intent("android.intent.action.PICK", FileProvider.getUriForFile(BackupRestoreFragment.this.getActivity(), "mobi.beyondpod.evo.BackupRestoreFragment", file), BackupRestoreFragment.this.getActivity(), MasterView.class));
                            BackupRestoreFragment.this.getActivity().finish();
                        } else {
                            Toast.makeText(BackupRestoreFragment.this.getActivity(), BackupRestoreFragment.this.getString(R.string.br_restore_failed, new Object[]{str}), 0).show();
                            BackupRestoreFragment.this._RestoreProgress.setVisibility(8);
                        }
                    }
                });
            }

            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationCompleted(int i, String str, final BackupManifest backupManifest) {
                BackupRestoreFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BackupRestoreFragment.this.restoreFromSnapshot(backupManifest);
                        BackupRestoreFragment.this._RestoreProgress.setVisibility(8);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreFromSnapshot(@NonNull BackupManifest backupManifest) {
        if (backupManifest.backupTime == null) {
            backupManifest.backupTime = new Date(backupManifest.getManifestFile().lastModified());
        }
        new AlertDialog.Builder(getActivity()).setMessage(getString(R.string.br_restore_warning_msg, new Object[]{backupManifest.versionCode, backupManifest.device, DateUtils.formatDateTime(getActivity(), backupManifest.backupTime.getTime(), 17)})).setNegativeButton(R.string.alert_dialog_cancel, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BackupRestore.cleanSnapshotFolder();
            }
        }).setPositiveButton(R.string.alert_dialog_continue, new AnonymousClass11()).setCancelable(false).create().show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: mobi.beyondpod.ui.settings.BackupRestoreFragment$11, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass11 implements DialogInterface.OnClickListener {
        AnonymousClass11() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            BackupRestoreFragment.this._RestoreProgress.setVisibility(0);
            BackupRestore.restoreBackup(new AnonymousClass1());
        }

        /* renamed from: mobi.beyondpod.ui.settings.BackupRestoreFragment$11$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements BackupRestore.BackupRestoreOperationResult {
            AnonymousClass1() {
            }

            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationFailed(int i, final String str) {
                synchronized (BackupRestoreFragment._syncLock) {
                    Activity activity = BackupRestoreFragment.this.getActivity();
                    if (activity != null) {
                        activity.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.11.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(BackupRestoreFragment.this.getActivity(), BackupRestoreFragment.this.getString(R.string.br_restore_failed, new Object[]{str}), 0).show();
                                BackupRestoreFragment.this._RestoreProgress.setVisibility(8);
                            }
                        });
                    }
                }
            }

            @Override // mobi.beyondpod.rsscore.BackupRestore.BackupRestoreOperationResult
            public void operationCompleted(int i, String str, BackupManifest backupManifest) {
                StartupContentBuilder.deleteDatabase();
                synchronized (BackupRestoreFragment._syncLock) {
                    Activity activity = BackupRestoreFragment.this.getActivity();
                    if (activity != null) {
                        activity.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.11.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                BackupRestoreFragment.this._RestoreProgress.setVisibility(8);
                                Toast.makeText(BackupRestoreFragment.this.getActivity(), R.string.br_restore_complete, 0).show();
                                BackupRestoreFragment.this._RestoreCmd.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.11.1.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        BackupRestoreFragment.this.finishAndRestart();
                                    }
                                }, 2000L);
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectBackupFile(int i, final BackupSelectedListener backupSelectedListener) {
        final File[] enumerateRestoreZipFiles = BackupRestore.enumerateRestoreZipFiles();
        if (enumerateRestoreZipFiles == null || enumerateRestoreZipFiles.length == 0) {
            new AlertDialog.Builder(getActivity()).setMessage(getString(R.string.br_no_backups_available, new Object[]{"\n\n" + Configuration.defaultBackupPath()})).setPositiveButton(R.string.alert_dialog_ok, (DialogInterface.OnClickListener) null).create().show();
            return;
        }
        ArrayList<String> extractRestoreFileNames = BackupRestore.extractRestoreFileNames(enumerateRestoreZipFiles);
        final String[] strArr = (String[]) extractRestoreFileNames.toArray(new String[extractRestoreFileNames.size()]);
        new AlertDialog.Builder(getActivity()).setItems(strArr, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.BackupRestoreFragment.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (backupSelectedListener != null) {
                    backupSelectedListener.onBackupSelected(strArr[i2], enumerateRestoreZipFiles[i2]);
                }
            }
        }).setTitle(i).setCancelable(true).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAndRestart() {
        PendingIntent activity = PendingIntent.getActivity(BeyondPodApplication.getInstance().getBaseContext(), 0, new Intent("mobi.beyondpod.action.VIEW_MASTER"), 134217728);
        AlarmManager alarmManager = (AlarmManager) BeyondPodApplication.getInstance().getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            alarmManager.set(1, System.currentTimeMillis() + 5000, activity);
        }
        this._ExitOnFinish = true;
        Activity activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshBackupRestoreFolder() {
        this._SettingsSummary.setText(getString(R.string.br_settings_command_summary, new Object[]{Configuration.defaultBackupPath()}));
        File[] enumerateRestoreZipFiles = BackupRestore.enumerateRestoreZipFiles();
        if (enumerateRestoreZipFiles == null || enumerateRestoreZipFiles.length == 0) {
            this._ShareCmd.setVisibility(8);
            this._RestoreSummary.setText(getString(R.string.br_no_backups_available, new Object[]{Configuration.defaultBackupPath()}));
        } else {
            this._ShareCmd.setVisibility(0);
            this._RestoreSummary.setText(getString(R.string.br_last_backup, new Object[]{enumerateRestoreZipFiles[0].getName()}));
        }
        if (CoreHelper.isRunningOnARC()) {
            this._RestoreSummary.setText(R.string.br_restore_command_summary);
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this._ExitOnFinish) {
            System.exit(0);
        }
    }
}
