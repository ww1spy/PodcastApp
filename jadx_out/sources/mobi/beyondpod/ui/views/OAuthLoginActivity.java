package mobi.beyondpod.ui.views;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;

/* loaded from: classes.dex */
public class OAuthLoginActivity extends AppCompatActivity {
    public static final int OAuthActivityResult = 5656;
    AggregatorLoginHelper.OAuthAccountInfo _Account = AggregatorLoginHelper.currentOAuthAccount();
    WebView _WebView;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        supportRequestWindowFeature(2);
        super.onCreate(bundle);
        setContentView(R.layout.oauth_login_activity);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        this._WebView = (WebView) findViewById(R.id.webView);
        this._WebView.setWebViewClient(new OAuthWebViewClient());
        this._WebView.setWebChromeClient(new OAuthWebChromeClient());
        this._WebView.getSettings().setJavaScriptEnabled(true);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this._WebView.loadUrl(this._Account.OAuthEndPoint());
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* loaded from: classes.dex */
    class OAuthWebChromeClient extends WebChromeClient {
        OAuthWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            OAuthLoginActivity.this.setTitle(str);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            OAuthLoginActivity.this.getWindow().setFeatureInt(2, i * 100);
        }
    }

    /* loaded from: classes.dex */
    private class OAuthWebViewClient extends WebViewClient {
        private OAuthWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            AggregatorLoginHelper.OAuthAccountInfo.RedirectResult checkRedirectUrl = OAuthLoginActivity.this._Account.checkRedirectUrl(str2);
            if (checkRedirectUrl.Result == 1) {
                OAuthLoginActivity.this.setResult(-1, new Intent(checkRedirectUrl.AuthCode));
            } else {
                OAuthLoginActivity.this.setResult(0);
            }
            OAuthLoginActivity.this.finish();
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            OAuthLoginActivity.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.OAuthLoginActivity.OAuthWebViewClient.1
                @Override // java.lang.Runnable
                public void run() {
                }
            });
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            OAuthLoginActivity.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.OAuthLoginActivity.OAuthWebViewClient.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            AggregatorLoginHelper.OAuthAccountInfo.RedirectResult checkRedirectUrl = OAuthLoginActivity.this._Account.checkRedirectUrl(str);
            if (checkRedirectUrl.Result == 0) {
                return false;
            }
            if (checkRedirectUrl.Result == 1) {
                OAuthLoginActivity.this.setResult(-1, new Intent(checkRedirectUrl.AuthCode));
            } else {
                OAuthLoginActivity.this.setResult(0);
            }
            OAuthLoginActivity.this.finish();
            return true;
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(24)
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }
    }
}
