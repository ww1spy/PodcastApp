.class public Lmobi/beyondpod/rsscore/helpers/NetworkCredential;
.super Ljava/lang/Object;
.source "NetworkCredential.java"


# instance fields
.field public password:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;->userName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;->password:Ljava/lang/String;

    return-void
.end method
