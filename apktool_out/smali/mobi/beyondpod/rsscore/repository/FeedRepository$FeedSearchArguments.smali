.class public Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;
.super Ljava/lang/Object;
.source "FeedRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/repository/FeedRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedSearchArguments"
.end annotation


# instance fields
.field public leafFeedsOnly:Z

.field private searchPattern:Ljava/util/regex/Pattern;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->leafFeedsOnly:Z

    .line 983
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 986
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchString:Ljava/lang/String;

    const/16 v0, 0xa

    .line 987
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchString:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matches(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 2

    .line 997
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->leafFeedsOnly:Z

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Lmobi/beyondpod/rsscore/Track;)Z
    .locals 2

    .line 1004
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 1006
    iget-object v1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchPattern:Ljava/util/regex/Pattern;

    .line 1007
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
    .locals 1

    .line 1012
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1013
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->searchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
