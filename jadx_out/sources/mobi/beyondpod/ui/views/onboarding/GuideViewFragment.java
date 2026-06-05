package mobi.beyondpod.ui.views.onboarding;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public final class GuideViewFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";
    private String _PageUrl;

    public static GuideViewFragment newInstance(String str) {
        GuideViewFragment guideViewFragment = new GuideViewFragment();
        guideViewFragment._PageUrl = str;
        return guideViewFragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null || !bundle.containsKey(KEY_CONTENT)) {
            return;
        }
        this._PageUrl = bundle.getString(KEY_CONTENT);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        WebView webView = (WebView) layoutInflater.inflate(R.layout.guided_tour_fragment, (ViewGroup) null).findViewById(R.id.webView);
        WebSettings settings = webView.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        webView.setScrollBarStyle(0);
        webView.setWebViewClient(new WebViewClient() { // from class: mobi.beyondpod.ui.views.onboarding.GuideViewFragment.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                CommandManager.cmdStartHtmlViewActivity(Uri.parse(str), "", false);
                return true;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(24)
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                CommandManager.cmdStartHtmlViewActivity(webResourceRequest.getUrl(), "", false);
                return true;
            }
        });
        webView.getSettings().setLoadsImagesAutomatically(true);
        webView.loadUrl(this._PageUrl);
        return webView;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CONTENT, this._PageUrl);
    }
}
