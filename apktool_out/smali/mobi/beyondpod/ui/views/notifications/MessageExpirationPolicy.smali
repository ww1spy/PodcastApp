.class public abstract Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.super Ljava/lang/Object;
.source "MessageExpirationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;,
        Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionEqualExpirationPolicy;,
        Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionMoreExpirationPolicy;,
        Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;,
        Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPolicy(Ljava/lang/String;)Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
    .locals 2

    .line 22
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "SHOW_IF_VERSION_LESS_THAN:"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;

    const-string v1, "SHOW_IF_VERSION_LESS_THAN:"

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "SHOW_IF_VERSION_MORE_THAN:"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionMoreExpirationPolicy;

    const-string v1, "SHOW_IF_VERSION_MORE_THAN:"

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionMoreExpirationPolicy;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "SHOW_IF_VERSION:"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionEqualExpirationPolicy;

    const-string v1, "SHOW_IF_VERSION:"

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionEqualExpirationPolicy;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v0, "SHOW_BEFORE:"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;

    const-string v1, "SHOW_BEFORE:"

    invoke-static {p0, v1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_4
    new-instance p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;-><init>()V

    return-object p0
.end method

.method private static extractData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract isExpired()Z
.end method
