package mobi.beyondpod.ui.core.customtabs;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public class CustomTabActivityHelper implements ServiceConnectionCallback {
    private CustomTabsClient mClient;
    private CustomTabsServiceConnection mConnection;
    private ConnectionCallback mConnectionCallback;
    private CustomTabsSession mCustomTabsSession;

    /* loaded from: classes.dex */
    public interface ConnectionCallback {
        void onCustomTabsConnected();

        void onCustomTabsDisconnected();
    }

    /* loaded from: classes.dex */
    public interface CustomTabFallback {
        void openUri(Context context, Uri uri);
    }

    public static void openCustomTab(Activity activity, CustomTabsIntent customTabsIntent, Uri uri, CustomTabFallback customTabFallback) {
        String packageNameToUse = CustomTabsHelper.getPackageNameToUse(activity);
        if (packageNameToUse != null) {
            customTabsIntent.intent.setPackage(packageNameToUse);
            customTabsIntent.launchUrl(activity, uri);
        } else if (customTabFallback != null) {
            customTabFallback.openUri(activity, uri);
        }
    }

    public void unbindCustomTabsService(Activity activity) {
        if (this.mConnection == null) {
            return;
        }
        activity.unbindService(this.mConnection);
        this.mClient = null;
        this.mCustomTabsSession = null;
        this.mConnection = null;
    }

    public CustomTabsSession getSession() {
        if (this.mClient == null) {
            this.mCustomTabsSession = null;
        } else if (this.mCustomTabsSession == null) {
            this.mCustomTabsSession = this.mClient.newSession(null);
        }
        return this.mCustomTabsSession;
    }

    public void setConnectionCallback(ConnectionCallback connectionCallback) {
        this.mConnectionCallback = connectionCallback;
    }

    public void bindCustomTabsService(Activity activity) {
        String packageNameToUse;
        if (this.mClient == null && (packageNameToUse = CustomTabsHelper.getPackageNameToUse(activity)) != null) {
            this.mConnection = new ServiceConnection(this);
            CustomTabsClient.bindCustomTabsService(activity, packageNameToUse, this.mConnection);
        }
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        CustomTabsSession session;
        if (this.mClient == null || (session = getSession()) == null) {
            return false;
        }
        return session.mayLaunchUrl(uri, bundle, list);
    }

    @Override // mobi.beyondpod.ui.core.customtabs.ServiceConnectionCallback
    public void onServiceConnected(CustomTabsClient customTabsClient) {
        this.mClient = customTabsClient;
        this.mClient.warmup(0L);
        if (this.mConnectionCallback != null) {
            this.mConnectionCallback.onCustomTabsConnected();
        }
    }

    @Override // mobi.beyondpod.ui.core.customtabs.ServiceConnectionCallback
    public void onServiceDisconnected() {
        this.mClient = null;
        this.mCustomTabsSession = null;
        if (this.mConnectionCallback != null) {
            this.mConnectionCallback.onCustomTabsDisconnected();
        }
    }
}
