package mobi.beyondpod.aggregators;

import android.app.Activity;
import android.net.Uri;
import android.support.v7.media.MediaRouteProviderProtocol;
import java.util.HashMap;
import java.util.Iterator;
import mobi.beyondpod.aggregators.feedly.Feedly;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.RssFeedCache;

/* loaded from: classes.dex */
public abstract class AggregatorLoginHelper {
    public static final int LOGIN_TYPE_OAUTH = 3;
    private static final String TAG = "AggregatorLoginHelper";

    /* loaded from: classes.dex */
    public interface GSimpleResult {
        void failed(Exception exc);

        void success();
    }

    /* loaded from: classes.dex */
    public interface GSyncStatusResult {
        void syncCompleted(boolean z, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface GetAuthTokenResult {
        void failed(Exception exc);

        void success(String str);
    }

    /* loaded from: classes.dex */
    public static class AuthenticationException extends Exception {
        private static final String ERROR_HEADER = "Error";
        private static final String INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN = "Invalid or expired Feedly login! (You can modify your Feedly login in: Add feed > Import Feeds > Import from Feedly)";
        private static final long serialVersionUID = -6829746333153305412L;
        HashMap<String, String> _Contents;

        public AuthenticationException() {
            super(INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN);
            this._Contents = new HashMap<>();
        }

        public AuthenticationException(String str) {
            this();
            if (StringUtils.isNullOrEmpty(str)) {
                return;
            }
            for (String str2 : str.split("\r\n|\r|\n")) {
                String[] split = str2.split("=");
                if (split.length == 2) {
                    this._Contents.put(split[0], split[1]);
                }
            }
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String str = this._Contents.get(ERROR_HEADER);
            if (str != null) {
                if ("BadAuthentication".equals(str)) {
                    return "Invalid username or password.";
                }
                if ("NotVerified".equals(str)) {
                    return "The account email address has not been verified. You will need to access your Google account directly to resolve the issue before logging in using BeyondPod.";
                }
                if ("TermsNotAgreed".equals(str)) {
                    return "Account has not agreed to terms. You will need to access your Google account directly to resolve the issue before logging in using BeyondPod";
                }
                if ("CaptchaRequired".equals(str)) {
                    return "A CAPTCHA is required! Try to loging in to Google Reader using the device browser";
                }
                if ("Unknown".equals(str)) {
                    return "Unknown error! The request contained invalid input or was malformed.";
                }
                if ("AccountDeleted".equals(str)) {
                    return "Your user account has been deleted.";
                }
                if ("ServiceDisabled".equals(str)) {
                    return "The user's access to the Google Reader Service has been disabled. (The user account may still be valid.)";
                }
                if ("ServiceUnavailable".equals(str)) {
                    return "The service is not available; try again later.";
                }
            }
            return super.getMessage();
        }
    }

    /* loaded from: classes.dex */
    public static class AccountInfo {
        protected String _AccountName;
        protected int _AccountType;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this._AccountType != 3 ? "Use   " : "Enter ");
            sb.append(this._AccountName);
            return sb.toString();
        }

        public AccountInfo(int i, String str) {
            this._AccountName = "Email/password";
            this._AccountType = 3;
            this._AccountName = str;
            this._AccountType = i;
        }

