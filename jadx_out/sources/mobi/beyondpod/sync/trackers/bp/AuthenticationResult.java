package mobi.beyondpod.sync.trackers.bp;

import java.util.Date;

/* loaded from: classes.dex */
public class AuthenticationResult {
    public static int AUTH_RESULT_ACCOUNT_CREATED = 2;
    public static int AUTH_RESULT_AUTHENTICATED = 0;
    public static int AUTH_RESULT_AUTHENTICATION_FAILED = 1;
    public static int AUTH_RESULT_EMAIL_VERIFICATION_PENDING = 30;
    public static int AUTH_RESULT_INVALID_EMAIL = 20;
    public static int AUTH_RESULT_PASSWORD_TOO_LONG = 21;
    public static int AUTH_RESULT_SERVER_ERROR = 500;
    public static int AUTH_RESULT_TOO_MANY_USERS = 100;
    public static int AUTH_RESULT_USER_ALREADY_EXISTS = 10;
    private String encryptedPassword;
    Date serverDate;
    private String token;
    private Date tokenExpires;
    private boolean waitingForEmailVerification;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public Date getTokenExpires() {
        return this.tokenExpires;
    }

    public void setTokenExpires(Date date) {
        this.tokenExpires = date;
    }

    public String getEncryptedPassword() {
        return this.encryptedPassword;
    }

    public void setEncryptedPassword(String str) {
        this.encryptedPassword = str;
    }

    public boolean isWaitingForEmailVerification() {
        return this.waitingForEmailVerification;
    }

    public void setWaitingForEmailVerification(boolean z) {
        this.waitingForEmailVerification = z;
    }

    public Date getServerDate() {
        return this.serverDate;
    }

    public void setServerDate(Date date) {
        this.serverDate = date;
    }
}
