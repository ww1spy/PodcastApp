.class public Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
.super Ljava/lang/Object;
.source "RssFeedItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final DESCRIPTION_SNAPSHOT_SIZE:I = 0x1f4

.field private static final SHOW_NOTES_MAX_SIZE:I = 0xc350


# instance fields
.field public Author:Ljava/lang/String;

.field public Category:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public EnclosureDuration:Ljava/lang/String;

.field public Guid:Ljava/lang/String;

.field public Image:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;

.field public IsGoogleReadLocked:Z

.field public Link:Ljava/lang/String;

.field public OriginalPubDateString:Ljava/lang/String;

.field public OriginatingFeed:Ljava/lang/String;

.field public OriginatingFeedTitle:Ljava/lang/String;

.field public OriginatingItemId:Ljava/lang/String;

.field public ShortDescription:Ljava/lang/String;

.field public Title:Ljava/lang/CharSequence;

.field public Visible:Z

.field private _Enclosures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;",
            ">;"
        }
    .end annotation
.end field

.field private _GoogleRead:Ljava/lang/Boolean;

.field private _GoogleStarred:Ljava/lang/Boolean;

.field private _InGoogleReadingList:Ljava/lang/Boolean;

.field private _IsMockItem:Ljava/lang/Boolean;

.field private _ItemId:Ljava/lang/String;

.field private _ItemImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _OriginatingFeedID:Ljava/util/UUID;

.field private final _ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

.field private _PubDate:Ljava/util/Date;

.field private _SelectedItemImageUrl:Ljava/lang/String;

.field private _TLPItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    .line 171
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    const-string v0, ""

    .line 430
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Visible:Z

    .line 77
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    .line 78
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    .line 171
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    const-string v0, ""

    .line 430
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Visible:Z

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Author:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Category:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-void
.end method

