package mobi.beyondpod.sync.trackers.bp;

/* loaded from: classes.dex */
public class AuthenticationException extends Exception {
    private static final long serialVersionUID = 1;
    private int statusCode;

    public AuthenticationException(int i, String str, Throwable th) {
        super(str, th);
        this.statusCode = i;
    }

    public int getStatusCode() {
        return this.statusCode;
    }
}
