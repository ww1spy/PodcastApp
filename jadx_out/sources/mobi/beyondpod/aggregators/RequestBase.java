package mobi.beyondpod.aggregators;

import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public abstract class RequestBase {
    public static final int STATUS_FAILED = 2;
    public static final int STATUS_PENDING = 0;
    public static final int STATUS_SUCCESS = 1;
    private Exception _LastException;
    protected boolean _ShouldAbort = false;
    protected int _RetryCount = 0;
    protected int _RequestStatus = 0;

    public abstract IHttpClient httpClient();

    public void onSuccess(String str) {
        this._RequestStatus = 1;
    }

    public void onFail(Exception exc) {
        this._RequestStatus = 2;
        this._LastException = exc;
        if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
            AggregatorLoginHelper.clearAccountToken();
        }
    }

    public boolean shouldRetry() {
        this._RetryCount--;
        return this._RetryCount >= 0;
    }

    public boolean shouldAbort() {
        return this._ShouldAbort;
    }

    public int status() {
        return this._RequestStatus;
    }

    public Exception lastException() {
        return this._LastException;
    }
}
