package mobi.beyondpod.ui.views;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.ProgressBar;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.fragments.HtmlViewFragment;

/* loaded from: classes.dex */
public class HtmlViewActivity extends AppCompatActivity implements HtmlViewFragment.HtmlViewOwnerListener {
    private static final String TAG = "HtmlViewActivity";
    private static volatile int _InstanceCount;
    ProgressBar _LoadingProgress;
    boolean _HasBottomToolbar = false;
    Handler _Handler = new Handler();

    public HtmlViewActivity() {
        _InstanceCount++;
        CoreHelper.writeTraceEntry(TAG, "######### HtmlView Activity created! Instances: " + _InstanceCount + " #########");
    }

    @Override // mobi.beyondpod.ui.fragments.HtmlViewFragment.HtmlViewOwnerListener
    public void setTitle(String str) {
        super.setTitle((CharSequence) str);
    }

    @Override // mobi.beyondpod.ui.fragments.HtmlViewFragment.HtmlViewOwnerListener
    public CharSequence getActivityTitle() {
        return super.getTitle();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        System.gc();
        super.onCreate(bundle);
        setContentView(R.layout.html_view_activity);
        this._LoadingProgress = (ProgressBar) findViewById(R.id.loadingProgress);
        getWindow().setVolumeControlStream(3);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(15);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        switch (keyEvent.getKeyCode()) {
            case 24:
                if (action != 0) {
                    return false;
                }
                BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(1);
                return false;
            case 25:
                if (action != 0) {
                    return false;
                }
                BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(-1);
                return false;
            default:
                return super.dispatchKeyEvent(keyEvent);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        HtmlViewFragment htmlViewFragment = (HtmlViewFragment) getSupportFragmentManager().findFragmentById(R.id.webViewFragment);
        if (htmlViewFragment == null) {
            return super.onKeyDown(i, keyEvent);
        }
        if (htmlViewFragment.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // mobi.beyondpod.ui.fragments.HtmlViewFragment.HtmlViewOwnerListener
    public void SetProgress(int i) {
        int max = Math.max(i, 10);
        if (this._LoadingProgress != null) {
            this._LoadingProgress.setProgress(max);
            this._LoadingProgress.setVisibility(max < 100 ? 0 : 8);
        }
    }

    @Override // mobi.beyondpod.ui.fragments.HtmlViewFragment.HtmlViewOwnerListener
    public void requestOwnerActivityClose() {
        getSupportActionBar().setDisplayUseLogoEnabled(false);
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.HtmlViewActivity.1
            @Override // java.lang.Runnable
            public void run() {
                HtmlViewActivity.this.finish();
            }
        }, 300L);
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.HtmlViewActivity.2
            @Override // java.lang.Runnable
            public void run() {
                HtmlViewActivity.this.finish();
                HtmlViewActivity.this.getSupportActionBar().setDisplayUseLogoEnabled(true);
            }
        }, 200L);
    }

    @Override // mobi.beyondpod.ui.fragments.HtmlViewFragment.HtmlViewOwnerListener
    public boolean allowMenus() {
        return !this._HasBottomToolbar;
    }

    protected void finalize() throws Throwable {
        _InstanceCount--;
        CoreHelper.writeTraceEntry(TAG, "######### HtmlView Activity finalized! Instances: " + _InstanceCount + " #########");
        super.finalize();
    }
}
