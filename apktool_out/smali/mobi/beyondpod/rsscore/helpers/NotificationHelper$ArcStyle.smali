.class Lmobi/beyondpod/rsscore/helpers/NotificationHelper$ArcStyle;
.super Lmobi/beyondpod/rsscore/helpers/NotificationHelper;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArcStyle"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/rsscore/helpers/NotificationHelper$1;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$ArcStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public startForegroundAndShowNotification(Landroid/app/Service;ILandroid/app/Notification;)V
    .locals 0

    .line 194
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startForegroundAndShowNotification services is ignored under ARC"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopForeground(Landroid/app/Service;I)V
    .locals 0

    .line 200
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stopForeground services is ignored under ARC"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
