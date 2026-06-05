package mobi.beyondpod.ui.views.impexp;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.actions.SearchIntents;
import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView;
import mobi.beyondpod.ui.views.impexp.FolderBrowserFragment;

/* loaded from: classes.dex */
public class ImportFeedsView extends AppCompatActivity implements FolderBrowserFragment.OnFolderSelectedListener {
    private static final int REQUEST_EXTERNAL_STORAGE = 501;
    private static final String TAG = "ImportFeedsView";
    private FeedList _RecentlyImportedFeeds = new FeedList();
    private final RepositoryEvents.RepositoryEventListener _RepositoryListener = new RepositoryEvents.RepositoryEventListener() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedsView.1
        @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
        public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
            if (repositoryEvent.Type == 6) {
                ImportFeedsView.this._RecentlyImportedFeeds.add(repositoryEvent.Feed);
            }
        }
    };

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        BeyondPodApplication.messageBus.subscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        setContentView(R.layout.import_feeds_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        if (bundle == null) {
            int intExtra = getIntent().getIntExtra("#TYPE#", 0);
            if (intExtra == 2) {
                importOPML();
            } else if (intExtra == 4) {
                importFeedly();
            } else {
                importVirtualFeed();
            }
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        View findViewById = findViewById(R.id.contentHolder);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) findViewById.getLayoutParams();
        int dimension = (int) getResources().getDimension(R.dimen.generic_screen_h_margin);
        layoutParams.rightMargin = dimension;
        layoutParams.leftMargin = dimension;
        findViewById.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        openSearch("android.intent.action.SEARCH".equals(intent.getAction()) ? intent.getStringExtra(SearchIntents.EXTRA_QUERY) : null);
        super.onNewIntent(intent);
    }

    private void openSearch(String str) {
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(OpmlListViewFragment.TAG);
        if (findFragmentByTag != null) {
            ((OpmlListViewFragment) findFragmentByTag).searchFor(str);
        }
    }

    public void importFeedly() {
        ImportFeedlyFragment importFeedlyFragment = new ImportFeedlyFragment();
        importFeedlyFragment.initialize(false, true);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.contentHolder, importFeedlyFragment, ImportFeedlyFragment.TAG);
        beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        beginTransaction.commitAllowingStateLoss();
    }

    public void importOPML() {
        ImportOPMLFragment importOPMLFragment = new ImportOPMLFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.contentHolder, importOPMLFragment, ImportOPMLFragment.TAG);
        beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        beginTransaction.commitAllowingStateLoss();
    }

    @TargetApi(23)
    public void importVirtualFeed() {
        if (!PermissionUtil.hasExternalStoragePermission()) {
            requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 501);
            return;
        }
        FolderBrowserFragment folderBrowserFragment = new FolderBrowserFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.contentHolder, folderBrowserFragment, FolderBrowserFragment.TAG);
        beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        beginTransaction.commitAllowingStateLoss();
    }

    boolean openAddFeedDialog(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        String trim = str.trim();
        String lowerCase = trim.toLowerCase();
        if (!lowerCase.startsWith("http") && !lowerCase.startsWith("feed") && !FileUtils.exists(lowerCase) && !FileUtils.exists(trim)) {
            return false;
        }
        Intent intent = new Intent(this, (Class<?>) FeedPropertiesView.class);
        intent.putExtra(FeedPropertiesView.URL_KEY, trim);
        startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // mobi.beyondpod.ui.views.impexp.FolderBrowserFragment.OnFolderSelectedListener
    public void onFolderSelected(File file) {
        openAddFeedDialog(file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BeyondPodApplication.messageBus.unsubscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        if (this._RecentlyImportedFeeds.size() > 0 && !UpdateAndDownloadManager.isWorking()) {
            UpdateAndDownloadManager.startNewFeedAddedUpdate(this._RecentlyImportedFeeds);
        }
        super.onDestroy();
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

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 501) {
            if (PermissionUtil.verifyPermissions(iArr)) {
                importVirtualFeed();
                return;
            } else {
                finish();
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }
}
