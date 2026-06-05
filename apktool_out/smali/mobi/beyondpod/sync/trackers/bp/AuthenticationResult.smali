.class public Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static AUTH_RESULT_ACCOUNT_CREATED:I = 0x2

.field public static AUTH_RESULT_AUTHENTICATED:I = 0x0

.field public static AUTH_RESULT_AUTHENTICATION_FAILED:I = 0x1

.field public static AUTH_RESULT_EMAIL_VERIFICATION_PENDING:I = 0x1e

.field public static AUTH_RESULT_INVALID_EMAIL:I = 0x14

.field public static AUTH_RESULT_PASSWORD_TOO_LONG:I = 0x15

.field public static AUTH_RESULT_SERVER_ERROR:I = 0x1f4

.field public static AUTH_RESULT_TOO_MANY_USERS:I = 0x64

.field public static AUTH_RESULT_USER_ALREADY_EXISTS:I = 0xa


# instance fields
.field private encryptedPassword:Ljava/lang/String;

.field serverDate:Ljava/util/Date;

.field private token:Ljava/lang/String;

.field private tokenExpires:Ljava/util/Date;

.field private waitingForEmailVerification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedPassword()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->encryptedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getServerDate()Ljava/util/Date;
    .locals 1

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->serverDate:Ljava/util/Date;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpires()Ljava/util/Date;
    .locals 1

    .line 31
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->tokenExpires:Ljava/util/Date;

    return-object v0
.end method

.method public isWaitingForEmailVerification()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->waitingForEmailVerification:Z

    return v0
.end method

.method public setEncryptedPassword(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->encryptedPassword:Ljava/lang/String;

    return-void
.end method

.method public setServerDate(Ljava/util/Date;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->serverDate:Ljava/util/Date;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->token:Ljava/lang/String;

    return-void
.end method

.method public setTokenExpires(Ljava/util/Date;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->tokenExpires:Ljava/util/Date;

    return-void
.end method

.method public setWaitingForEmailVerification(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->waitingForEmailVerification:Z

    return-void
.end method