.method public static buildMockRssItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 4

    .line 722
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 725
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 727
    new-instance v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;-><init>()V

    if-nez v0, :cond_1

    .line 728
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    .line 729
    iput-object p0, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Link:Ljava/lang/String;

    .line 731
    new-instance p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    const/4 v2, 0x1

    .line 733
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    .line 734
    iput-object p4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    .line 735
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    .line 736
    iput-object p3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    .line 737
    iput-object p5, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    .line 738
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, ""

    .line 739
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    .line 740
    :cond_2
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    .line 741
    iget-object p1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    .line 743
    invoke-static {p6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 745
    new-instance p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    if-nez v0, :cond_3

    const-string p2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz v0, :cond_4

    .line 746
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-direct {p1, p2, v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Z)V

    .line 747
    iput-object p6, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    .line 748
    iput-object p7, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    .line 749
    invoke-virtual {p1, p8}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    .line 750
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 751
    iget-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public static buildMockRssItem(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeed;Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;
    .locals 11

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 762
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;-><init>(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V

    const/4 v1, 0x1

    .line 764
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    .line 765
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    .line 766
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    .line 767
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    .line 769
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    .line 770
    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    .line 771
    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    .line 772
    :cond_1
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    .line 773
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    iput-object p1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    .line 775
    new-instance p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->rssItemID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v7

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V

    .line 777
    iput-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 779
    iget-object p0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private generateFingerprintItemDigest()Ljava/lang/String;
    .locals 4

    .line 395
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1d

    mul-int/2addr v0, v2

    .line 396
    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 397
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateGuidItemDigest()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<N/A>"

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateItemID()Ljava/lang/String;
    .locals 2

    .line 362
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingItemId:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    :goto_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 376
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_TLPItemId:Ljava/lang/String;

    return-object v0

    .line 370
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_TLPItemId:Ljava/lang/String;

    return-object v0

    .line 373
    :cond_4
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->generateGuidItemDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGreaderId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xb

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setReadUnreadInternal(Z)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 252
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->IsGoogleReadLocked:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->ignoreGoogleReaderReadStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 257
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemAsRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/16 p1, 0xc

    .line 258
    invoke-static {p1, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalPostChange(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 262
    :cond_4
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemReadStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/16 p1, 0xd

    .line 263
    invoke-static {p1, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalPostChange(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->clearGoogleRead()V

    .line 268
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 269
    iget-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 275
    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->syncFeedReadStatus(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public SetOriginatingFeedID(Ljava/util/UUID;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    return-void
.end method

.method public clearGoogleRead()V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleRead:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->compareTo(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 444
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 447
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 450
    :cond_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public createItemSnapshot(Ljava/io/PrintWriter;)V
    .locals 6

    .line 418
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const-string v1, "itemID:>%s<, TLPID:>%s<, GUIDID:>%s<, read status:%s, read:%s === Guid:>%s< (%s), TLP [title:>%s<, Link:>%s<, pubDate:>%s<], enclosure File name:>%s<, enclosure URL:>%s<, In History: %s, enclosureID:>%s<\r\n"

    const/16 v2, 0xe

    .line 419
    new-array v2, v2, [Ljava/lang/Object;

    .line 421
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_TLPItemId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->generateGuidItemDigest()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getItemIdUsedForStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 422
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "N/A"

    :goto_0
    const/4 v4, 0x6

    aput-object v3, v2, v4

    const/4 v3, 0x7

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    if-nez v0, :cond_1

    const-string v4, "NONE"

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/16 v3, 0xb

    if-nez v0, :cond_2

    const-string v4, "NONE"

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    :goto_2
    aput-object v4, v2, v3

    const/16 v3, 0xc

    if-nez v0, :cond_3

    const-string v4, "N/A"

    goto :goto_3

    .line 425
    :cond_3
    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->hasEntryFor(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_3
    aput-object v4, v2, v3

    const/16 v3, 0xd

    if-nez v0, :cond_4

    const-string v0, "N/A"

    goto :goto_4

    .line 426
    :cond_4
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureAlternativeID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    aput-object v0, v2, v3

    .line 420
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpEnclosures()[Ljava/lang/CharSequence;
    .locals 9

    .line 470
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 472
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 474
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    const-string v5, "/"

    const-string v6, " - "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureSizeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dumpItemDetails()Ljava/lang/CharSequence;
    .locals 4

    .line 492
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->dumpEnclosure()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "Post Details"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGreaderId(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\n  \u2022 Fingerprint type: "

    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    .line 506
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ItemIDGenerationAlgorithm:I

    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "GUID"

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "TIP"

    .line 512
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "GReader"

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v2, "\n  \u2022 itemID: "

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v2, " ("

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_4
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 528
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "\n  \u2022 GUID: "

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Guid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v2, "\n  \u2022 GUID Not Avaialble!"

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 541
    :cond_6
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\n  \u2022 Episode is Archived"

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "\n  \u2022 enclosureID: "

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v1, :cond_8

    const-string v1, "\n  \u2022 itemID Hash: "

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;
    .locals 3

    .line 185
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-boolean v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IgnoreEnclosures:Z

    if-eqz v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->PreferredEnclosureIndex:I

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 191
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 357
    :cond_0
    instance-of v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->equals(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result p1

    return p1
.end method

.method public equals(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 343
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 345
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 347
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getRead()Z
    .locals 1

    .line 231
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->hasStatusFor(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isItemRead(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    return v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGoogleRead()Z

    move-result v0

    return v0
.end method

.method public getShowNotes()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0xc34f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .line 282
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->hasStatusFor(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->isItemStarred(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v0

    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGoogleStarred()Z

    move-result v0

    return v0
.end method

.method public inGoogleReadingList()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_InGoogleReadingList:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_InGoogleReadingList:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoogleRead()Z
    .locals 2

    .line 322
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->ignoreGoogleReaderReadStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 325
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleRead:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isGoogleStarred()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleStarred:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleStarred:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItemImageUsingParentFeedImage()Z
    .locals 2

    .line 678
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_SelectedItemImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_SelectedItemImageUrl:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMockItem()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_IsMockItem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public itemEnclosures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public itemID()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_TLPItemId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->generateFingerprintItemDigest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_TLPItemId:Ljava/lang/String;

    .line 410
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 411
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->generateItemID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    .line 413
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public itemImageUrls()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    return-object v0

    .line 686
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    .line 689
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Image:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Image:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem$RssItemImage;->Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->checkAndAddImageUrl(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 693
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 695
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 696
    iget-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 697
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->checkAndAddImageUrl(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 701
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->parseImagesFromStringWithRegEx(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 712
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 713
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setSelectedItemImageUrlToUseParentFeedImage()V

    .line 715
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemImageUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public originatingFeedID()Ljava/util/UUID;
    .locals 1

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_OriginatingFeedID:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;

    :goto_0
    return-object v0
.end method

.method public parentFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 648
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    return-object v0
.end method

.method public pubDate()Ljava/util/Date;
    .locals 2

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_FeedItemDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryFindFormatOfRFC822Time(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_FeedItemDateFormat:Ljava/text/SimpleDateFormat;

    .line 156
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginalPubDateString:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->_FeedItemDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    .line 161
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    return-object v0
.end method

.method public rebuildItemId()V
    .locals 1

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ItemId:Ljava/lang/String;

    .line 787
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    .line 788
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->resetParentItemId()V

    :cond_0
    return-void
.end method

.method public resolveOriginatingFeedTitle()Ljava/lang/String;
    .locals 2

    .line 455
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_ParentFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Title:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->OriginatingFeedTitle:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public selectedItemImageUrl()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_SelectedItemImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 6

    .line 199
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->verifyAndFixEnclosure()V

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 206
    iget-object v2, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-object v3, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 211
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    .line 213
    :cond_3
    iget-object v0, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    iput-object p1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :cond_4
    return-void

    .line 220
    :cond_5
    iput-object p0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 222
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 225
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_Enclosures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGoogleRead()V
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleRead:Ljava/lang/Boolean;

    return-void
.end method

.method public setGoogleStarred()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleStarred:Ljava/lang/Boolean;

    return-void
.end method

.method public setInGoogleReadingList()V
    .locals 1

    const/4 v0, 0x1

    .line 653
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_InGoogleReadingList:Ljava/lang/Boolean;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_PubDate:Ljava/util/Date;

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setReadUnreadInternal(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncDownloadedWithRead(Z)V

    .line 244
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->syncPlayedWithRead()V

    return-void
.end method

.method public setSelectedItemImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_SelectedItemImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItemImageUrlToUseParentFeedImage()V
    .locals 2

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_SelectedItemImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setStarred(Z)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->inGoogleReadingList()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 298
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->setItemAsStarred(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/16 p1, 0xa

    .line 299
    invoke-static {p1, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalPostChange(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->clearItemStarredStatus(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/16 p1, 0xb

    .line 304
    invoke-static {p1, p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalPostChange(ILmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :goto_0
    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleStarred:Ljava/lang/Boolean;

    return-void
.end method

.method public shortTaglessDescription()Ljava/lang/String;
    .locals 3

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->ShortDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->cleanHtmlTags(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->ShortDescription:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->ShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public syncDownloadedWithLocalTrack()V
    .locals 2

    .line 618
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v0

    .line 623
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    :cond_1
    return-void
.end method

.method public syncDownloadedWithRead(Z)V
    .locals 3

    .line 563
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    return-void

    .line 575
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 583
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 586
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->removeEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    goto :goto_0

    .line 588
    :cond_3
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->setReadUnreadInternal(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public syncPlayedWithRead()V
    .locals 3

    .line 594
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 603
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 607
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    :cond_2
    if-nez v1, :cond_3

    .line 610
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    :cond_3
    return-void
.end method

.method public syncShowNotesWithLocalTrack()V
    .locals 2

    .line 634
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->hasShowNotes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getShowNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setShowNotes(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public taglessDescription()Ljava/lang/CharSequence;
    .locals 3

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->cleanHtmlTags(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s (R:%s, S:%s, gR:%s, gS:%s) %s "

    const/4 v1, 0x6

    .line 464
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleRead:Ljava/lang/Boolean;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->_GoogleStarred:Ljava/lang/Boolean;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 465
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 464
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
