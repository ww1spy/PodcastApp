package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;

/* loaded from: classes.dex */
public class ExternalPlayerStarterActivity extends Activity {
    public static int REQUEST_CODE_CmdOpenExternalPlayer = 0;
    private static final String TAG = "ExternalPlayerStarterActivity";
    Handler _Handler;
    ProgressDialog _RepoLoadingDlg;
    int _UpdateTrackWhenRepositoryLoadsRetryCount;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._Handler = new Handler();
        if (!BeyondPodApplication.isInitialized()) {
            CoreHelper.writeTraceEntry(TAG, "ExternalPlayerStarterActivity started with no storage card. Exiting...");
            finish();
            return;
        }
        Intent intent = getIntent();
        CoreHelper.writeTraceEntry(TAG, "External Player Starter received intent: " + intent + ", flags: " + intent.getFlags());
        if (StringUtils.equals("android.intent.action.VIEW", intent.getAction()) && bundle == null) {
            final Intent intent2 = new Intent();
            intent2.fillIn(intent, 0);
            intent2.setComponent(null);
            CoreHelper.writeTraceEntry(TAG, "Starting playback in external player for: " + intent2.getData().getPath());
            setIntent(null);
            this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.ExternalPlayerStarterActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    ExternalPlayerStarterActivity.this.startActivityForResult(intent2, ExternalPlayerStarterActivity.REQUEST_CODE_CmdOpenExternalPlayer);
                }
            }, 200L);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        CoreHelper.writeTraceEntry(TAG, "On Start()!");
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        CoreHelper.writeTraceEntry(TAG, "On Destroy()!");
        super.onDestroy();
        if (this._RepoLoadingDlg != null) {
            this._RepoLoadingDlg.dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        CoreHelper.writeTraceEntry(TAG, "On stop()!");
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("AAA", true);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String str;
        long j;
        long j2;
        super.onActivityResult(i, i2, intent);
        CoreHelper.writeTraceEntry(TAG, "Received Activity Result: " + intent);
        if (i == REQUEST_CODE_CmdOpenExternalPlayer) {
            this._UpdateTrackWhenRepositoryLoadsRetryCount = 10;
            float f = -1.0f;
            if (intent == null || !(i2 == -1 || i2 == 0)) {
                str = "";
                j = -1;
                j2 = -1;
            } else {
                String stringExtra = intent.getStringExtra("filePath");
                if (stringExtra == null) {
                    if (StringUtils.equals(intent.getData().getScheme(), "file")) {
                        stringExtra = intent.getData().getPath();
                    } else {
                        stringExtra = intent.getDataString();
                    }
                }
                String safeDecodeUrl = stringExtra != null ? CoreHelper.safeDecodeUrl(stringExtra) : "";
                if (StringUtils.equals("com.mxtech.intent.result.VIEW", intent.getAction())) {
                    long intExtra = intent.getIntExtra("position", -1);
                    if (intExtra > -1) {
                        intExtra /= 1000;
                    }
                    long intExtra2 = intent.getIntExtra("duration", (int) (intExtra > -1 ? intExtra * 2 : 1000L));
                    CoreHelper.writeTraceEntry(TAG, "Received MXPlayer return result! File: " + stringExtra + ", Position: " + intExtra + ", duration: " + intExtra2);
                    j2 = intExtra2;
                    j = intExtra;
                    str = safeDecodeUrl;
                } else {
                    f = intent.getFloatExtra("position", -1.0f);
                    str = safeDecodeUrl;
                    j2 = intent.getIntExtra("duration", 1000);
                    j = -1;
                }
            }
            updateTrackWhenRepositoryLoads(str, 0L, j, Float.valueOf(f), j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTrackWhenRepositoryLoads(final String str, final long j, final long j2, final Float f, final long j3) {
        if (FeedRepository.repositoryLoadState() != 2) {
            if (this._UpdateTrackWhenRepositoryLoadsRetryCount > 0) {
                this._UpdateTrackWhenRepositoryLoadsRetryCount--;
                CoreHelper.writeTraceEntry(TAG, "Trying to update the last plying track from external Player, Waiting for repository to load: " + this._UpdateTrackWhenRepositoryLoadsRetryCount);
                if (this._RepoLoadingDlg == null) {
                    this._RepoLoadingDlg = new ProgressDialog(this);
                    this._RepoLoadingDlg.setIndeterminate(true);
                    this._RepoLoadingDlg.setCancelable(false);
                    this._RepoLoadingDlg.setMessage(getResources().getString(R.string.smart_playlist_repository_loading));
                    this._RepoLoadingDlg.show();
                }
                this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.dialogs.ExternalPlayerStarterActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ExternalPlayerStarterActivity.this.updateTrackWhenRepositoryLoads(str, j, j2, f, j3);
                    }
                }, 5000L);
                return;
            }
            CoreHelper.writeLogEntryInProduction(TAG, "Trying to update the last plying track from external Player, but repository is taking too long to load. Giving up.");
            if (this._RepoLoadingDlg != null) {
                this._RepoLoadingDlg.dismiss();
            }
            finish();
            return;
        }
        Track trackByPath = FeedRepository.getTrackByPath(str);
        if (trackByPath == null) {
            trackByPath = FeedRepository.getTrackByUrl(str);
        }
        if (trackByPath == null) {
            CoreHelper.writeLogEntryInProduction(TAG, "External Player finished playing, but track: " + str + " was not found!");
        } else if (f.floatValue() >= 0.0f) {
            if (trackByPath.getTotalTime() == 0) {
                trackByPath.setTotalTime(j3);
            }
            long totalTime = ((float) trackByPath.getTotalTime()) * f.floatValue();
            CoreHelper.writeLogEntryInProduction(TAG, "External Player finished playing track: " + trackByPath.getName() + "(" + str + ") at position: " + totalTime + ", Toatl Time: " + trackByPath.getTotalTime() + ", Pct:" + f);
            if (totalTime >= 0) {
                trackByPath.setPlayedTime(totalTime);
            }
        } else if (j2 >= 0) {
            if (trackByPath.getTotalTime() == 0) {
                trackByPath.setTotalTime(j3);
            }
            CoreHelper.writeLogEntryInProduction(TAG, "External Player finished playing track: " + trackByPath.getName() + "(" + str + ") at position: " + j2 + ", Toatl Time: " + trackByPath.getTotalTime());
            trackByPath.setPlayedTime(j2);
        } else if (System.currentTimeMillis() - j > 10000) {
            CoreHelper.writeLogEntryInProduction(TAG, "External Player finished playing track: " + trackByPath.getName() + ". track marlked as Played!");
            trackByPath.markPlayed();
            ItemStateHistory.markTracksItemAsRead(trackByPath);
        } else {
            CoreHelper.writeLogEntryInProduction(TAG, "External Player finished playing track: " + trackByPath.getName() + ". Playback was too short. Ignoring");
        }
        if (this._RepoLoadingDlg != null) {
            this._RepoLoadingDlg.dismiss();
        }
        finish();
    }
}
