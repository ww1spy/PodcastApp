.class public Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$NeverExpireExpirationPolicy;
.super Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.source "MessageExpirationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeverExpireExpirationPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
