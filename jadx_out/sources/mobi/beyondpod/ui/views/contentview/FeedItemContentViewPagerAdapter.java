package mobi.beyondpod.ui.views.contentview;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.htmlbuilder.FeedHtmlContentProvider;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.base.WebViewEx;

/* loaded from: classes.dex */
public class FeedItemContentViewPagerAdapter extends PagerAdapter {
    private static final String TAG = "FeedItemContentViewPagerAdapter";
    private static final String TITLE_TAG = "@@@@@";
    private FeedItemContentViewPagerBase _Owner;
    private ArrayList<WebView> _RecycledWebViews = new ArrayList<>();
    private Bundle _SavedInstanceState;

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return view == obj;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // android.support.v4.view.PagerAdapter
    public Parcelable saveState() {
        return null;
    }

    public FeedItemContentViewPagerAdapter(FeedItemContentViewPagerBase feedItemContentViewPagerBase, Bundle bundle) {
        this._SavedInstanceState = null;
        this._Owner = feedItemContentViewPagerBase;
        this._SavedInstanceState = bundle;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this._Owner.getDataSourceCount();
    }

    @Override // android.support.v4.view.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        WebView webView = getWebView();
        loadItemData(webView, this._Owner.getDataSource().getItemAtPosition(i));
        viewGroup.addView(webView, 0);
        return webView;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        viewGroup.removeView((View) obj);
        putWebView((WebView) obj);
    }

    private WebView getWebView() {
        if (this._RecycledWebViews.size() > 0) {
            WebView webView = this._RecycledWebViews.get(0);
            webView.setScrollX(0);
            webView.setScrollY(0);
            this._RecycledWebViews.remove(0);
            webView.onResume();
            return webView;
        }
        return createWebView();
    }

    private void putWebView(WebView webView) {
        webView.onPause();
        webView.loadUrl("about:blank");
        webView.setTag(null);
        this._RecycledWebViews.add(webView);
    }

    private WebViewEx createWebView() {
        WebViewEx webViewEx = new WebViewEx(this._Owner);
        webViewEx.initialize(this._Owner, Configuration.allowMarginNavigationInFeedItemContentDialog());
        this._Owner.registerForContextMenu(webViewEx);
        webViewEx.setWebChromeClient(new WebChrome());
        WebSettings settings = webViewEx.getSettings();
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setUseWideViewPort(false);
        webViewEx.setScrollBarStyle(0);
        Integer contentThemeBackgroundColor = Configuration.contentThemeBackgroundColor();
        if (contentThemeBackgroundColor != null) {
            webViewEx.setBackgroundColor(contentThemeBackgroundColor.intValue());
        }
        webViewEx.setWebViewClient(new WebViewClient() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerAdapter.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                boolean z;
                if (StringUtils.isNullOrEmpty(str)) {
                    return true;
                }
                int indexOf = str.indexOf(FeedItemContentViewPagerAdapter.TITLE_TAG);
                if (indexOf >= 0) {
                    str = str.substring(indexOf + FeedItemContentViewPagerAdapter.TITLE_TAG.length());
                    z = true;
                } else {
                    z = false;
                }
                if (Configuration.useExternalBrowser()) {
                    CommandManagerBase.cmdOpenExternalBrowser(str);
                    return true;
                }
                if (z) {
                    FeedItemContentViewPagerAdapter.this._Owner.openItemContentLink(Uri.parse(str));
                    return true;
                }
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
                    Intent intent = new Intent("android.intent.action.VIEW", parse);
                    intent.addCategory("android.intent.category.BROWSABLE");
                    try {
                        List<ResolveInfo> queryIntentActivities = FeedItemContentViewPagerAdapter.this._Owner.getPackageManager().queryIntentActivities(intent, 65536);
                        if (queryIntentActivities.size() > 0 && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.android.browser") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.google.android.browser") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.android.chrome") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.amazon.cloud9") && !queryIntentActivities.get(0).activityInfo.packageName.equals("com.sec.webbrowserminiapp")) {
                            if (FeedItemContentViewPagerAdapter.this._Owner.startActivityIfNeeded(intent, -1)) {
                                return true;
                            }
                        }
                    } catch (ActivityNotFoundException unused) {
                    }
                    return FeedItemContentViewPagerAdapter.this._Owner.openItemContentLink(Uri.parse(str));
                } catch (IllegalArgumentException unused2) {
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(24)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
            }

            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                if (str == null || !str.startsWith(Configuration.beyondPodContentUrl())) {
                    return;
                }
                webView.clearHistory();
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                CoreHelper.writeTraceEntry(FeedItemContentViewPagerAdapter.TAG, "------ Page Error: " + str + " at " + str2);
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
            }
        });
        webViewEx.setDownloadListener(new DownloadListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerAdapter.2
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (str3 == null || !str3.regionMatches(true, 0, "attachment", 0, 10)) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse(str), str4);
                    if (FeedItemContentViewPagerAdapter.this._Owner.getPackageManager().resolveActivity(intent, 65536) != null) {
                        try {
                            FeedItemContentViewPagerAdapter.this._Owner.startActivity(intent);
                            return;
                        } catch (ActivityNotFoundException e) {
                            CoreHelper.logException(FeedItemContentViewPagerAdapter.TAG, "Activity not found for " + str4 + " over " + Uri.parse(str).getScheme(), e);
                        }
                    }
                }
                CommandManagerBase.cmdOpenExternalBrowser(str);
            }
        });
        return webViewEx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WebChrome extends WebChromeClient {
        WebChrome() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            FeedItemContentViewPagerAdapter.this._Owner.onWebPageProgress(webView, i);
        }
    }

    private void loadItemData(WebView webView, RssFeedItem rssFeedItem) {
        String string;
        if (rssFeedItem != null) {
            webView.setTag(rssFeedItem);
            if (webView != null) {
                if (this._SavedInstanceState != null && (string = this._SavedInstanceState.getString(FeedSource.CURRENT_ITEM_TAG)) != null && string.equals(rssFeedItem.itemID())) {
                    webView.restoreState(this._SavedInstanceState);
                    this._SavedInstanceState = null;
                } else {
                    loadItemContent(webView, rssFeedItem);
                }
            }
        }
    }

    private void loadItemContent(WebView webView, RssFeedItem rssFeedItem) {
        if (rssFeedItem.isMockItem().booleanValue()) {
            webView.loadDataWithBaseURL(rssFeedItem.Link, FeedHtmlContentProvider.constructEpisodeDocument(rssFeedItem), "text/html", "utf-8", null);
        } else {
            webView.loadDataWithBaseURL(rssFeedItem.Link, FeedHtmlContentProvider.constructItemDocument(rssFeedItem, false), "text/html", "utf-8", null);
        }
    }

    public void reloadContent(WebView webView) {
        Object tag = webView.getTag();
        if (tag != null) {
            loadItemContent(webView, (RssFeedItem) tag);
        }
    }

    public List<Track> generatePlaylist(Track track) {
        return this._Owner.getDataSource().generatePlaylistStartingFrom(track);
    }
}
