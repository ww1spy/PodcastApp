.class public Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;
.super Ljava/lang/Exception;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationException"
.end annotation


# static fields
.field private static final ERROR_HEADER:Ljava/lang/String; = "Error"

.field private static final INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN:Ljava/lang/String; = "Invalid or expired Feedly login! (You can modify your Feedly login in: Add feed > Import Feeds > Import from Feedly)"

.field private static final serialVersionUID:J = -0x5ec8221abda12344L


# instance fields
.field _Contents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Invalid or expired Feedly login! (You can modify your Feedly login in: Add feed > Import Feeds > Import from Feedly)"

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;->_Contents:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 78
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;-><init>()V

    .line 80
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r\n|\r|\n"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "="

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 88
    iget-object v4, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;->_Contents:Ljava/util/HashMap;

    aget-object v5, v3, v0

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;->_Contents:Ljava/util/HashMap;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v1, "BadAuthentication"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Invalid username or password."

    return-object v0

    :cond_0
    const-string v1, "NotVerified"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "The account email address has not been verified. You will need to access your Google account directly to resolve the issue before logging in using BeyondPod."

    return-object v0

    :cond_1
    const-string v1, "TermsNotAgreed"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Account has not agreed to terms. You will need to access your Google account directly to resolve the issue before logging in using BeyondPod"

    return-object v0

    :cond_2
    const-string v1, "CaptchaRequired"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "A CAPTCHA is required! Try to loging in to Google Reader using the device browser"

    return-object v0

    :cond_3
    const-string v1, "Unknown"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Unknown error! The request contained invalid input or was malformed."

    return-object v0

    :cond_4
    const-string v1, "AccountDeleted"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Your user account has been deleted."

    return-object v0

    :cond_5
    const-string v1, "ServiceDisabled"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "The user\'s access to the Google Reader Service has been disabled. (The user account may still be valid.)"

    return-object v0

    :cond_6
    const-string v1, "ServiceUnavailable"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "The service is not available; try again later."

    return-object v0

    .line 119
    :cond_7
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
