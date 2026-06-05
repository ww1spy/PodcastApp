.class public Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;
.super Ljava/lang/Object;
.source "HomeScreenContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;,
        Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HomeScreenContentBuilder"


# instance fields
.field _Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->_Context:Landroid/content/Context;

    return-void
.end method

.method private generateFavoriteEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;
    .locals 4

    .line 104
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;-><init>()V

    .line 108
    :try_start_0
    iget-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getLockedEpisodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    iget-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    new-instance v2, Lmobi/beyondpod/rsscore/TrackSorter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->SectionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    sget-object v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->TAG:Ljava/lang/String;

    const-string v3, "failed to build Favorites home screen section"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private generateLatestEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;
    .locals 3

    .line 84
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;-><init>()V

    const/4 v1, 0x6

    .line 86
    invoke-static {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getLatestAddedEpisodes(I)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    .line 87
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->SectionName:Ljava/lang/String;

    return-object v0
.end method

.method private generateUnfinishedEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;
    .locals 3

    .line 94
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;-><init>()V

    const/4 v1, 0x6

    .line 96
    invoke-static {v1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->getLatestPlayedEpisodes(I)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    .line 97
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->SectionName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;
    .locals 3

    .line 65
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;-><init>()V

    .line 67
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->generateLatestEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    move-result-object v1

    .line 68
    iget-object v2, v1, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->generateUnfinishedEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    move-result-object v1

    .line 72
    iget-object v2, v1, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 73
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->generateFavoriteEpisodes()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    move-result-object v1

    .line 76
    iget-object v2, v1, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 77
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
