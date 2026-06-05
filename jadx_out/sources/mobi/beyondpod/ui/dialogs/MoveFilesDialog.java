package mobi.beyondpod.ui.dialogs;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class MoveFilesDialog extends Activity {
    private static final int COPY_ERROR = -8;
    private static final int DEST_CLEANUP_ERROR = -4;
    private static final int DEST_FOLDER_READONLY = -9;
    private static final int DEST_UNAVAILABLE = -6;
    private static final int FATAL_ERROR = -2;
    private static final int FOLDER_TYPE_DESTINATION = 1;
    private static final int FOLDER_TYPE_SOURCE = 0;
    private static final int MOVE_CANCELLED = -1;
    private static final int MOVE_COMPLETED = 0;
    private static final int MOVE_PROGRESS_STATUS = 1;
    private static final int NOTHING_TO_DO = -5;
    private static final int REQUEST_EXTERNAL_STORAGE = 501;
    private static final int SOURCE_CLEANUP_ERROR = -3;
    private static final int SOURCE_FOLDER_READONLY = -10;
    private static final String TAG = "MoveFilesDialog";
    private static final int UPDATE_AND_DOWNLOAD_IN_PROGRESS = -7;
    public static boolean _isRunning = false;
    private boolean _ExitOnFinish;
    private long _availableSize;
    private Button _cancelBtn;
    private Context _context;
    private File _destinationFolder;
    private ProgressBar _progressBar;
    private ProgressBar _resultProgressBar;
    private TextView _resultsTV;
    private File _sourceFolder;
    private long _totalFileSize;
    private final String MESSAGE_TAG = SettingsJsonConstants.PROMPT_MESSAGE_KEY;
    private final String PROGRESS_TAG = NotificationCompat.CATEGORY_PROGRESS;
    private MoveThread _moveThread = null;
    private ArrayList<File> _internalFileList = new ArrayList<>();
    Handler handler = new Handler() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case MoveFilesDialog.SOURCE_FOLDER_READONLY /* -10 */:
                    MoveFilesDialog.this.askToMoveToInternalStorageOrAppStorageFolder();
                    break;
                case MoveFilesDialog.DEST_FOLDER_READONLY /* -9 */:
                    MoveFilesDialog.this.askToMoveToAppStorageFolder();
                    break;
                case MoveFilesDialog.COPY_ERROR /* -8 */:
                    Toast.makeText(MoveFilesDialog.this, message.getData().getString(SettingsJsonConstants.PROMPT_MESSAGE_KEY), 1).show();
                    break;
                case MoveFilesDialog.UPDATE_AND_DOWNLOAD_IN_PROGRESS /* -7 */:
                    Toast.makeText(MoveFilesDialog.this, R.string.mf_update_download_progress, 1).show();
                    MoveFilesDialog.this.finish();
                    break;
                case MoveFilesDialog.DEST_UNAVAILABLE /* -6 */:
                    Toast.makeText(MoveFilesDialog.this, R.string.mf_error_external, 1).show();
                    MoveFilesDialog.this.finish();
                    break;
                case MoveFilesDialog.NOTHING_TO_DO /* -5 */:
                    MoveFilesDialog.this.finish();
                    break;
                case -4:
                    Toast.makeText(MoveFilesDialog.this, MoveFilesDialog.this.getString(R.string.mf_unable_to_cleanup, new Object[]{MoveFilesDialog.this._destinationFolder.getAbsolutePath()}), 1).show();
                    MoveFilesDialog.this.finish();
                    break;
                case -3:
                    MoveFilesDialog.this.onMoveCompleted();
                    break;
                case -2:
                default:
                    Toast.makeText(MoveFilesDialog.this, "Move failed!\n\n" + message.what + " - " + message.getData().getString(SettingsJsonConstants.PROMPT_MESSAGE_KEY), 1).show();
                    MoveFilesDialog.this.finish();
                    break;
                case -1:
                    Toast.makeText(MoveFilesDialog.this, R.string.mf_canceled_move, 1).show();
                    MoveFilesDialog.this.finish();
                    break;
                case 0:
                    MoveFilesDialog.this.onMoveCompleted();
                    break;
                case 1:
                    MoveFilesDialog.this._resultsTV.setText(message.getData().getString(SettingsJsonConstants.PROMPT_MESSAGE_KEY));
                    int i = message.getData().getInt(NotificationCompat.CATEGORY_PROGRESS);
                    if (i < 0) {
                        if (i == -2) {
                            MoveFilesDialog.this._progressBar.setIndeterminate(true);
                            break;
                        }
                    } else {
                        MoveFilesDialog.this._progressBar.setIndeterminate(false);
                        MoveFilesDialog.this._progressBar.setProgress(i);
                        break;
                    }
                    break;
            }
            MoveFilesDialog.this._resultProgressBar.setVisibility(MoveFilesDialog.this._progressBar.getProgress() <= 0 ? 8 : 0);
        }
    };

    /* loaded from: classes.dex */
    class MoveThread extends Thread {
        volatile boolean _Cancel;

        MoveThread() {
        }

        public void cancel() {
            this._Cancel = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this._Cancel = false;
            MoveFilesDialog._isRunning = true;
            moveFiles();
            MoveFilesDialog._isRunning = false;
        }

        void moveFiles() {
            try {
                CoreHelper.writeTraceEntry(MoveFilesDialog.TAG, "Copying " + MoveFilesDialog.this._internalFileList.size() + " files... (" + CoreHelper.getFileLengthAsString(Long.valueOf(MoveFilesDialog.this._totalFileSize)) + ")");
                Iterator it = MoveFilesDialog.this._internalFileList.iterator();
                long j = 0L;
                long j2 = 0L;
                while (it.hasNext()) {
                    File file = (File) it.next();
                    File buildDestinationFile = buildDestinationFile(file);
                    long length = j + file.length();
                    if (!copyFile(file, buildDestinationFile)) {
                        this._Cancel = true;
                    }
                    if (this._Cancel) {
                        break;
                    }
                    long length2 = j2 + file.length();
                    if (length > 1024000) {
                        MoveFilesDialog.this.sendMessage(MoveFilesDialog.this.getString(R.string.mf_coping_files, new Object[]{CoreHelper.getFileLengthAsString(Long.valueOf(length2)), CoreHelper.getFileLengthAsString(Long.valueOf(MoveFilesDialog.this._totalFileSize))}), (int) Math.ceil((((float) length2) / ((float) MoveFilesDialog.this._totalFileSize)) * 100.0f), 1);
                        j = 0;
                    } else {
                        j = length;
                    }
                    j2 = length2;
                }
                if (this._Cancel) {
                    CoreHelper.writeTraceEntry(MoveFilesDialog.TAG, "Copy canceled!");
                    MoveFilesDialog.this.deleteFolderInternal(1);
                } else {
                    CoreHelper.writeTraceEntry(MoveFilesDialog.TAG, "Copy completed!");
                    MoveFilesDialog.this.deleteFolderInternal(0);
                }
            } catch (Exception e) {
                MoveFilesDialog.this.sendMessage(e.getMessage(), 0, -2);
            }
        }

        private File buildDestinationFile(File file) {
            return new File(MoveFilesDialog.this._destinationFolder, file.getAbsolutePath().substring(MoveFilesDialog.this._sourceFolder.getAbsolutePath().length()));
        }

        /* JADX WARN: Removed duplicated region for block: B:62:0x0134 A[Catch: IOException -> 0x0137, TRY_LEAVE, TryCatch #4 {IOException -> 0x0137, blocks: (B:76:0x012f, B:62:0x0134), top: B:75:0x012f }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x013e A[Catch: IOException -> 0x0141, TRY_LEAVE, TryCatch #17 {IOException -> 0x0141, blocks: (B:74:0x0139, B:67:0x013e), top: B:73:0x0139 }] */
        /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0139 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x012f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x014c A[Catch: IOException -> 0x014f, TRY_LEAVE, TryCatch #10 {IOException -> 0x014f, blocks: (B:96:0x0147, B:82:0x014c), top: B:95:0x0147 }] */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0156 A[Catch: IOException -> 0x0159, TRY_LEAVE, TryCatch #0 {IOException -> 0x0159, blocks: (B:94:0x0151, B:87:0x0156), top: B:93:0x0151 }] */
        /* JADX WARN: Removed duplicated region for block: B:92:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0151 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0147 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean copyFile(java.io.File r20, java.io.File r21) {
            /*
                Method dump skipped, instructions count: 346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.dialogs.MoveFilesDialog.MoveThread.copyFile(java.io.File, java.io.File):boolean");
        }
    }

    @Override // android.app.Activity
    @TargetApi(23)
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._context = this;
        setContentView(R.layout.move_files_dialog);
        this._sourceFolder = new File(Configuration.beyondPodPublicStorageRootPath());
        this._destinationFolder = new File(getIntent().getStringExtra("destination"));
        CoreHelper.writeLogEntry(TAG, "About to move BeyondPod folder from: " + this._sourceFolder.getAbsolutePath() + " to " + this._destinationFolder.getAbsolutePath());
        findViewById(R.id.button1).setVisibility(8);
        this._cancelBtn = (Button) findViewById(R.id.button2);
        this._cancelBtn.setText(R.string.alert_dialog_cancel);
        this._cancelBtn.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoveFilesDialog.this.cancelMove();
            }
        });
        this._cancelBtn.setEnabled(false);
        this._resultProgressBar = (ProgressBar) findViewById(R.id.result_progress);
        this._resultsTV = (TextView) findViewById(R.id.move_results);
        this._progressBar = (ProgressBar) findViewById(R.id.move_progressBar);
        this._progressBar.setMax(100);
        this._progressBar.setProgress(0);
        if (_isRunning && this._moveThread != null) {
            this._moveThread.start();
        }
        if (PermissionUtil.needsStoragePermissionForPath(this._sourceFolder.getAbsolutePath()) || PermissionUtil.needsStoragePermissionForPath(this._destinationFolder.getAbsolutePath())) {
            requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 501);
        } else if (!CoreHelper.isFolderReallyWritable(this._sourceFolder)) {
            sendMessage(null, 0, SOURCE_FOLDER_READONLY);
        } else {
            checkFilesAsync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFilesAsync() {
        new Thread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.3
            @Override // java.lang.Runnable
            public void run() {
                MoveFilesDialog.this.checkFiles();
            }
        }).start();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        _isRunning = false;
        if (this._ExitOnFinish) {
            CoreHelper.writeTraceEntry(TAG, "BeyondPod is exiting to switch to the new storage root...");
            System.exit(0);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && isOutOfBounds(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancelMove();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    private boolean isOutOfBounds(Activity activity, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(activity).getScaledWindowTouchSlop();
        View decorView = activity.getWindow().getDecorView();
        int i = -scaledWindowTouchSlop;
        return x < i || y < i || x > decorView.getWidth() + scaledWindowTouchSlop || y > decorView.getHeight() + scaledWindowTouchSlop;
    }

    private void buildFileList(File file, boolean z) {
        try {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        buildFileList(file2, z);
                    } else {
                        this._internalFileList.add(file2);
                    }
                }
            }
            if (z) {
                this._internalFileList.add(file);
            }
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Error loading feeds! " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFiles() {
        File parentFile = this._destinationFolder.getParentFile();
        if (UpdateAndDownloadManager.isWorking()) {
            sendMessage(null, 0, UPDATE_AND_DOWNLOAD_IN_PROGRESS);
            return;
        }
        if (!isExternalStorageAvailable() || isExternalStorageReadOnly() || parentFile == null || !parentFile.exists()) {
            sendMessage(null, 0, DEST_UNAVAILABLE);
            return;
        }
        if (!CoreHelper.isFolderReallyWritable(new File(this._destinationFolder.getParent()))) {
            sendMessage(null, 0, DEST_FOLDER_READONLY);
            return;
        }
        try {
            sendMessage(getString(R.string.mf_calculating_files), -2, 1);
            this._internalFileList.clear();
            this._totalFileSize = 0L;
            buildFileList(this._sourceFolder, true);
            Iterator<File> it = this._internalFileList.iterator();
            while (it.hasNext()) {
                File next = it.next();
                this._totalFileSize += next.isDirectory() ? 0L : next.length();
            }
            this._availableSize = parentFile.getUsableSpace();
            if (this._totalFileSize == 0) {
                sendMessage(null, 0, NOTHING_TO_DO);
                return;
            }
            if (this._availableSize <= this._totalFileSize) {
                warnInsufficientSpace();
            } else if (this._destinationFolder.exists()) {
                warnDestFolderExists();
            } else {
                checkProceedMove();
            }
        } catch (Exception e) {
            sendMessage(e.getMessage(), 0, -2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMoveCompleted() {
        if (!this._destinationFolder.exists()) {
            Toast.makeText(this, R.string.mf_complete, 0).show();
            CoreHelper.writeTraceEntry(TAG, "Move failed! destination Folder does not exist!");
            finish();
        }
        String absolutePath = this._destinationFolder.getParentFile().getAbsolutePath();
        File findAndroidReportedExternalStorage = Configuration.findAndroidReportedExternalStorage();
        if (findAndroidReportedExternalStorage != null && this._destinationFolder.getAbsolutePath().startsWith(findAndroidReportedExternalStorage.getAbsolutePath())) {
            CoreHelper.writeTraceEntry(TAG, "Setting customSDCardLocation to: " + absolutePath);
            Configuration.setCustomSDCardLocation(absolutePath);
        }
        Configuration.setRepoMovedPath(absolutePath);
        CoreHelper.writeTraceEntry(TAG, "Switching lastSDCardRootPath root folder to: " + absolutePath);
        Configuration.setLastSDCardRootPath(absolutePath);
        Configuration.setPreferLastSDCardRoot(true);
        CoreHelper.writeTraceEntry(TAG, "DEBUG: Reading back stored lastSDCardRootPath: " + Configuration.lastSDCardRootPath());
        if (this._sourceFolder.exists()) {
            new AlertDialog.Builder(this._context).setTitle(getString(R.string.mf_deleting_files)).setMessage(getString(!CoreHelper.isFolderReallyWritable(this._sourceFolder) ? R.string.mf_unable_to_cleanup_kitkat : R.string.mf_unable_to_cleanup, new Object[]{this._sourceFolder.getAbsoluteFile()})).setCancelable(false).setPositiveButton(getString(R.string.alert_dialog_continue), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    MoveFilesDialog.this.notifyAndRestart();
                }
            }).show();
        } else {
            notifyAndRestart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAndRestart() {
        Toast.makeText(this, getString(R.string.mf_complete, new Object[]{""}), 1).show();
        this._resultsTV.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.5
            @Override // java.lang.Runnable
            public void run() {
                ((AlarmManager) MoveFilesDialog.this.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 2000, PendingIntent.getActivity(BeyondPodApplication.getInstance().getBaseContext(), 0, new Intent("mobi.beyondpod.action.VIEW_MASTER"), 268435456));
                MoveFilesDialog.this._ExitOnFinish = true;
                MoveFilesDialog.this.finish();
            }
        }, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkProceedMove() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.6
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(MoveFilesDialog.this._context).setTitle(MoveFilesDialog.this.getString(R.string.mf_confirm_move)).setMessage(MoveFilesDialog.this.getString(R.string.mf_confirm_are_you_sure, new Object[]{CoreHelper.getFileLengthAsString(Long.valueOf(MoveFilesDialog.this._totalFileSize)), MoveFilesDialog.this._sourceFolder.getAbsolutePath(), MoveFilesDialog.this._destinationFolder.getAbsoluteFile()})).setCancelable(false).setPositiveButton(MoveFilesDialog.this.getString(R.string.alert_dialog_yes), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.6.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (UpdateAndDownloadManager.isWorking()) {
                            MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.UPDATE_AND_DOWNLOAD_IN_PROGRESS);
                            return;
                        }
                        MoveFilesDialog.this._cancelBtn.setEnabled(true);
                        MoveFilesDialog.this._moveThread = new MoveThread();
                        MoveFilesDialog.this._moveThread.start();
                    }
                }).setNegativeButton(MoveFilesDialog.this.getString(R.string.alert_dialog_no), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.6.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.NOTHING_TO_DO);
                    }
                }).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askToMoveToInternalStorageOrAppStorageFolder() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.7
            @Override // java.lang.Runnable
            public void run() {
                final File findAndroidReportedExternalStorage = Configuration.findAndroidReportedExternalStorage();
                if (findAndroidReportedExternalStorage == null) {
                    MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.DEST_UNAVAILABLE);
                } else {
                    final View inflate = MoveFilesDialog.this.getLayoutInflater().inflate(R.layout.move_files_ask_int_ext, (ViewGroup) null);
                    new AlertDialog.Builder(MoveFilesDialog.this._context).setView(inflate).setCancelable(true).setPositiveButton(MoveFilesDialog.this.getString(R.string.alert_dialog_continue), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.7.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            if (((RadioGroup) inflate.findViewById(R.id.chooseSD)).getCheckedRadioButtonId() == R.id.externalSD) {
                                if (!CoreHelper.isFolderReallyWritable(findAndroidReportedExternalStorage)) {
                                    MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.DEST_UNAVAILABLE);
                                    return;
                                } else {
                                    MoveFilesDialog.this._destinationFolder = new File(findAndroidReportedExternalStorage, MoveFilesDialog.this._sourceFolder.getName());
                                }
                            }
                            MoveFilesDialog.this.checkFilesAsync();
                        }
                    }).setNegativeButton(MoveFilesDialog.this.getString(R.string.alert_dialog_cancel), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.7.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.NOTHING_TO_DO);
                        }
                    }).show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askToMoveToAppStorageFolder() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.8
            @Override // java.lang.Runnable
            public void run() {
                final File findAndroidReportedExternalStorage = Configuration.findAndroidReportedExternalStorage();
                if (findAndroidReportedExternalStorage == null) {
                    MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.DEST_UNAVAILABLE);
                }
                new AlertDialog.Builder(MoveFilesDialog.this._context).setMessage(R.string.mf_external_SD_warninng).setCancelable(true).setPositiveButton(MoveFilesDialog.this.getString(R.string.alert_dialog_continue), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.8.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (!CoreHelper.isFolderReallyWritable(findAndroidReportedExternalStorage)) {
                            MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.DEST_UNAVAILABLE);
                            return;
                        }
                        MoveFilesDialog.this._destinationFolder = new File(findAndroidReportedExternalStorage, MoveFilesDialog.this._sourceFolder.getName());
                        MoveFilesDialog.this.checkFilesAsync();
                    }
                }).setNegativeButton(MoveFilesDialog.this.getString(R.string.alert_dialog_cancel), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.8.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.NOTHING_TO_DO);
                    }
                }).show();
            }
        });
    }

    private void warnInsufficientSpace() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.9
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(MoveFilesDialog.this._context).setMessage(MoveFilesDialog.this.getString(R.string.mf_insufficient_space, new Object[]{CoreHelper.getFileLengthAsString(Long.valueOf(MoveFilesDialog.this._totalFileSize)), CoreHelper.getFileLengthAsString(Long.valueOf(MoveFilesDialog.this._availableSize))})).setCancelable(false).setPositiveButton(MoveFilesDialog.this.getString(R.string.alert_dialog_cancel), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.9.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.NOTHING_TO_DO);
                    }
                }).show();
            }
        });
    }

    private void warnDestFolderExists() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.10
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(MoveFilesDialog.this._context).setTitle(MoveFilesDialog.this.getString(R.string.mf_confirm_move)).setMessage(MoveFilesDialog.this.getString(R.string.mf_dest_folder_exist, new Object[]{MoveFilesDialog.this._destinationFolder.getAbsoluteFile()})).setCancelable(false).setPositiveButton(MoveFilesDialog.this.getString(R.string.alert_dialog_yes), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.10.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MoveFilesDialog.this.checkProceedMove();
                    }
                }).setNegativeButton(MoveFilesDialog.this.getString(R.string.alert_dialog_no), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.10.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MoveFilesDialog.this.sendMessage(null, 0, MoveFilesDialog.NOTHING_TO_DO);
                    }
                }).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteFolderInternal(int i) {
        File file = i == 0 ? this._sourceFolder : this._destinationFolder;
        this._internalFileList.clear();
        buildFileList(file, true);
        StringBuilder sb = new StringBuilder();
        sb.append("Cleaning up ");
        sb.append(this._internalFileList.size());
        sb.append(" files from ");
        sb.append(i == 0 ? "source" : "destination");
        sb.append(" folder ");
        sb.append(file.getAbsolutePath());
        CoreHelper.writeTraceEntry(TAG, sb.toString());
        Iterator<File> it = this._internalFileList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            File next = it.next();
            if (!next.isDirectory()) {
                if (next.delete()) {
                    i2++;
                }
                if (this._internalFileList.size() > 20 && i2 % (this._internalFileList.size() / 20) == 0) {
                    sendMessage(getString(R.string.mf_deleting_files), (int) Math.ceil((i2 / this._internalFileList.size()) * 100.0f), 1);
                }
            }
        }
        CoreHelper.writeTraceEntry(TAG, "Deleted " + i2 + " files!");
        Iterator<File> it2 = this._internalFileList.iterator();
        while (it2.hasNext()) {
            File next2 = it2.next();
            if (next2.isDirectory()) {
                CoreHelper.writeTraceEntry(TAG, "   Deleting folder " + next2.getAbsolutePath() + "...");
                if (next2.delete()) {
                    i2++;
                }
            }
        }
        sendMessage(getString(R.string.mf_deleting_files), (int) Math.ceil((i2 / this._internalFileList.size()) * 100.0f), 1);
        CoreHelper.writeTraceEntry(TAG, "Deleted " + i2 + " folders!");
        if (file.exists()) {
            this._internalFileList.clear();
            buildFileList(file, true);
            CoreHelper.writeTraceEntry(TAG, "failed to clean " + this._internalFileList.size() + " files!");
            sendMessage(null, 0, i == 0 ? -3 : -4);
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Cleanup completed!");
        sendMessage(null, 1, i != 0 ? -1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelMove() {
        new AlertDialog.Builder(this).setTitle(getString(R.string.alert_dialog_cancel)).setMessage(getString(R.string.mf_cancel_are_you_sure)).setCancelable(false).setPositiveButton(getString(R.string.alert_dialog_yes), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MoveFilesDialog.this.sendMessage(MoveFilesDialog.this.getString(R.string.mf_canceling_move), -2, 1);
                if (MoveFilesDialog.this._moveThread != null) {
                    MoveFilesDialog.this._moveThread.cancel();
                }
                MoveFilesDialog.this._cancelBtn.setEnabled(false);
            }
        }).setNegativeButton(getString(R.string.alert_dialog_no), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.MoveFilesDialog.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(String str, int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putString(SettingsJsonConstants.PROMPT_MESSAGE_KEY, str);
        bundle.putInt(NotificationCompat.CATEGORY_PROGRESS, i);
        Message obtainMessage = this.handler.obtainMessage();
        obtainMessage.what = i2;
        obtainMessage.setData(bundle);
        this.handler.sendMessage(obtainMessage);
    }

    private static File getAlternativePath() {
        File primaryStorageMount = CoreHelper.getPrimaryStorageMount();
        File optionalStorageFullDataPath = CoreHelper.getOptionalStorageFullDataPath();
        if (StringUtils.equalsIgnoreCase(CoreHelper.externalStorageDirectory().getAbsolutePath(), primaryStorageMount.getAbsolutePath())) {
            primaryStorageMount = optionalStorageFullDataPath;
        }
        if (primaryStorageMount == null || !primaryStorageMount.exists()) {
            return null;
        }
        if (PermissionUtil.versionSupportsPermissions() || primaryStorageMount.canWrite()) {
            return primaryStorageMount;
        }
        return null;
    }

    private static boolean isExternalStorageReadOnly() {
        return "mounted_ro".equals(Environment.getExternalStorageState());
    }

    private static boolean isExternalStorageAvailable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 501) {
            if (PermissionUtil.verifyPermissions(iArr)) {
                checkFilesAsync();
                return;
            } else {
                finish();
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }
}
