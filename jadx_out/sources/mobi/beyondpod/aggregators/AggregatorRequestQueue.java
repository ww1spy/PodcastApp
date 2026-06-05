package mobi.beyondpod.aggregators;

import android.os.Process;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class AggregatorRequestQueue implements Runnable {
    private static final String TAG = "AggregatorRequestQueue";
    private volatile boolean _DownloadThreadIsDownloading;
    private QueueListener _QueueListener;
    private Thread _CallerThread = null;
    private ArrayList<RequestBase> _RequestQueue = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface QueueListener {
        void onQueueCompleted(boolean z, List<RequestBase> list);

        void onQueueProgress(int i, int i2);

        void onQueueStarted(int i);
    }

    public AggregatorRequestQueue(QueueListener queueListener) {
        this._QueueListener = queueListener;
    }

    public synchronized void queueRequest(RequestBase requestBase) {
        this._RequestQueue.add(requestBase);
    }

    public void executeQueuedRequests() throws Exception {
        if (this._CallerThread != null) {
            if (!isWorking()) {
                throw new Exception("You must use a new instance of this class for each new download!");
            }
        } else {
            if (this._DownloadThreadIsDownloading) {
                throw new Exception("Download is already in progress!");
            }
            this._DownloadThreadIsDownloading = true;
            this._CallerThread = new Thread(this);
            this._CallerThread.setName("Aggregator caller thread");
            this._CallerThread.setPriority(4);
            this._CallerThread.start();
        }
    }

    public void stop() {
        if (this._CallerThread == null || this._CallerThread.isInterrupted()) {
            return;
        }
        this._CallerThread.interrupt();
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        try {
            try {
                int size = this._RequestQueue.size();
                onQueueStarted();
                CoreHelper.writeTraceEntry(TAG, "--- Starting the execution of " + size + " synchronization requests...");
                int i = 0;
                Iterator<RequestBase> it = this._RequestQueue.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    RequestBase next = it.next();
                    if (Thread.interrupted()) {
                        CoreHelper.writeTraceEntry(TAG, "--- Request Queue processing was interrupted.");
                        break;
                    }
                    i++;
                    onQueueProgress(i, size);
                    if (!executeRequest(next)) {
                        if (next.shouldAbort()) {
                            CoreHelper.writeTraceEntry(TAG, "--- Request queue processing aborted as a result of request " + next);
                            break;
                        }
                        while (next.shouldRetry()) {
                            CoreHelper.writeTraceEntry(TAG, "--- Retrying request: " + next.getClass().getSimpleName());
                            if (executeRequest(next)) {
                                break;
                            }
                        }
                    }
                }
                onQueueCompleted(Thread.interrupted());
                Iterator<RequestBase> it2 = this._RequestQueue.iterator();
                while (it2.hasNext()) {
                    RequestBase next2 = it2.next();
                    if (next2.httpClient() != null) {
                        next2.httpClient().close();
                    }
                }
            } catch (Exception e) {
                CoreHelper.logException(TAG, "--- failed to process Aggregator request queue", e);
                onQueueCompleted(Thread.interrupted());
                Iterator<RequestBase> it3 = this._RequestQueue.iterator();
                while (it3.hasNext()) {
                    RequestBase next3 = it3.next();
                    if (next3.httpClient() != null) {
                        next3.httpClient().close();
                    }
                }
            }
        } catch (Throwable th) {
            onQueueCompleted(Thread.interrupted());
            Iterator<RequestBase> it4 = this._RequestQueue.iterator();
            while (it4.hasNext()) {
                RequestBase next4 = it4.next();
                if (next4.httpClient() != null) {
                    next4.httpClient().close();
                }
            }
            throw th;
        }
    }

    public static boolean executeRequest(RequestBase requestBase) {
        IHttpClient httpClient = requestBase.httpClient();
        if (httpClient == null) {
            return false;
        }
        try {
            CoreHelper.writeTraceEntry(TAG, "");
            CoreHelper.writeTraceEntry(TAG, "--- Executing Aggregator API: " + requestBase);
            CoreHelper.writeTraceEntry(TAG, "--- Sending Request ");
            CoreHelper.keepDeviceAwake();
            httpClient.execute();
            CoreHelper.keepDeviceAwake();
            int statusCode = httpClient.getStatusCode();
            CoreHelper.writeTraceEntry(TAG, "--- Got Response! status: " + statusCode + " (" + httpClient.getReasonPhrase() + ")");
            if (statusCode != 200 && statusCode != 403 && statusCode != 401) {
                throw new Exception(httpClient.getReasonPhrase());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpClient.getUnzippedContent()), 4096);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append("\n");
            }
            bufferedReader.close();
            String sb2 = sb.toString();
            CoreHelper.writeTraceEntry(TAG, "--- Request completed!");
            if (statusCode != 403 && statusCode != 401) {
                if (statusCode == 200 && StringUtils.isNullOrEmpty(sb2)) {
                    sb2 = "OK";
                }
                requestBase.onSuccess(sb2);
                return true;
            }
            throw new AggregatorLoginHelper.AuthenticationException(sb2);
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "--- Error during Aggregator Sync: " + httpClient.finalDownloadUrl() + ". reason: " + e);
            requestBase.onFail(e);
            return false;
        }
    }

    public boolean isWorking() {
        return this._DownloadThreadIsDownloading;
    }

    private void onQueueStarted() {
        this._DownloadThreadIsDownloading = true;
        if (this._QueueListener != null) {
            this._QueueListener.onQueueStarted(this._RequestQueue.size());
        }
    }

    private void onQueueCompleted(boolean z) {
        this._DownloadThreadIsDownloading = false;
        if (this._QueueListener != null) {
            this._QueueListener.onQueueCompleted(z, this._RequestQueue);
        }
    }

    private void onQueueProgress(int i, int i2) {
        if (this._QueueListener != null) {
            this._QueueListener.onQueueProgress(i, i2);
        }
    }
}
