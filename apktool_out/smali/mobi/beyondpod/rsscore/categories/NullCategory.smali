.class public Lmobi/beyondpod/rsscore/categories/NullCategory;
.super Lmobi/beyondpod/rsscore/categories/FeedCategory;
.source "NullCategory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "<N/A>"

    .line 28
    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/NullCategory;->_Value:Ljava/lang/String;

    return-void
.end method
