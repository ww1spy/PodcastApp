package mobi.beyondpod.downloadengine;

import android.net.Uri;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.NetworkCredential;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.ui.views.base.BPMediaController;

/* loaded from: classes.dex */
public class DownloadAgent implements Runnable {
    private static final String TAG = "DownloadAgent";
    public static final int UPDATE_TYPE_FeedUpdate = 0;
    public static final int UPDATE_TYPE_PodcastDownload = 1;
    private String _ContentDisposition;
    private NetworkCredential _Credentials;
    private final File _Destination;
    private DownloadListener _DownloadListener;
    private volatile boolean _DownloadThreadIsDownloading;
    private IHttpClient _HttpClient;
    private String _RequestCookie;
    private String _ResponseCookie;
    private URI _Source;
    private DownloadStatistics _Statistics;
    private boolean _StopDownload;
    private String _UrlUserInfo;
    private static final String PODCAST_DOWNLOAD_MOBILE = CoreHelper.loadResourceString(R.string.download_agent_mobile_connections_not_allowed);
    private static final String PODCAST_WIFI_ALLOWED = CoreHelper.loadResourceString(R.string.download_agent_wifi_allowed);
    private static final String BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED = CoreHelper.loadResourceString(R.string.download_agent_both_mobile_and_wifi_data_connections_are_allowed);
    private static final String UNABLE_TO_ESTABLISH_INTERNET_CONNECTION = CoreHelper.loadResourceString(R.string.download_agent_unable_to_establish_internet_connection);
    private static final String INSUFFICIENT_DISK_SPACE = CoreHelper.loadResourceString(R.string.download_agent_insufficient_disk_space_to_complete_the_download_required);
    private boolean _AllowResume = true;
    private Thread _DownloadThread = null;
    private Date _IgnoreIfNotModifiedSinceDate = null;
    private Long _IgnoreIfSize = null;
    private Long _ExpectedSize = null;
    private FileOutputStream _LocalStream = null;
    private Long _ResourceContentLength = null;
    private Date _ResourceLastModified = null;
    private long _LastWakeLock = 0;
    private long _LastConnectionCheckTime = 0;
    private InputStream _WebResponseStream = null;
    private String _UserAgent = null;
    private boolean _AllowRedirects = true;
    private boolean _AllowMobileDataUse = false;
    private boolean _MustRequestReaderAuthToken = false;
    private int _UpdateType = 0;
    private ArrayList<RequestHeader> _extraHeaders = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface DownloadListener {
        void onDownloadCompleted(DownloadAgent downloadAgent, boolean z);

        void onDownloadError(DownloadAgent downloadAgent, Exception exc);

        void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2);

        void onDownloadStarted(DownloadAgent downloadAgent);

