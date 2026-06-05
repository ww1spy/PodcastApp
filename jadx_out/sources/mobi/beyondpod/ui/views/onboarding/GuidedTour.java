package mobi.beyondpod.ui.views.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.base.UnderlinePageIndicator;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class GuidedTour extends FragmentActivity {
    GuidedTourPagerAdapter mAdapter;
    TextView mCloseText;
    UnderlinePageIndicator mIndicator;
    View mNextPage;
    TextView mNextPageText;
    ViewPager mPager;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.guided_tour_view);
        final int intExtra = getIntent().getIntExtra("TourType", 0);
        this.mAdapter = new GuidedTourPagerAdapter(getSupportFragmentManager(), intExtra == 0 ? "welcome" : "whatsnew");
        this.mPager = (ViewPager) findViewById(R.id.pager);
        this.mPager.setAdapter(this.mAdapter);
        findViewById(R.id.wizard_cancel).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.onboarding.GuidedTour.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GuidedTour.this.closeTour(intExtra);
            }
        });
        this.mNextPage = findViewById(R.id.wizard_continue);
        this.mNextPage.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.onboarding.GuidedTour.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (GuidedTour.this.mAdapter.getCount() == 1) {
                    CommandManagerBase.cmdOpenExternalBrowser(Configuration.versionUpgradeNotesURL().toString());
                    GuidedTour.this.closeTour(intExtra);
                } else if (GuidedTour.this.mPager.getCurrentItem() < GuidedTour.this.mAdapter.getCount() - 1) {
                    GuidedTour.this.mPager.setCurrentItem(GuidedTour.this.mPager.getCurrentItem() + 1);
                } else if (PolicyManager.isUnlocked()) {
                    GuidedTour.this.closeTour(intExtra);
                } else {
                    CommandManagerBase.cmdOpenExternalBrowser(Configuration.faqLiteProURL().toString());
                }
            }
        });
        this.mNextPageText = (TextView) findViewById(R.id.wizard_continue_text);
        this.mCloseText = (TextView) findViewById(R.id.wizard_cancel_text);
        this.mIndicator = (UnderlinePageIndicator) findViewById(R.id.indicator);
        this.mIndicator.setViewPager(this.mPager);
        this.mIndicator.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: mobi.beyondpod.ui.views.onboarding.GuidedTour.3
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (i < GuidedTour.this.mAdapter.getCount() - 1) {
                    GuidedTour.this.mNextPageText.setText(R.string.first_run_continue);
                } else {
                    GuidedTour.this.mNextPageText.setText(PolicyManager.isUnlocked() ? R.string.first_run_finish : R.string.first_run_find_more);
                }
            }
        });
        if (this.mAdapter.getCount() > 1) {
            this.mIndicator.setVisibility(0);
            this.mCloseText.setText(R.string.first_run_end_tour);
        } else {
            this.mIndicator.setVisibility(8);
            this.mCloseText.setText(R.string.info_card_got_it);
            this.mNextPageText.setText(R.string.first_run_upgrade_guide);
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeTour(int i) {
        UserNotificationManager.setNotificationPreferenceFor(i != 0 ? 2 : 1, false);
        finish();
    }
}
