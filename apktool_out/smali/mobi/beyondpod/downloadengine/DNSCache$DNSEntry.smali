.class Lmobi/beyondpod/downloadengine/DNSCache$DNSEntry;
.super Ljava/lang/Object;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/DNSCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DNSEntry"
.end annotation


# instance fields
.field public hostAddress:Ljava/lang/String;

.field public hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/DNSCache$DNSEntry;->hostName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lmobi/beyondpod/downloadengine/DNSCache$DNSEntry;->hostAddress:Ljava/lang/String;

    return-void
.end method
