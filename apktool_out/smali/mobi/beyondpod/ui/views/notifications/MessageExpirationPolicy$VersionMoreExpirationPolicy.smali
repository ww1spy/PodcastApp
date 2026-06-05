.class public Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionMoreExpirationPolicy;
.super Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;
.source "MessageExpirationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionMoreExpirationPolicy"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SHOW_IF_VERSION_MORE_THAN:"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionLessExpirationPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 2

    .line 88
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$VersionMoreExpirationPolicy;->_TargetVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;->compare(Lmobi/beyondpod/rsscore/helpers/Version;Lmobi/beyondpod/rsscore/helpers/Version;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
