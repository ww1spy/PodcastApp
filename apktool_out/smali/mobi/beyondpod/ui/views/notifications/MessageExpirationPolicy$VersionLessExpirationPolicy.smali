.class public Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;
.super Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.source "MessageExpirationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionLessExpirationPolicy"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SHOW_IF_VERSION_LESS_THAN:"


# instance fields
.field protected _TargetVersion:Lmobi/beyondpod/rsscore/helpers/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;-><init>()V

    .line 58
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;->_TargetVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 63
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;->_TargetVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 2

    .line 72
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;->_TargetVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;->compare(Lmobi/beyondpod/rsscore/helpers/Version;Lmobi/beyondpod/rsscore/helpers/Version;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
