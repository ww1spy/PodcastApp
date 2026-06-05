.class public Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FeedPreviewActivity.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;
.implements Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;


# static fields
.field private static final THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;


# instance fields
.field private _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field _FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100224

    .line 67
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static subscribeAudioBook(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 253
    sget-object p1, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 259
    :cond_1
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    const/4 v3, 0x6

    .line 260
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 261
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 262
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, p1

    :cond_2
    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    .line 264
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 265
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 267
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 268
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 270
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v2}, Lmobi/beyondpod/rsscore/Feed;->subscribeToFeedAndPromptForCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Z)V

    return-void
.end method

.method public static subscribeFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 227
    sget-object p1, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 228
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 233
    :cond_1
    new-instance v0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V

    .line 234
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 236
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    invoke-virtual {v0, p3}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 239
    :cond_2
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/rsscore/Feed;->subscribeToFeedAndPromptForCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 322
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public enableDisableActionBarScroll(Z)V
    .locals 0

    return-void
.end method

.method public enableDisablePullToRefresh(Z)V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 0

    return-object p0
.end method

.method public getDefaultFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 316
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->supportRequestWindowFeature(I)Z

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005f

    .line 75
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    .line 79
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 81
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    new-instance p1, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    const p1, 0x7f0900ea

    .line 86
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setPreviewMode()V

    .line 88
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;)V

    .line 90
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "feed"

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 99
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->findFeedByIdInTempOrRepository(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 104
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->finish()V

    return-void

    :cond_2
    const-string p1, "feed Preview"

    .line 110
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->loadFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->release()V

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onActivityDestroy()V

    .line 157
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->clearItems()V

    .line 158
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onFeedUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onFeedUpdateStarted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->finish()V

    return v0

    .line 167
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->subscribeFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAfterDeactivate()V

    .line 136
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 181
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    .line 188
    :try_start_0
    iget-object v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->mapMimeToContentType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 193
    :cond_1
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->convertToStreamableMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->mapMimeToContentType(Ljava/lang/String;)I

    move-result v1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    :goto_0
    iget-object v3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.title"

    .line 204
    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.album"

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "output"

    .line 206
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 212
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100118

    .line 213
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, ""

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 212
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->_FeedContent:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAfterActivate()V

    return-void
.end method

.method public refreshActiveViewTitle()V
    .locals 0

    return-void
.end method

.method public subscribeToCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 304
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->subscribeFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
