.class Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle$Holder;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/rsscore/helpers/NotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 148
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$ArcStyle;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$ArcStyle;-><init>(Lmobi/beyondpod/rsscore/helpers/NotificationHelper$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle;-><init>(Lmobi/beyondpod/rsscore/helpers/NotificationHelper$1;)V

    :goto_0
    sput-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle$Holder;->sInstance:Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;
    .locals 1

    .line 146
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/NotificationHelper$NewStyle$Holder;->sInstance:Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    return-object v0
.end method
