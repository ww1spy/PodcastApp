.class Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter$Holder;
.super Ljava/lang/Object;
.source "ConfigWriteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;-><init>(Lmobi/beyondpod/rsscore/ConfigWriteHelper$1;)V

    sput-object v0, Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter$Holder;->sInstance:Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
