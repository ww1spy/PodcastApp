.class public Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;
.super Ljava/lang/Object;
.source "RssFeedItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RssItemImage"
.end annotation


# instance fields
.field public Height:I

.field public Url:Ljava/lang/String;

.field public Width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Width:I

    .line 62
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Height:I

    return-void
.end method


# virtual methods
.method public HasSize()Z
    .locals 1

    .line 66
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Width:I

    if-lez v0, :cond_0

    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsValid()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