        void onDownloadTerminated(DownloadAgent downloadAgent);
    }

    /* loaded from: classes.dex */
    public static class RequestHeader {
        public String name;
        public String value;

        public RequestHeader(String str, String str2) {
            this.name = str;
            this.value = str2;
        }
    }

    public void setAllowRedirects(boolean z) {
        this._AllowRedirects = z;
    }

    public void setUpdateType(int i) {
        this._UpdateType = i;
    }

    public void setAllowMobileDataUse(boolean z) {
        this._AllowMobileDataUse = z;
    }

    public void setMustRequestReaderToken(boolean z) {
        this._MustRequestReaderAuthToken = z;
    }

    public void setUserAgent(String str) {
        this._UserAgent = str;
    }

    public void setRequestCookie(String str) {
        this._RequestCookie = str;
    }

    public void addExtraHeader(String str, String str2) {
        this._extraHeaders.add(new RequestHeader(str, str2));
    }

    public String responseCookie() {
        return this._ResponseCookie;
    }

    public File destination() {
        return this._Destination;
    }

    public DownloadAgent(Uri uri, File file, NetworkCredential networkCredential) {
        this._Source = null;
        this._Credentials = null;
        this._UrlUserInfo = null;
        if (uri == null) {
            throw new IllegalArgumentException("Download agent was created with an empty URL!");
        }
        this._Destination = file;
        URI safeCreateURI = CoreHelper.safeCreateURI(uri.toString().trim());
        if (safeCreateURI != null) {
            this._UrlUserInfo = safeCreateURI.getUserInfo();
            if (!StringUtils.isNullOrEmpty(this._UrlUserInfo)) {
                this._Source = CoreHelper.safeCreateURI(safeCreateURI.toString().replace(safeCreateURI.getRawUserInfo() + "@", ""));
            } else {
                this._Source = safeCreateURI;
            }
            this._Credentials = networkCredential;
            this._HttpClient = HttpClientFactory.createClient(this._Credentials, this._Source);
        }
    }

    public void startDownload() throws Exception {
        if (this._DownloadThread != null) {
            throw new Exception("You must use a new instance of this class for each new download!");
        }
        if (this._DownloadThreadIsDownloading) {
            throw new Exception("Download is already in progress!");
        }
        if (BeyondPodApplication.isRuntimeShuttingDown().booleanValue()) {
            return;
        }
        this._DownloadThreadIsDownloading = true;
        this._DownloadThread = new Thread(this);
        this._DownloadThread.setName("Download thread: " + this._Source);
        this._DownloadThread.setPriority(1);
        try {
            this._DownloadThread.start();
        } catch (InternalError unused) {
            CoreHelper.writeLogEntry(DownloadAgent.class.getName(), "Cannot start download thread. Runtime is shutting down.");
        }
    }

    public void stop() {
        CoreHelper.writeTraceEntry(TAG, ">> Received stop command to terminate the Download of: " + this._Source);
        if (!isDownloading()) {
            CoreHelper.writeTraceEntry(TAG, ">> Download is already stopped!");
            return;
        }
        CoreHelper.writeTraceEntry(TAG, ">> Download is in progress! Waiting for the download thread to stop!");
        this._StopDownload = true;
        if (this._HttpClient != null) {
            CoreHelper.writeTraceEntry(TAG, ">> Awaiting Response! Canceling the request...");
            this._HttpClient.abort();
        }
        this._DownloadThreadIsDownloading = false;
        if (this._DownloadListener != null) {
            this._DownloadListener.onDownloadTerminated(this);
        }
        CoreHelper.writeTraceEntry(TAG, ">> stop Download operation complete!");
    }

    public Long resourceContentLength() {
        return this._ResourceContentLength;
    }

    public Date lastModifiedDate() {
        return this._ResourceLastModified;
    }

    public boolean isDownloading() {
        return this._DownloadThreadIsDownloading;
    }

    public boolean allowResume() {
        return this._AllowResume;
    }

    public void setAllowResume(boolean z) {
        this._AllowResume = z;
    }

    public Long ignoreIfSize() {
        return this._IgnoreIfSize;
    }

    public void setIgnoreIfSize(Long l) {
        this._IgnoreIfSize = l;
    }

    public Date ignoreIfNotModifiedSinceDate() {
        return this._IgnoreIfNotModifiedSinceDate;
    }

    public void setIgnoreIfNotModifiedSinceDate(Date date) {
        this._IgnoreIfNotModifiedSinceDate = date;
    }

    public DownloadStatistics statistics() {
        return this._Statistics;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        String str;
        int read;
        Object valueOf;
        if (BeyondPodApplication.isRuntimeShuttingDown().booleanValue()) {
            CoreHelper.writeTraceEntry(TAG, "WARN: Not downloading " + this._Source + " since the runtime is shutting down.");
            return;
        }
        Process.setThreadPriority(10);
        this._StopDownload = false;
        this._Statistics = new DownloadStatistics();
        boolean z = true;
        try {
            long length = (allowResume() && this._Destination.exists()) ? this._Destination.length() : 0L;
            statistics().startPosition = length;
            statistics().url = this._Source.toString();
            statistics().skipSize = ignoreIfSize();
            statistics().skipDate = ignoreIfNotModifiedSinceDate();
            this._ResourceLastModified = null;
            if (this._DownloadListener != null) {
                this._DownloadListener.onDownloadStarted(this);
            }
            CoreHelper.writeTraceEntry(TAG, "");
            CoreHelper.writeTraceEntry(TAG, ">> -------------- Download of " + this._Source + " started from pos: " + length + "! --------------");
            waitForInternetConnection();
            if (this._StopDownload) {
                CoreHelper.writeTraceEntry(TAG, ">> Wait for Connection Canceled!");
                statistics().terminated = true;
                doCleanup();
                return;
            }
            int i2 = (int) length;
            this._HttpClient.httpGet(this._Source.toString());
            if (this._Credentials == null && !StringUtils.isNullOrEmpty(this._UrlUserInfo)) {
                HttpClientHeaders.setUserInfoTo(this._HttpClient, this._UrlUserInfo);
            }
            HttpClientHeaders.setUserAgentTo(this._HttpClient, this._UserAgent);
            HttpClientHeaders.setAcceptTo(this._HttpClient, "*/*");
            if (!StringUtils.isNullOrEmpty(this._RequestCookie)) {
                HttpClientHeaders.setRequestCookie(this._HttpClient, this._RequestCookie);
            }
            if (this._MustRequestReaderAuthToken) {
                CoreHelper.writeTraceEntry(TAG, "Requesting Aggregator authentication...");
                String blockingGetAuthToken = AggregatorLoginHelper.blockingGetAuthToken();
                if (StringUtils.isNullOrEmpty(blockingGetAuthToken) && this._Source.getHost().toLowerCase(Locale.ROOT).contains("feedly.com")) {
                    CoreHelper.writeTraceEntry(TAG, "Not logged in!");
                    statistics().finalDownloadUrl = this._Source;
                    throw new AggregatorLoginHelper.AuthenticationException();
                }
                HttpClientHeaders.setAuthorizationTo(this._HttpClient, blockingGetAuthToken);
                CoreHelper.writeTraceEntry(TAG, "Reader authentication granted!");
            }
            if (this._extraHeaders.size() > 0) {
                Iterator<RequestHeader> it = this._extraHeaders.iterator();
                while (it.hasNext()) {
                    RequestHeader next = it.next();
                    this._HttpClient.setHeader(next.name, next.value);
                }
            }
            if (ignoreIfNotModifiedSinceDate() != null) {
                HttpClientHeaders.setIfModifiedSinceTo(this._HttpClient, ignoreIfNotModifiedSinceDate());
            }
            if (i2 > 0) {
                HttpClientHeaders.setRangeTo(this._HttpClient, i2, this._ExpectedSize);
                i = 206;
            } else {
                i = 200;
            }
            statistics().eventDate = new Date();
            long currentTimeMillis = System.currentTimeMillis();
            CoreHelper.writeTraceEntry(TAG, ">> Sending Request...");
            CoreHelper.keepDeviceAwake();
            this._HttpClient.execute();
            CoreHelper.keepDeviceAwake();
            long currentTimeMillis2 = System.currentTimeMillis();
            DownloadStatistics statistics = statistics();
            long j = currentTimeMillis2 - currentTimeMillis;
            statistics().timeToFirstByte = j;
            statistics.downloadTime = j;
            CoreHelper.writeTraceEntry(TAG, ">> Got Response... status Code: " + this._HttpClient.getStatusCode() + " (" + this._HttpClient.getReasonPhrase() + "), expected code: " + i);
            int statusCode = this._HttpClient.getStatusCode();
            if (statusCode != i && (this._AllowRedirects || (statusCode != 301 && statusCode != 302))) {
                if ((statusCode == 200 && i == 206) || statusCode == 416) {
                    if (this._Destination.exists()) {
                        CoreHelper.writeTraceEntry(TAG, ">> Server does not support partial downloads! Deleting the partially downloaded file and Retrying...");
                        this._Destination.delete();
                    }
                    throw new WebException(IHttpClient.SC_REQUESTED_RANGE_NOT_SATISFIABLE, "Server does not support partial downloads!");
                }
                if (statusCode == 401 && ((this._Source.getHost().toLowerCase(Locale.ROOT).contains("google.com") || this._Source.getHost().toLowerCase(Locale.ROOT).contains("feedly.com")) && !this._Source.getHost().toLowerCase(Locale.ROOT).startsWith("feedproxy"))) {
                    CoreHelper.writeTraceEntry(TAG, ">> Request failed! failed to authenticate against aggregator service!");
                    throw new AggregatorLoginHelper.AuthenticationException();
                }
                CoreHelper.writeTraceEntry(TAG, ">> Request failed! status Code: " + this._HttpClient.getStatusCode() + " (" + this._HttpClient.getReasonPhrase() + ")");
                throw new WebException(this._HttpClient.getStatusCode(), this._HttpClient.getReasonPhrase());
            }
            this._ResponseCookie = HttpClientHeaders.getResponseCookie(this._HttpClient);
            this._ContentDisposition = HttpClientHeaders.getContentDisposition(this._HttpClient);
            this._ResourceContentLength = HttpClientHeaders.getContentLengthFrom(this._HttpClient);
            this._ResourceLastModified = HttpClientHeaders.getLastModifiedFrom(this._HttpClient);
            long max = Math.max(this._ResourceContentLength == null ? 0L : this._ResourceContentLength.longValue(), 2048000L);
            if (!FlashStorageLocation.checkIfSpaceIsAvailable(this._Destination.getParent(), max)) {
                if (!FileUtils.exists(this._Destination.getParent())) {
                    throw new CoreHelper.InsuficientStorageSpaceException("Invalid download folder: " + this._Destination.getParent());
                }
                throw new CoreHelper.InsuficientStorageSpaceException(INSUFFICIENT_DISK_SPACE + " " + CoreHelper.getFileLengthAsString(Long.valueOf(max)));
            }
            statistics().totalSize = this._ResourceContentLength;
            statistics().contentLastModifyDate = this._ResourceLastModified;
            statistics().responseCookie = this._ResponseCookie;
            statistics().contentDisposition = this._ContentDisposition;
            statistics().contentEncoding = HttpClientHeaders.getContentEncodingFrom(this._HttpClient);
            statistics().finalDownloadUrl = this._HttpClient.finalDownloadUrl();
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(">> Downloading Response Stream... ");
            if (this._ContentDisposition != null) {
                str = " for file: " + this._ContentDisposition;
            } else {
                str = "";
            }
            sb.append(str);
            CoreHelper.writeTraceEntry(str2, sb.toString());
            this._WebResponseStream = this._HttpClient.getUnzippedContent();
            this._LocalStream = new FileOutputStream(this._Destination, allowResume() && this._Destination.exists() && this._Destination.isFile());
            byte[] bArr = new byte[32768];
            long j2 = i2;
            long longValue = (this._ResourceContentLength == null ? 0L : this._ResourceContentLength.longValue()) + j2;
            long j3 = j2;
            while (true) {
                if (this._StopDownload || (read = this._WebResponseStream.read(bArr)) <= 0) {
                    break;
                }
                if (Thread.interrupted()) {
                    CoreHelper.writeTraceEntry(TAG, ">> The download thread was aborted when downloading: " + this._Source);
                    this._HttpClient.abort();
                    this._StopDownload = z;
                    break;
                }
                long j4 = j2 + read;
                if (Configuration.debugDownloadProgress()) {
                    if (j4 - j3 > (longValue == 0 ? 1000000L : longValue / 100)) {
                        String str3 = TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(">> Downloading content... ");
                        if (longValue == 0) {
                            valueOf = ((int) (((float) j4) / 1024.0d)) + " K";
                        } else {
                            valueOf = Integer.valueOf((int) ((((float) j4) / ((float) longValue)) * 100.0d));
                        }
                        sb2.append(valueOf);
                        sb2.append(" %");
                        CoreHelper.writeTraceEntry(str3, sb2.toString());
                        CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
                        j3 = j4;
                    }
                }
                this._LocalStream.write(bArr, 0, read);
                onDownloadProgress(j4, longValue);
                if (isUnAuthorizedMobileDataConnection()) {
                    CoreHelper.writeLogEntryInProduction(TAG, "!!!!!! Detected unauthorized mobile connection! Aborting Download!");
                    throw new CoreHelper.UnableToEstablishNetworkConnectionException("Update or Download was interrupted because mobile connections are NOT allowed, and the WiFi connection has disconnected.");
                }
                j2 = j4;
                z = true;
            }
            statistics().downloadedSize = Long.valueOf(j2);
            doCleanup();
            if (!this._StopDownload) {
                statistics().downloadTime = System.currentTimeMillis() - currentTimeMillis2;
                if (statistics().indicatesReaderLoginFailure()) {
                    CoreHelper.writeTraceEntry(TAG, ">> Download completed, but there was a Aggregator Authentication Error!");
                    onDownloadError(new AggregatorLoginHelper.AuthenticationException());
                    return;
                }
                statistics().completedNormally = true;
                CoreHelper.writeTraceEntry(TAG, ">> Download completed!");
                if (this._ResourceContentLength == null) {
                    onDownloadProgress(j2, j2);
                }
                onDownloadCompleted(true);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, ">> Download Canceled!");
            statistics().terminated = true;
        } catch (OutOfMemoryError e) {
            CoreHelper.writeTraceEntry(TAG, ">> Error downloading: " + this._Source + ". reason: " + e.getMessage());
            doCleanup();
            onDownloadError(new Exception(e));
        } catch (WebException e2) {
            if (e2.StatusCode == 304) {
                statistics().downloadSkipped = true;
                CoreHelper.writeTraceEntry(TAG, ">> Download skipped!");
                doCleanup();
                onDownloadProgress(this._ResourceContentLength == null ? 0L : this._ResourceContentLength.longValue(), this._ResourceContentLength == null ? 0L : this._ResourceContentLength.longValue());
                onDownloadCompleted(false);
                return;
            }
            if (Configuration.debugDownloadProgress()) {
                CoreHelper.vibrate(CoreHelper.VIBRATE_LONG);
            }
            doCleanup();
            onDownloadError(e2);
        } catch (Exception e3) {
            CoreHelper.writeTraceEntry(TAG, ">> Error downloading: " + this._Source + ". reason: " + CoreHelper.extractExceptionMessages(e3));
            if (Configuration.debugDownloadProgress()) {
                CoreHelper.vibrate(CoreHelper.VIBRATE_LONG);
                CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
                CoreHelper.vibrate(CoreHelper.VIBRATE_LONG);
            }
            doCleanup();
            onDownloadError(e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void doCleanup() {
        String name = this._DownloadThread == null ? "sync request" : this._DownloadThread.getName();
        CoreHelper.writeTraceEntry(TAG, ">> Cleanup Started... " + name);
        CoreHelper.keepDeviceAwake();
        this._DownloadThreadIsDownloading = false;
        try {
            try {
                if (this._LocalStream != null) {
                    CoreHelper.sync(this._LocalStream);
                    this._LocalStream.close();
                }
                if (this._HttpClient != null) {
                    this._HttpClient.abort();
                    if (this._WebResponseStream != null) {
                        this._WebResponseStream.close();
                    }
                    this._HttpClient.close();
                }
            } catch (Exception e) {
                CoreHelper.writeTraceEntry(TAG, ">> Unable to close the HTTP stream. reason: " + e.getMessage() + "---" + name);
            }
            CoreHelper.writeTraceEntry(TAG, ">> Cleanup Complete..." + name);
        } finally {
            this._WebResponseStream = null;
            this._LocalStream = null;
            this._HttpClient = null;
        }
    }

    private void onDownloadError(Exception exc) {
        CoreHelper.writeLogEntryInProduction(TAG, "===> Download Agent Exception! reason:" + CoreHelper.extractExceptionMessages(exc) + ", type:" + exc.getClass().getSimpleName());
        if (this._StopDownload) {
            CoreHelper.writeLogEntryInProduction(TAG, "===> Download Exception was received after manual download termination. Ignoring...");
            return;
        }
        statistics().lastException = exc;
        if (this._DownloadListener != null) {
            this._DownloadListener.onDownloadError(this, exc);
        }
    }

    private void onDownloadProgress(long j, long j2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this._LastWakeLock > BPMediaController.TOOLBAR_TIMEOUT_SHORT) {
            this._LastWakeLock = currentTimeMillis;
            CoreHelper.keepDeviceAwake();
        }
        if (this._StopDownload || this._DownloadListener == null) {
            return;
        }
        this._DownloadListener.onDownloadProgress(this, j, (j2 <= 0 || j <= j2) ? j2 : j);
    }

    private void onDownloadCompleted(boolean z) {
        this._DownloadThreadIsDownloading = false;
        if (this._DownloadListener != null) {
            this._DownloadListener.onDownloadCompleted(this, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006b, code lost:
    
        mobi.beyondpod.rsscore.Configuration.setUnableToEstablishWiFiConnectionInThisSession(true);
        r0 = mobi.beyondpod.downloadengine.DownloadAgent.UNABLE_TO_ESTABLISH_INTERNET_CONNECTION;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0075, code lost:
    
        if (allowMobileDataConnectionsForThisSession() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0077, code lost:
    
        r0 = r0 + mobi.beyondpod.downloadengine.DownloadAgent.BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b6, code lost:
    
        if (allowMobileDataConnectionsForThisSession() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bc, code lost:
    
        if (allowMobileDataConnectionsForThisSession() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c6, code lost:
    
        if (mobi.beyondpod.rsscore.helpers.CoreHelper.getDeviceNetworkConnection().isConnectedToNetwork() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cd, code lost:
    
        throw new mobi.beyondpod.rsscore.helpers.CoreHelper.UnableToEstablishNetworkConnectionException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008d, code lost:
    
        if (enclosureDownloadMustUseWiFi() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
    
        r0 = r0 + mobi.beyondpod.downloadengine.DownloadAgent.PODCAST_WIFI_ALLOWED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a1, code lost:
    
        r0 = r0 + mobi.beyondpod.downloadengine.DownloadAgent.PODCAST_DOWNLOAD_MOBILE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void waitForInternetConnection() throws mobi.beyondpod.rsscore.helpers.CoreHelper.UnableToEstablishNetworkConnectionException {
        /*
            r5 = this;
            boolean r0 = mobi.beyondpod.rsscore.Configuration.enableQuickNetworkCheck()
            r1 = 7
            if (r0 == 0) goto L27
            boolean r0 = r5.allowMobileDataConnectionsForThisSession()
            if (r0 != 0) goto L27
            boolean r0 = mobi.beyondpod.rsscore.Configuration.turnWiFiDuringUpdate()
            if (r0 != 0) goto L27
            mobi.beyondpod.rsscore.helpers.CoreHelper$DeviceNetworkConnection r0 = mobi.beyondpod.rsscore.helpers.CoreHelper.getDeviceNetworkConnection()
            boolean r0 = r0.isConnectionCellular()
            if (r0 == 0) goto L27
            r0 = 8
            java.lang.String r2 = mobi.beyondpod.downloadengine.DownloadAgent.TAG
            java.lang.String r3 = ">> Waiting for internet connection was ignored!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntryInProduction(r2, r3)
            goto L69
        L27:
            r0 = 0
        L28:
            boolean r2 = r5._StopDownload
            if (r2 != 0) goto L69
            boolean r2 = r5.hasNetworkConnection()
            if (r2 != 0) goto L69
            if (r0 > r1) goto L69
            mobi.beyondpod.rsscore.helpers.CoreHelper.keepDeviceAwake()
            java.lang.String r2 = mobi.beyondpod.downloadengine.DownloadAgent.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = ">> Waiting for internet connection ... "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r4 = " (Available Connections: "
            r3.append(r4)
            mobi.beyondpod.rsscore.helpers.CoreHelper$DeviceNetworkConnection r4 = mobi.beyondpod.rsscore.helpers.CoreHelper.getDeviceNetworkConnection()
            java.lang.String r4 = r4.extraInfo()
            r3.append(r4)
            java.lang.String r4 = ")"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntryInProduction(r2, r3)
            r2 = 5
            mobi.beyondpod.rsscore.helpers.CoreHelper.nap(r2)
            int r0 = r0 + 1
            goto L28
        L69:
            if (r0 <= r1) goto Lce
            r0 = 1
            mobi.beyondpod.rsscore.Configuration.setUnableToEstablishWiFiConnectionInThisSession(r0)
            java.lang.String r0 = mobi.beyondpod.downloadengine.DownloadAgent.UNABLE_TO_ESTABLISH_INTERNET_CONNECTION
            boolean r1 = r5.allowMobileDataConnectionsForThisSession()
            if (r1 == 0) goto L89
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = mobi.beyondpod.downloadengine.DownloadAgent.BOTH_MOBILE_AND_WI_FI_DATA_CONNECTIONS_ARE_ALLOWED
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            goto Lb2
        L89:
            boolean r1 = r5.enclosureDownloadMustUseWiFi()
            if (r1 == 0) goto La1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = mobi.beyondpod.downloadengine.DownloadAgent.PODCAST_WIFI_ALLOWED
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            goto Lb2
        La1:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = mobi.beyondpod.downloadengine.DownloadAgent.PODCAST_DOWNLOAD_MOBILE
            r1.append(r0)
            java.lang.String r0 = r1.toString()
        Lb2:
            boolean r1 = r5.allowMobileDataConnectionsForThisSession()
            if (r1 == 0) goto Lc8
            boolean r1 = r5.allowMobileDataConnectionsForThisSession()
            if (r1 == 0) goto Lce
            mobi.beyondpod.rsscore.helpers.CoreHelper$DeviceNetworkConnection r1 = mobi.beyondpod.rsscore.helpers.CoreHelper.getDeviceNetworkConnection()
            boolean r1 = r1.isConnectedToNetwork()
            if (r1 != 0) goto Lce
        Lc8:
            mobi.beyondpod.rsscore.helpers.CoreHelper$UnableToEstablishNetworkConnectionException r1 = new mobi.beyondpod.rsscore.helpers.CoreHelper$UnableToEstablishNetworkConnectionException
            r1.<init>(r0)
            throw r1
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.DownloadAgent.waitForInternetConnection():void");
    }

    private boolean hasNetworkConnection() {
        if (allowMobileDataConnectionsForThisSession() && (!Configuration.turnWiFiDuringUpdate() || Configuration.unableToEstablishWiFiConnectionInThisSession())) {
            return true;
        }
        CoreHelper.DeviceNetworkConnection deviceNetworkConnection = CoreHelper.getDeviceNetworkConnection();
        if (!deviceNetworkConnection.isConnectedToNetwork()) {
            return false;
        }
        if (allowMobileDataConnectionsForThisSession()) {
            return true;
        }
        return deviceNetworkConnection.isConnectionWiFi();
    }

    private boolean allowMobileDataConnectionsForThisSession() {
        return (this._AllowMobileDataUse || Configuration.isCellularConnectionAllowed()) && !enclosureDownloadMustUseWiFi();
    }

    private boolean enclosureDownloadMustUseWiFi() {
        return this._UpdateType == 1 && Configuration.downloadEnclosuresOnWiFiOnly() && !this._AllowMobileDataUse;
    }

    private boolean isUnAuthorizedMobileDataConnection() {
        if (allowMobileDataConnectionsForThisSession()) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this._LastConnectionCheckTime < 10000) {
            return false;
        }
        CoreHelper.writeTraceEntry(TAG, "Checking for unauthorized mobile data connection...");
        this._LastConnectionCheckTime = currentTimeMillis;
        return CoreHelper.getDeviceNetworkConnection().isConnectionCellular();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WebException extends Exception {
        private static final long serialVersionUID = -6829746333153305412L;
        int StatusCode;

        public WebException(int i, String str) {
            super("Unable to connect to remote Web Server! Http status code: " + i + " (" + str + ")");
            this.StatusCode = -1;
            this.StatusCode = i;
        }
    }

    public void setDownloadListener(DownloadListener downloadListener) {
        this._DownloadListener = downloadListener;
    }
}
