.class public Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;
.super Ljava/lang/Object;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DownloadAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHeader"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;->name:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lmobi/beyondpod/downloadengine/DownloadAgent$RequestHeader;->value:Ljava/lang/String;

    return-void
.end method