        public int getType() {
            return this._AccountType;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class OAuthAccountInfo extends AccountInfo {
        public abstract String OAuthEndPoint();

        public abstract String OAuthScope();

        public abstract String OAuthTokenEndPoint();

        public abstract RedirectResult checkRedirectUrl(String str);

        /* loaded from: classes.dex */
        public static class RedirectResult {
            public static final int RESULT_TYPE_ACCESS_DENIED = -1;
            public static final int RESULT_TYPE_ACCESS_GRANTED = 1;
            public static final int RESULT_TYPE_ACCESS_UNKNOWN = -2;
            public static final int RESULT_TYPE_INVALID_REDIRECT = 0;
            public String AuthCode;
            public String Error;
            public int Result;

            public RedirectResult(int i) {
                this.Result = 0;
                this.Result = i;
            }
        }

        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.AccountInfo
        public String toString() {
            return this._AccountName;
        }

        public OAuthAccountInfo(String str) {
            super(3, str);
        }
    }

    /* loaded from: classes.dex */
    public static class FeedlyOAuthAccountInfo extends OAuthAccountInfo {
        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.OAuthAccountInfo
        public String OAuthTokenEndPoint() {
            return null;
        }

        public FeedlyOAuthAccountInfo() {
            super("Feedly");
        }

        public FeedlyOAuthAccountInfo(String str) {
            super(str);
        }

        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.OAuthAccountInfo
        public String OAuthEndPoint() {
            return Feedly.OAuthEndPoint;
        }

        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.OAuthAccountInfo
        public String OAuthScope() {
            return Feedly.OAuthScope;
        }

        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.OAuthAccountInfo
        public OAuthAccountInfo.RedirectResult checkRedirectUrl(String str) {
            if (StringUtils.isNullOrEmpty(str) || !str.startsWith("http://localhost")) {
                return new OAuthAccountInfo.RedirectResult(0);
            }
            Uri parse = Uri.parse(str);
            String queryParameter = parse.getQueryParameter("code");
            if (!StringUtils.isNullOrEmpty(queryParameter)) {
                OAuthAccountInfo.RedirectResult redirectResult = new OAuthAccountInfo.RedirectResult(1);
                redirectResult.AuthCode = queryParameter;
                return redirectResult;
            }
            String queryParameter2 = parse.getQueryParameter(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
            if (!StringUtils.isNullOrEmpty(queryParameter2)) {
                OAuthAccountInfo.RedirectResult redirectResult2 = new OAuthAccountInfo.RedirectResult(-1);
                redirectResult2.Error = queryParameter2;
                return redirectResult2;
            }
            return new OAuthAccountInfo.RedirectResult(-2);
        }
    }

    protected static AggregatorLoginHelper getInstance() {
        return OAuthLogin.Holder.sInstance;
    }

    public static void getAuthToken(AccountInfo accountInfo, GetAuthTokenResult getAuthTokenResult, Activity activity) {
        OAuthLogin.Holder.sInstance.getAuthTokenInternal(accountInfo, getAuthTokenResult, activity);
    }

    public static void clearAccountToken() {
        OAuthLogin.Holder.sInstance.clearAccountTokenInternal(currentAccount());
    }

    public static AccountInfo currentAccount() {
        return OAuthLogin.DefaultAccount;
    }

    public static OAuthAccountInfo currentOAuthAccount() {
        return OAuthLogin.DefaultAccount;
    }

    public static String blockingGetAuthToken() {
        return OAuthLogin.Holder.sInstance.blockingGetAuthTokenInternal(currentAccount());
    }

    public static void simulateInvalidToken() {
        CoreHelper.writeTraceEntry(TAG, "Invalidating current oAuth token...");
        Configuration.setOAuthAccessToken("AQAAP2B7InQiOjEsInYiOiJwcm9kdWN0aW9uIiwiaSI6IjJhMWY5NDI2LTQzZWQtNDZiZS04YTE0LThhY2Y1ZThiZmM5MSIsImEiOiJCZXlvbmRQb2QiLCJwIjoxLCJlIjoxMzcxNTkyMjA0NTc4fQ==");
    }

    public static boolean isLoggedIn() {
        return isLoggedIn(currentAccount());
    }

    public static boolean isLoggedIn(AccountInfo accountInfo) {
        return OAuthLogin.Holder.sInstance.isCurrentlyLoggedIn();
    }

    public static void clearLogin() {
        CoreHelper.writeTraceEntry(TAG, "Clearing all aggregator login data");
        Configuration.setGReaderAccountName(null);
        Configuration.setGReaderCookie(null);
        Configuration.setGReaderAuthValue(null);
        Configuration.setOAuthAccessToken(null);
        Configuration.setOAuthAccessTokenExpiration(null);
        Configuration.setOAuthUser(null);
        Configuration.setOAuthRefreshToken(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class OAuthLogin extends AggregatorLoginHelper {
        public static OAuthAccountInfo DefaultAccount = new FeedlyOAuthAccountInfo();

        private OAuthLogin() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Holder {
            private static final OAuthLogin sInstance = new OAuthLogin();

            private Holder() {
            }
        }

        boolean isCurrentlyLoggedIn() {
            return !StringUtils.isNullOrEmpty(Configuration.OAuthAccessToken());
        }

        protected void getAuthTokenInternal(AccountInfo accountInfo, final GetAuthTokenResult getAuthTokenResult, Activity activity) {
            try {
                Feedly.logIn(accountInfo._AccountName, new GSimpleResult() { // from class: mobi.beyondpod.aggregators.AggregatorLoginHelper.OAuthLogin.1
                    @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSimpleResult
                    public void success() {
                        if (getAuthTokenResult != null) {
                            getAuthTokenResult.success(Configuration.OAuthAccessToken());
                        }
                    }

                    @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSimpleResult
                    public void failed(Exception exc) {
                        if (getAuthTokenResult != null) {
                            getAuthTokenResult.failed(exc);
                        }
                    }
                });
            } catch (Exception e) {
                if (getAuthTokenResult != null) {
                    getAuthTokenResult.failed(e);
                }
            }
        }

        protected String blockingGetAuthTokenInternal(AccountInfo accountInfo) {
            CoreHelper.writeTraceEntry(AggregatorLoginHelper.TAG, "Requesting OAuth Authentication...");
            return Feedly.blockingGetAuthToken();
        }

        protected void clearAccountTokenInternal(AccountInfo accountInfo) {
            CoreHelper.writeTraceEntry(AggregatorLoginHelper.TAG, "Clearing OAuth token...");
            Configuration.setOAuthAccessToken(null);
            Configuration.setOAuthAccessTokenExpiration(null);
        }
    }

    public static FeedList getAllAggregatorFeeds() {
        FeedList feedList = new FeedList();
        for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
            if (feed.isGReaderFeed() || isCategoryAggregatorFeed(feed)) {
                feedList.add(feed);
            }
        }
        return feedList;
    }

    public static FeedList getAllSpecialAggregatorFeeds() {
        FeedList feedList = new FeedList();
        for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
            if (isCategoryAggregatorFeed(feed)) {
                feedList.add(feed);
            }
        }
        return feedList;
    }

    public static boolean isCategoryAggregatorFeed(Feed feed) {
        return Feedly.isCategoryAggregatorFeed(feed);
    }

    public static int disconnectFromAggregator() {
        Iterator<Feed> it = getAllAggregatorFeeds().iterator();
        int i = 0;
        while (it.hasNext()) {
            Feed next = it.next();
            if (!isCategoryAggregatorFeed(next)) {
                next.setType(0);
                next.setItemFingerprintAlgorithm(-1);
                next.setNumUnreadItems(0);
                next.setLastModifiedDate(null);
                next.setLastServerModifiedDate(null);
                next.setLastItemID(null);
                next.setFeedImageUrl(null);
                RssFeedCache.deleteFeedCacheFor(next);
                i++;
            }
        }
        clearLogin();
        ItemStateHistory.purgeAllGoogleReaderItems();
        ItemStateHistory.saveHistorySync();
        FeedRepository.saveRepositoryAsync();
        return i;
    }

    public static Uri getFeedUri(Feed feed) {
        return Feedly.getFeedUri(feed);
    }

    public static boolean syncItemStatus(GSyncStatusResult gSyncStatusResult) throws Exception {
        return Feedly.syncItemStatus(gSyncStatusResult);
    }

    public static boolean isSyncing() {
        return Feedly.isSyncing();
    }

    public static void stopSyncing() {
        Feedly.stopSyncing();
    }

    public static void addSubscription(Feed feed, GSimpleResult gSimpleResult) throws Exception {
        Feedly.addSubscription(feed, gSimpleResult);
    }
}
