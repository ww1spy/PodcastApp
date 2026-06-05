.class public Lmobi/beyondpod/ui/commands/CommandManagerBase;
.super Ljava/lang/Object;
.source "CommandManagerBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandManagerBase"

.field private static final UNABLE_TO_OPEN_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget v0, Lmobi/beyondpod/R$string;->command_manager_unable_to_open_url:I

    .line 42
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/commands/CommandManagerBase;->UNABLE_TO_OPEN_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CmdPlaySmartPlayList(ILandroid/content/Context;)Z
    .locals 1

    .line 231
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->executeCommandPlaySmartPlayList(ILandroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/ui/commands/CommandManagerBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static buildEpisodeShareBody(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;
    .locals 6

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "* Published: "

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toShortString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "\n\n* Episode Download Link"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x7800

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-string v1, " ("

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureSizeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ": "

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_2
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 432
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "\n\n* Show Notes: "

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "\n\n* Post Link: "

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_4
    :goto_0
    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, "\n\n* Episode feed: "

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p1, "\n\n* feed: "

    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :goto_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    .line 446
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildEpisodeShareBody(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;
    .locals 6

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "* duration: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", Played: "

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->playedTimeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "\n\n* Published: "

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toShortString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\n\n* Episode Download Link"

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v1

    const-wide/16 v3, 0x7800

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    const-string v1, " ("

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ": "

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\n\n* Show Notes: "

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "\n\n* Episode feed: "

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildFeedShareBody(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildShareEpisodeIntent(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultSendToMailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildEpisodeShareBody(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->attachDownloadedPodcastsWhenSharing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    move-object v2, p0

    .line 320
    invoke-static/range {v2 .. v7}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p5, "plain/text"

    goto :goto_0

    :cond_0
    const-string p5, "text/plain"

    .line 268
    :goto_0
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p5, 0x0

    .line 270
    new-array p5, p5, [Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p5, ",\\s+"

    .line 273
    invoke-virtual {p1, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    :cond_1
    const-string p1, "android.intent.extra.EMAIL"

    .line 276
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    .line 277
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 278
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 279
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "mobi.beyondpod.enhanced.evo.BackupRestoreFragment"

    .line 286
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x1

    .line 288
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 289
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public static cmdEmptyPlaylist(ZZ)V
    .locals 6

    .line 296
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    if-nez p0, :cond_1

    .line 302
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 303
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    :cond_1
    if-nez p1, :cond_2

    .line 304
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    if-ne v4, v3, :cond_2

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 311
    invoke-virtual {v0, v1}, Lmobi/beyondpod/services/player/PlayList;->removeTracks(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static cmdLoadCurrentTrack()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->loadCurrentTrackIfNeeded(Z)V

    return-void
.end method

.method public static cmdLoadCurrentTrackIfNeeded()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->loadCurrentTrackIfNeeded(Z)V

    return-void
.end method

.method public static cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;",
            "Lmobi/beyondpod/rsscore/Track;",
            "Z)V"
        }
    .end annotation

    .line 478
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lmobi/beyondpod/services/player/PlayList;->loadTracks(Ljava/util/Collection;Z)V

    .line 479
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->getTrackPosition(Lmobi/beyondpod/rsscore/Track;)I

    move-result p0

    .line 481
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPlayPosition(I)Z

    return-void
.end method

.method public static cmdOpenExternalBrowser(Ljava/lang/String;)V
    .locals 3

    .line 456
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 458
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 463
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmobi/beyondpod/ui/commands/CommandManagerBase;->UNABLE_TO_OPEN_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static cmdPauseAudioPlayback()V
    .locals 3

    .line 214
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "pause"

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdPlayNextTrack()V
    .locals 3

    .line 126
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "playnext"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdPlayPosition(I)Z
    .locals 3

    if-ltz p0, :cond_1

    .line 46
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "open"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "trackPos"

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static cmdPlayPreviousTrack()V
    .locals 3

    .line 142
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "playprevious"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdResumePlayback()V
    .locals 3

    .line 197
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "resume"

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1

    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    invoke-static/range {p0 .. p5}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 255
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to find an application that can send e-mail!"

    const/4 p2, 0x1

    .line 260
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static cmdShareFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultSendToMailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildFeedShareBody(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 355
    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 358
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onFeedShared()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
    .locals 7

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultSendToMailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildEpisodeShareBody(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->attachDownloadedPodcastsWhenSharing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    const/4 v6, 0x0

    move-object v1, p0

    .line 331
    invoke-static/range {v1 .. v6}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 336
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEpisodeShared()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static cmdSharePost(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultSendToMailAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->buildEpisodeShareBody(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 344
    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 347
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onEpisodeShared()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdSkipToEnd()V
    .locals 3

    .line 486
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onSkipToEnd()V

    .line 487
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "skiptoend"

    .line 491
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdStartPurchaseUnlockKeyIntent()V
    .locals 2

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getUnlocKeyAppStoreIntent()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static cmdStopPlayback()V
    .locals 3

    .line 66
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "stop"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdSuggestFeature(Landroid/content/Context;)V
    .locals 6

    const-string v1, "support@beyondpod.mobi"

    const-string v2, "I want to suggest a Feature in BeyondPod"

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My device is running BeyondPod "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getShortLicenseKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with Android "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\nIt would be nice if BeyondPod...\n\n\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 237
    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return-void
.end method

.method public static cmdSwitchPlayerForCurrentTrack(Z)V
    .locals 3

    .line 109
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "loadcurrenttrack"

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "startPlaybackOnLoad"

    .line 114
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 116
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->checkAndNotifyIfInDownloadRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUnableToEstablishWiFiConnectionInThisSession(Z)V

    .line 165
    :try_start_0
    new-instance v0, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase$1;-><init>(Lmobi/beyondpod/rsscore/FeedList;Z)V

    invoke-static {v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lmobi/beyondpod/ui/commands/CommandManagerBase;->TAG:Ljava/lang/String;

    const-string v2, "Unable to start Reader Sync!"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-static {p0, p1}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startUpdateDownload(Lmobi/beyondpod/rsscore/FeedList;Z)V

    :goto_0
    return-void
.end method

.method private static loadCurrentTrackIfNeeded(Z)V
    .locals 3

    .line 92
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "loadcurrenttrack"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "forceLoadOnLoad"

    .line 97
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 99
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method
