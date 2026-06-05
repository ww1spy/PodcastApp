.class public Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;
.super Ljava/lang/Object;
.source "FeedURLPatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/FeedURLPatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatchResult"
.end annotation


# instance fields
.field private _PatchMessage:Ljava/lang/String;

.field private _PatchedURL:Ljava/lang/String;

.field private _Result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\r\n|\r|\n"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 28
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 29
    aget-object v0, p1, v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_Result:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 31
    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 32
    aget-object v0, p1, v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_PatchedURL:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x2

    .line 34
    array-length v1, p1

    if-le v1, v0, :cond_3

    .line 35
    aget-object p1, p1, v0

    iput-object p1, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_PatchMessage:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public isPatched()Z
    .locals 2

    const-string v0, "PATCHED"

    .line 39
    iget-object v1, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_Result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public patchMessage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_PatchMessage:Ljava/lang/String;

    return-object v0
.end method

.method public patchedURL()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->_PatchedURL:Ljava/lang/String;

    return-object v0
.end method
