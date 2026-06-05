.class public Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;
.super Ljava/lang/Object;
.source "RssFeedItemSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _SortOrder:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;->_SortOrder:I

    return-void
.end method


# virtual methods
.method Compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_1
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;->compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 2

    .line 38
    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->equals(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;->_SortOrder:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;->Compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    return p1

    .line 44
    :cond_1
    invoke-virtual {p0, p2, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItemSorter;->Compare(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    return p1
.end method
