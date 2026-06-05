.class Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter$Holder;
.super Ljava/lang/Object;
.source "ConfigWriteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;-><init>(Lmobi/beyondpod/rsscore/ConfigWriteHelper$1;)V

    sput-object v0, Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter$Holder;->sInstance:Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;
    .locals 1

    .line 59
    sget-object v0, Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter$Holder;->sInstance:Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;

    return-object v0
.end method
