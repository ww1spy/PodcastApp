.class public Lmobi/beyondpod/rsscore/categories/FeedCategory;
.super Ljava/lang/Object;
.source "FeedCategory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmobi/beyondpod/rsscore/categories/FeedCategory;",
        ">;"
    }
.end annotation


# instance fields
.field protected _Color:I

.field protected _Name:Ljava/lang/String;

.field protected _Value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Color:I

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 4

    const-string v0, "\\^"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 132
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 134
    array-length v1, p0

    if-lez v1, :cond_2

    .line 136
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    .line 143
    array-length v3, p0

    if-le v3, v2, :cond_2

    .line 144
    aget-object p0, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Color:I

    :cond_2
    return-object v0
.end method


# virtual methods
.method public color()I
    .locals 1

    .line 53
    iget v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Color:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->compareTo(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    .line 70
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    iget-object v3, p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public hasUnreadFeeds()Z
    .locals 2

    .line 86
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 89
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->mayHaveUnreadItems()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    return-object v0
.end method

.method public numberOfFeedsInCategory()I
    .locals 1

    .line 98
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    return v0
.end method

.method public numberOfPodcastsInCategory()I
    .locals 3

    .line 105
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 107
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public renameTo(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Name:Ljava/lang/String;

    iput-object p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    return-void
.end method

.method public serializedData()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setColor(I)V
    .locals 0

    .line 152
    iput p1, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Color:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/rsscore/categories/FeedCategory;->_Value:Ljava/lang/String;

    return-object v0
.end method
