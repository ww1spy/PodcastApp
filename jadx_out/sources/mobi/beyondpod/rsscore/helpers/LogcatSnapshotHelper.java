package mobi.beyondpod.rsscore.helpers;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;

/* loaded from: classes.dex */
public class LogcatSnapshotHelper extends AsyncTask<Boolean, Void, Void> {
    private Exception _LastException;
    private int _NumRecoredsToGet;
    private ProgressDialog _ProgressDialog;
    private String _SavePath;
    private ILogcatSnapshot _callback;

    /* loaded from: classes.dex */
    public interface ILogcatSnapshot {
        void snapshotFailed(String str);

        void snapshotPrepared();
    }

    public LogcatSnapshotHelper(Context context, int i, String str, ILogcatSnapshot iLogcatSnapshot) {
        this._NumRecoredsToGet = i;
        this._SavePath = str;
        this._callback = iLogcatSnapshot;
        this._ProgressDialog = new ProgressDialog(context);
        this._ProgressDialog.setIndeterminate(true);
        this._ProgressDialog.setMessage("Reading Android Log...");
        this._ProgressDialog.setCancelable(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
    
        if (r2 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        if (r2 != null) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0080 A[Catch: Exception -> 0x0083, TRY_LEAVE, TryCatch #5 {Exception -> 0x0083, blocks: (B:35:0x007b, B:30:0x0080), top: B:34:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Void doInBackground(java.lang.Boolean... r8) {
        /*
            r7 = this;
            r8 = 0
            java.lang.String r0 = r7._SavePath     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            mobi.beyondpod.rsscore.helpers.FileUtils.deleteFileIfExists(r0)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            java.io.BufferedWriter r0 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            java.lang.String r3 = r7._SavePath     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            r3 = 0
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            r2 = 8192(0x2000, float:1.148E-41)
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.util.Locale r2 = java.util.Locale.ROOT     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.lang.String r4 = "logcat -t %d -b main -v time"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            int r6 = r7._NumRecoredsToGet     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r5[r3] = r6     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.lang.String r2 = java.lang.String.format(r2, r4, r5)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.io.InputStream r1 = r1.getInputStream()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
        L43:
            java.lang.String r1 = r2.readLine()     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L76
            if (r1 == 0) goto L52
            r0.write(r1)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L76
            java.lang.String r1 = "\n"
            r0.write(r1)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L76
            goto L43
        L52:
            if (r0 == 0) goto L57
            r0.close()     // Catch: java.lang.Exception -> L75
        L57:
            if (r2 == 0) goto L75
        L59:
            r2.close()     // Catch: java.lang.Exception -> L75
            goto L75
        L5d:
            r1 = move-exception
            goto L6b
        L5f:
            r1 = move-exception
            goto L79
        L61:
            r1 = move-exception
            r2 = r8
            goto L6b
        L64:
            r0 = move-exception
            r1 = r0
            r0 = r8
            goto L79
        L68:
            r1 = move-exception
            r0 = r8
            r2 = r0
        L6b:
            r7._LastException = r1     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L72
            r0.close()     // Catch: java.lang.Exception -> L75
        L72:
            if (r2 == 0) goto L75
            goto L59
        L75:
            return r8
        L76:
            r8 = move-exception
            r1 = r8
            r8 = r2
        L79:
            if (r0 == 0) goto L7e
            r0.close()     // Catch: java.lang.Exception -> L83
        L7e:
            if (r8 == 0) goto L83
            r8.close()     // Catch: java.lang.Exception -> L83
        L83:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.helpers.LogcatSnapshotHelper.doInBackground(java.lang.Boolean[]):java.lang.Void");
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        this._ProgressDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void r2) {
        if (this._ProgressDialog != null) {
            this._ProgressDialog.dismiss();
        }
        if (this._callback != null) {
            if (this._LastException == null && FileUtils.exists(this._SavePath)) {
                this._callback.snapshotPrepared();
            } else {
                this._callback.snapshotFailed(this._LastException == null ? "N/A" : this._LastException.getMessage());
            }
        }
    }
}
