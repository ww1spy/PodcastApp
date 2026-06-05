package mobi.beyondpod.ui.views.impexp;

import android.accounts.OperationCanceledException;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.aggregators.GDataObject;
import mobi.beyondpod.aggregators.feedly.Feedly;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.views.OAuthLoginActivity;

/* loaded from: classes.dex */
public class ImportFeedlyFragment extends DialogFragment {
    private static final int MENU_LOG_OUT = 101;
    public static final String TAG = "ImportFeedlyFragment";
    ProgressDialog _ProgressDialog;
    String _ProgressMessage;
    private static final String FAILED_TO_LOAD_READER_SUBSCRIPTIONS = CoreHelper.loadResourceString(R.string.import_reader_failed_to_load_reader_subscriptions);
    private static final String LOADING_FEED_SUBSCRIPTIONS = CoreHelper.loadResourceString(R.string.import_reader_loading_feed_subscriptions);
    private static final String SUCCESS = CoreHelper.loadResourceString(R.string.import_reader_success);
    private static final String LOGIN_FAILED = CoreHelper.loadResourceString(R.string.import_reader_login_failed);
    private static final String OPERATION_CANCELED = CoreHelper.loadResourceString(R.string.import_reader_operation_canceled);
    private static final String RETRIEVING_ACCOUNT_DETAILS = CoreHelper.loadResourceString(R.string.import_reader_retrieving_account_details);
    private static final String LOGGED_OUT_MSG = CoreHelper.loadResourceString(R.string.import_reader_log_out_msg);
    boolean _ForLoginOnly = false;
    boolean _AutoLoadSubscriptions = false;

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this._ProgressDialog != null) {
            this._ProgressDialog.dismiss();
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.import_feedly_fragment, (ViewGroup) null);
        try {
            if (AggregatorLoginHelper.isLoggedIn(AggregatorLoginHelper.currentAccount())) {
                getFeedlyFeedList();
            } else if (bundle == null) {
                try {
                    FragmentActivity activity = getActivity();
                    if (activity != null) {
                        activity.startActivityForResult(new Intent(activity, (Class<?>) OAuthLoginActivity.class), OAuthLoginActivity.OAuthActivityResult);
                    }
                } catch (Exception e) {
                    Toast.makeText(getActivity(), e.getMessage(), 1).show();
                }
            }
        } catch (Exception unused) {
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        if (this._ProgressDialog != null) {
            this._ProgressDialog.dismiss();
        }
    }

    private void showProgressDialog(String str) {
        dismissProgressDialog();
        this._ProgressMessage = str;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    ImportFeedlyFragment.this._ProgressDialog = new ProgressDialog(ImportFeedlyFragment.this.getActivity());
                    ImportFeedlyFragment.this._ProgressDialog.setMessage(ImportFeedlyFragment.this._ProgressMessage);
                    ImportFeedlyFragment.this._ProgressDialog.setIndeterminate(true);
                    ImportFeedlyFragment.this._ProgressDialog.setCancelable(true);
                    ImportFeedlyFragment.this._ProgressDialog.setMessage(ImportFeedlyFragment.this._ProgressMessage);
                    ImportFeedlyFragment.this._ProgressDialog.show();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNotification(final CharSequence charSequence) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment.2
            @Override // java.lang.Runnable
            public void run() {
                ImportFeedlyFragment.this.dismissProgressDialog();
                Toast.makeText(ImportFeedlyFragment.this.getActivity(), charSequence, charSequence.length() < 20 ? 0 : 1).show();
            }
        });
    }

    public void initialize(boolean z, boolean z2) {
        setHasOptionsMenu(true);
        this._ForLoginOnly = z;
        this._AutoLoadSubscriptions = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFeedlyFeedList() {
        showProgressDialog(LOADING_FEED_SUBSCRIPTIONS);
        Feedly.getFeedList(new Feedly.FGetFeedsResult() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment.3
            @Override // mobi.beyondpod.aggregators.feedly.Feedly.FGetFeedsResult
            public void failed(Exception exc) {
                CoreHelper.logException(ImportFeedlyFragment.TAG, ImportFeedlyFragment.FAILED_TO_LOAD_READER_SUBSCRIPTIONS, exc);
                if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
                    AggregatorLoginHelper.clearAccountToken();
                    ImportFeedlyFragment.this.showNotification(ImportFeedlyFragment.this.getString(R.string.failed_to_connect_to_google_reader));
                    FragmentActivity activity = ImportFeedlyFragment.this.getActivity();
                    if (activity != null) {
                        activity.finish();
                        return;
                    }
                    return;
                }
                ImportFeedlyFragment.this.showNotification(ImportFeedlyFragment.FAILED_TO_LOAD_READER_SUBSCRIPTIONS + "\n\n" + CoreHelper.extractExceptionMessages(exc));
            }

            @Override // mobi.beyondpod.aggregators.feedly.Feedly.FGetFeedsResult
            public void success(GDataObject gDataObject) {
                final Feed buildFeedList = Feedly.buildFeedList(gDataObject);
                ImportFeedlyFragment.this.dismissProgressDialog();
                FragmentActivity activity = ImportFeedlyFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            OpmlListViewFragment opmlListViewFragment = (OpmlListViewFragment) ImportFeedlyFragment.this.getActivity().getSupportFragmentManager().findFragmentByTag(OpmlListViewFragment.TAG);
                            if (opmlListViewFragment == null) {
                                opmlListViewFragment = new OpmlListViewFragment();
                                FragmentTransaction beginTransaction = ImportFeedlyFragment.this.getActivity().getSupportFragmentManager().beginTransaction();
                                beginTransaction.add(R.id.readerContentFragmentContainer, opmlListViewFragment, OpmlListViewFragment.TAG);
                                beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
                                beginTransaction.commit();
                                ImportFeedlyFragment.this.getActivity().getFragmentManager().executePendingTransactions();
                            }
                            opmlListViewFragment.initialize(buildFeedList);
                            opmlListViewFragment.loadCurrentFeed();
                        }
                    });
                }
            }
        });
    }

    public void onOAuthAccessGranted(String str) {
        final FragmentActivity activity = getActivity();
        if (StringUtils.isNullOrEmpty(str)) {
            showNotification(OPERATION_CANCELED);
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        showProgressDialog(RETRIEVING_ACCOUNT_DETAILS);
        AggregatorLoginHelper.getAuthToken(new AggregatorLoginHelper.FeedlyOAuthAccountInfo(str), new AggregatorLoginHelper.GetAuthTokenResult() { // from class: mobi.beyondpod.ui.views.impexp.ImportFeedlyFragment.4
            @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GetAuthTokenResult
            public void failed(Exception exc) {
                if (exc instanceof OperationCanceledException) {
                    ImportFeedlyFragment.this.showNotification(ImportFeedlyFragment.OPERATION_CANCELED);
                    return;
                }
                ImportFeedlyFragment.this.showNotification(ImportFeedlyFragment.LOGIN_FAILED + "\n\n" + CoreHelper.extractExceptionMessages(exc));
                if (activity != null) {
                    activity.finish();
                }
            }

            @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GetAuthTokenResult
            public void success(String str2) {
                if (StringUtils.isNullOrEmpty(str2)) {
                    return;
                }
                if (ImportFeedlyFragment.this._ForLoginOnly) {
                    ImportFeedlyFragment.this.showNotification(ImportFeedlyFragment.SUCCESS);
                    if (activity != null) {
                        activity.finish();
                        return;
                    }
                    return;
                }
                ImportFeedlyFragment.this.getFeedlyFeedList();
            }
        }, activity);
    }

    public void onOAuthAccessDenied() {
        showNotification(OPERATION_CANCELED);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(101);
        if (findItem == null) {
            findItem = menu.add(0, 101, 1, R.string.import_reader_log_out_menu);
            findItem.setShowAsAction(0);
        }
        findItem.setVisible(AggregatorLoginHelper.isLoggedIn());
        super.onPrepareOptionsMenu(menu);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 101) {
            return false;
        }
        AggregatorLoginHelper.clearLogin();
        showNotification(LOGGED_OUT_MSG);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return true;
        }
        activity.finish();
        return true;
    }
}
