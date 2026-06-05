package mobi.beyondpod.ui.dialogs;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment;

/* loaded from: classes.dex */
public class GoogleReaderLoginDialog extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        setContentView(R.layout.login_to_google_reader_dialog);
        ImportFeedlyFragment importFeedlyFragment = new ImportFeedlyFragment();
        importFeedlyFragment.initialize(true, false);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.contentHolder, importFeedlyFragment, ImportFeedlyFragment.TAG);
        beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        beginTransaction.commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ImportFeedlyFragment importFeedlyFragment;
        super.onActivityResult(i, i2, intent);
        if (i != 5656 || (importFeedlyFragment = (ImportFeedlyFragment) getSupportFragmentManager().findFragmentByTag(ImportFeedlyFragment.TAG)) == null) {
            return;
        }
        if (i2 == -1) {
            importFeedlyFragment.onOAuthAccessGranted(intent.getAction());
        } else {
            importFeedlyFragment.onOAuthAccessDenied();
        }
    }
}
