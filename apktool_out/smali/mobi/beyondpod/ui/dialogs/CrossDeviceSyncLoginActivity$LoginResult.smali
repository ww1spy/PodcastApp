.class Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;
.super Ljava/lang/Object;
.source "CrossDeviceSyncLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginResult"
.end annotation


# static fields
.field static final RESULT_ACCOUNT_ALREADY_EXISTS:I = -0x4

.field static final RESULT_ACCOUNT_QUOTA_REACHED:I = -0x6

.field static final RESULT_AUTH_FAILED:I = -0x1

.field static final RESULT_INVALID_EMAIL:I = -0x5

.field static final RESULT_NETWORK_ERROR:I = -0x2

.field static final RESULT_OK:I = 0x0

.field static final RESULT_UNVERIFIED_ACCOUNT:I = -0x3


# instance fields
.field AuthResult:Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

.field LoginStatus:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;-><init>()V

    return-void
.end method
