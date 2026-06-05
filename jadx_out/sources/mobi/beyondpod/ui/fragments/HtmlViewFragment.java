package mobi.beyondpod.ui.fragments;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Browser;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import java.util.List;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.DownloadEngineNotificationManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.base.IWebViewOwner;
import mobi.beyondpod.ui.views.base.WebViewEx;

/* loaded from: classes.dex */
public class HtmlViewFragment extends Fragment implements DownloadListener, IWebViewOwner {
    private static final int FOCUS_NODE_HREF = 102;
    private static final int HEADER_FLAG = Integer.MIN_VALUE;
    private static final int MENU_BROWSER_REFRESH = 6;
    private static final int MENU_BROWSER_STOP_LOAD = 5;
    private static final int MENU_COPY_LINK = 8;
    private static final int MENU_EMAIL_LOG = 13;
    private static final int MENU_LOAD_IMAGES = 11;
    private static final int MENU_OPEN_IN_BROWSER = 10;
    private static final int MENU_SHARE_LINK = 9;
    private static final String TAG = "HtmlViewFragment";
    HtmlViewOwnerListener _OwnerListener;
    protected WebViewEx _WebView;
    private TextView _TitleView = null;
    boolean _IsFeedContentLink = false;
    String _StartupUrl = null;

    @SuppressLint({"HandlerLeak"})
    private Handler _Handler = new Handler() { // from class: mobi.beyondpod.ui.fragments.HtmlViewFragment.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            if (message.what != 102 || (str = (String) message.getData().get("url")) == null || str.length() == 0) {
                return;
            }
            int i = message.arg1;
            if (i == Integer.MIN_VALUE) {
                HtmlViewFragment.this._TitleView.setText(str);
                return;
            }
            switch (i) {
                case 8:
                    ((ClipboardManager) HtmlViewFragment.this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", str));
                    return;
                case 9:
                    Browser.sendString(HtmlViewFragment.this.getActivity(), str);
                    return;
                case 10:
                    CommandManagerBase.cmdOpenExternalBrowser(str);
                    return;
                default:
                    return;
            }
        }
    };

    /* loaded from: classes.dex */
    public interface HtmlViewOwnerListener {
        void SetProgress(int i);

        boolean allowMenus();

        CharSequence getActivityTitle();

        void requestOwnerActivityClose();

        void setTitle(String str);
    }

    @Override // mobi.beyondpod.ui.views.base.IWebViewOwner
    public void onVerticalScroll(int i, int i2) {
    }

    public void initialize(String str, boolean z) {
        this._StartupUrl = str;
        this._IsFeedContentLink = z;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    @Deprecated
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this._OwnerListener = (HtmlViewOwnerListener) activity;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof Activity) {
            this._OwnerListener = (HtmlViewOwnerListener) ((Activity) context);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.html_view_fragment, (ViewGroup) null);
        this._WebView = (WebViewEx) inflate.findViewById(R.id.webView);
        this._WebView.initialize(this, Configuration.allowMarginNavigationInFeedItemContentDialog());
        this._WebView.setTag(TAG);
        this._WebView.setWebChromeClient(new WebChrome());
        this._WebView.setWebViewClient(new WebViewClient() { // from class: mobi.beyondpod.ui.fragments.HtmlViewFragment.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                FragmentActivity activity = HtmlViewFragment.this.getActivity();
                if (activity != null) {
                    activity.invalidateOptionsMenu();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                FragmentActivity activity = HtmlViewFragment.this.getActivity();
                if (activity != null) {
                    activity.invalidateOptionsMenu();
                }
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return HtmlViewFragment.this.allowLoadingUrl(webView, str);
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(24)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return HtmlViewFragment.this.allowLoadingUrl(webView, webResourceRequest.getUrl().toString());
            }
        });
        this._WebView.setDownloadListener(this);
        Intent intent = getActivity().getIntent();
        if (bundle != null) {
            this._WebView.restoreState(bundle);
        } else if (intent.getData() != null) {
            this._WebView.loadUrl(intent.getData().toString());
        } else if (!StringUtils.isNullOrEmpty(this._StartupUrl)) {
            loadUrl(this._StartupUrl, this._IsFeedContentLink);
        }
        this._IsFeedContentLink = intent.getBooleanExtra("IsFeedContentLink", false);
        if (this._IsFeedContentLink) {
            this._WebView.getSettings().setLoadsImagesAutomatically(Configuration.loadContentViewImagesAutomatically());
        } else {
            DownloadEngineNotificationManager.clearNotification();
        }
        registerForContextMenu(this._WebView);
        WebSettings settings = this._WebView.getSettings();
        settings.setUseWideViewPort(this._IsFeedContentLink);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setJavaScriptEnabled(true);
        return inflate;
    }

    protected boolean allowLoadingUrl(WebView webView, String str) {
        WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
        if (copyBackForwardList != null && copyBackForwardList.getCurrentItem() != null && StringUtils.equalsIgnoreCase(str, copyBackForwardList.getCurrentItem().getUrl())) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (str.contains("youtube.com/?v=") || str.contains("youtube.com?v=")) {
                str = str.replace("youtube.com", "youtube.com/watch").replace("/?v=", "?v=");
                parse = Uri.parse(str);
            }
            if (this._IsFeedContentLink) {
                Intent intent = new Intent("android.intent.action.VIEW", parse);
                intent.addCategory("android.intent.category.BROWSABLE");
                try {
                    List<ResolveInfo> queryIntentActivities = getActivity().getPackageManager().queryIntentActivities(intent, 65536);
                    if (queryIntentActivities.size() > 0 && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.android.browser") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.google.android.browser") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.android.chrome") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.amazon.cloud9") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.sec.webbrowserminiapp")) {
                        if (getActivity().startActivityIfNeeded(intent, -1)) {
                            return true;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            webView.loadUrl(str);
            return true;
        } catch (IllegalArgumentException unused2) {
            return false;
        }
    }

    public void loadUrl(String str, boolean z) {
        this._IsFeedContentLink = z;
        if (this._WebView != null) {
            this._WebView.loadUrl(str);
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Attemting to load URL " + str + " while the fragment is not yet created. Ignoring...");
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        this._WebView.saveState(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        this._WebView.onPause();
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        this._WebView.onResume();
        super.onResume();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this._WebView.stopLoading();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._WebView != null) {
            this._WebView.destroy();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        this._WebView.stopLoading();
        if (!this._WebView.canGoBack()) {
            return false;
        }
        this._WebView.goBack();
        return true;
    }

    @Override // android.support.v4.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        int type;
        WebView.HitTestResult hitTestResult = this._WebView.getHitTestResult();
        if (hitTestResult == null || (type = hitTestResult.getType()) == 0 || type == 9) {
            return;
        }
        switch (type) {
            case 7:
            case 8:
                try {
                    this._TitleView = (TextView) LayoutInflater.from(getActivity()).inflate(android.R.layout.browser_link_context_header, (ViewGroup) null);
                    contextMenu.setHeaderView(this._TitleView);
                    this._TitleView.setText("");
                    Message obtainMessage = this._Handler.obtainMessage(102, Integer.MIN_VALUE, 0);
                    obtainMessage.obj = this;
                    this._WebView.requestFocusNodeHref(obtainMessage);
                    contextMenu.add(0, 8, 0, R.string.MENU_browser_copy_link);
                    PackageManager packageManager = getActivity().getPackageManager();
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    if (packageManager.queryIntentActivities(intent, 65536).size() > 0) {
                        contextMenu.add(1, 9, 0, R.string.MENU_browser_share_link);
                    }
                    if (Configuration.useExternalBrowser()) {
                        return;
                    }
                    contextMenu.add(2, 10, 0, R.string.MENU_browser_open_in_external);
                    return;
                } catch (Exception e) {
                    CoreHelper.logException(TAG, "failed to open HtmlView Context menu! Link:" + hitTestResult.getExtra(), e);
                    return;
                }
            default:
                return;
        }
    }

    /* loaded from: classes.dex */
    class WebChrome extends WebChromeClient {
        WebChrome() {
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            if (HtmlViewFragment.this._OwnerListener == null || HtmlViewFragment.this._OwnerListener.getActivityTitle().toString().equals(str)) {
                return;
            }
            HtmlViewFragment.this._OwnerListener.setTitle(str);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (HtmlViewFragment.this._OwnerListener != null) {
                HtmlViewFragment.this._OwnerListener.SetProgress(i);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        Message obtainMessage = this._Handler.obtainMessage(102, menuItem.getItemId(), 0);
        obtainMessage.obj = this;
        this._WebView.requestFocusNodeHref(obtainMessage);
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        if (this._OwnerListener == null || !this._OwnerListener.allowMenus()) {
            return;
        }
        if (this._WebView != null && this._WebView.getProgress() != 100) {
            menu.add(0, 5, 1, R.string.MENU_stop_browser_load).setShowAsAction(0);
        } else {
            menu.add(0, 6, 1, R.string.MENU_browser_refresh).setIcon(R.drawable.ic_action_reload);
        }
        if (this._IsFeedContentLink) {
            menu.add(0, 10, 2, R.string.MENU_browser_open_in_external);
            menu.add(0, 8, 3, R.string.MENU_browser_copy_link);
            menu.add(0, 9, 4, R.string.MENU_browser_share_link);
            menu.add(0, 11, 5, "").setTitle(R.string.MENU_browser_load_images).setCheckable(true).setChecked(Configuration.loadContentViewImagesAutomatically());
        }
        Uri data = getActivity().getIntent().getData();
        if (data == null || !data.toString().endsWith("FeedUpdateLog.htm")) {
            return;
        }
        menu.add(0, 13, 7, R.string.about_dialog_e_mail_support);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 5:
                this._WebView.stopLoading();
                return false;
            case 6:
                this._WebView.reload();
                return false;
            case 7:
            case 12:
            default:
                return false;
            case 8:
                ((ClipboardManager) getActivity().getApplication().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", this._WebView.getUrl()));
                return true;
            case 9:
                Browser.sendString(getActivity(), this._WebView.getUrl());
                return true;
            case 10:
                CommandManagerBase.cmdOpenExternalBrowser(this._WebView.getUrl());
                return true;
            case 11:
                Configuration.setLoadContentViewImagesAutomatically(!Configuration.loadContentViewImagesAutomatically());
                this._WebView.getSettings().setLoadsImagesAutomatically(Configuration.loadContentViewImagesAutomatically());
                this._WebView.reload();
                return true;
            case 13:
                CommandManager.cmdSendEMail(getActivity(), "support@beyondpod.mobi", "BeyondPod feed Update and Download Log", "Attached is " + Configuration.feedUpdateLogFilePath(), Configuration.feedUpdateLogFilePath(), true);
                return true;
        }
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        if (str3 == null || !str3.regionMatches(true, 0, "attachment", 0, 10)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (getActivity().getPackageManager().queryIntentActivities(intent, 65536).size() != 0) {
                try {
                    startActivity(intent);
                    return;
                } catch (ActivityNotFoundException unused) {
                }
            }
        }
        CommandManagerBase.cmdOpenExternalBrowser(str);
    }

    @Override // mobi.beyondpod.ui.views.base.IWebViewOwner
    public void onDoubleTap(float f, float f2, int i) {
        if (i != 5 || this._OwnerListener == null) {
            return;
        }
        this._OwnerListener.requestOwnerActivityClose();
    }
}
