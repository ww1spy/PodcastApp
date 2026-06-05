package mobi.beyondpod.ui.views.onboarding.startup;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.TextView;
import mobi.beyondpod.R;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class FirstRun extends FragmentActivity {
    public static int ACTIVITY_REQUEST_FirstRun = 1777;
    private static boolean _IsActive;
    FirstRunConfigurator _Configurator;
    View _Continue;
    TextView _ContinueText;
    View _Exit;
    View _Progress;
    FirstRunPagerAdapter mAdapter;
    ViewPager mPager;

    public static boolean isActive() {
        return _IsActive;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.first_run_view);
        setFinishOnTouchOutside(false);
        this._Continue = findViewById(R.id.wizard_continue);
        this._ContinueText = (TextView) findViewById(R.id.wizard_continue_text);
        this._Progress = findViewById(R.id.wizard_progress);
        this._Exit = findViewById(R.id.wizard_cancel);
        this._Configurator = new FirstRunConfigurator(this, this._Progress);
        this._Exit.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.FirstRun.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FirstRun.this.finish();
            }
        });
        this._Continue.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.FirstRun.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FirstRun.this.onWizardContinue();
            }
        });
        this.mAdapter = new FirstRunPagerAdapter(getSupportFragmentManager(), "splash");
        this.mPager = (ViewPager) findViewById(R.id.pager);
        this.mPager.setAdapter(this.mAdapter);
        this.mPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.FirstRun.3
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                FirstRun.this.updatePageButtons();
            }
        });
        updatePageButtons();
        _IsActive = true;
    }

    public void onWizardContinue() {
        int currentItem = this.mPager.getCurrentItem() + 1;
        if (currentItem < this.mAdapter.getCount()) {
            this.mPager.setCurrentItem(currentItem);
        } else {
            this._Configurator.buildSampleContent();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePageButtons() {
        int currentItem = this.mPager.getCurrentItem();
        if (currentItem == 0) {
            this._Exit.setVisibility(8);
            this._ContinueText.setText(R.string.first_run_start);
        } else if (currentItem == 1) {
            this._Exit.setVisibility(0);
            this._ContinueText.setText(R.string.first_run_continue);
        } else {
            this._Exit.setVisibility(8);
            this._ContinueText.setText(R.string.first_run_finish);
        }
        enableContinue(currentItem == 0 || this._Configurator.canBuildContent());
    }

    private void enableContinue(boolean z) {
        this._Continue.setEnabled(z);
        this._ContinueText.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this._Configurator.release();
        _IsActive = false;
        super.onDestroy();
    }

    public void categorySelectionChanged(String str) {
        this._Configurator.setSelectedCategories(str);
        updatePageButtons();
    }

    public void downloadOptionsChanged(boolean z, boolean z2, boolean z3) {
        this._Configurator.downloadOptionsChanged(z, z2);
        this._Configurator.analyticsOptionsChanged(z3);
        updatePageButtons();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }
}
