.class public Lmobi/beyondpod/ui/core/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field public static final GET_ARTWORK_KIND_CHECK_ONLY:I = 0x2

.field public static final GET_ARTWORK_KIND_EXACT:I = 0x0

.field public static final GET_ARTWORK_KIND_INSIDE_BOUNDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicUtils"

.field private static final _ArtworkExternalUri:Landroid/net/Uri;

.field private static final _BitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final _BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const-string v0, "content://media/external/audio/albumart"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_ArtworkExternalUri:Landroid/net/Uri;

    .line 62
    sget-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    sget-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LoadAudioID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z
    .locals 6

    if-nez p3, :cond_0

    .line 534
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lmobi/beyondpod/ui/core/MusicUtils;->getAudioCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p3

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object p2, p3

    goto/16 :goto_2

    :cond_0
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_8

    :try_start_1
    const-string p4, "title"

    .line 538
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 539
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->isTitleSameAsFileName(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    invoke-virtual {p0, p4}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    :cond_1
    const-string p4, "duration"

    .line 542
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    .line 544
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    :cond_2
    const-string p4, "mime_type"

    .line 546
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 547
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    invoke-virtual {p0, p4}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    .line 550
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasImage()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isUsingParentImage()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 553
    :cond_4
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/core/MusicUtils;->loadAudioThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;IIILandroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 556
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz p1, :cond_6

    .line 560
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    sget-object p4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 561
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {p1, p4, v0}, Lmobi/beyondpod/ui/core/MusicUtils;->deleteRecord(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    const/4 p0, 0x1

    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    .line 578
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    return p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_8
    :try_start_2
    const-string p1, "MusicUtils"

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No audio media scanner record exists for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_9

    .line 567
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    if-nez p3, :cond_a

    if-eqz p2, :cond_a

    .line 578
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_3
    const-string p4, "MusicUtils"

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load audio ID3 tags for track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "! reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 572
    invoke-static {p4, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_a

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    :goto_3
    const/4 p0, 0x0

    return p0

    :goto_4
    if-nez p3, :cond_b

    if-eqz p2, :cond_b

    .line 578
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p0
.end method

.method public static LoadID3InfoForTrack(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)V
    .locals 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 490
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string v2, "audio"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 491
    invoke-static {p0, p1, p2, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadAudioID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    move-result p2

    goto :goto_1

    .line 493
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string v2, "video"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 494
    invoke-static {p0, p1, p2, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadVideoID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    move-result p2

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const-string v2, "image"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 497
    invoke-static {p0, v0, p2, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadImageInfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    move-result p2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    const-string p2, "album_id"

    .line 500
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    .line 503
    invoke-static {p0, p1, v1, p3, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadAudioID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    goto :goto_0

    .line 505
    :cond_3
    invoke-static {p0, p1, v1, p3, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadVideoID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    if-nez p2, :cond_5

    .line 513
    invoke-static {p0, p1, v1, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadAudioID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    move-result p2

    if-nez p2, :cond_5

    .line 514
    invoke-static {p0, p1, v1, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadVideoID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 515
    invoke-static {p0, v0, v1, v1, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->LoadImageInfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z

    .line 519
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->contentMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 521
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static LoadImageInfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z
    .locals 2

    if-nez p3, :cond_0

    .line 679
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lmobi/beyondpod/ui/core/MusicUtils;->getImageCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p3

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object p2, p3

    goto/16 :goto_2

    :cond_0
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_5

    :try_start_1
    const-string p4, "title"

    .line 683
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 684
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->isTitleSameAsFileName(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    invoke-virtual {p0, p4}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    :cond_1
    const-string p4, "mime_type"

    .line 687
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 688
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    invoke-virtual {p0, p4}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 692
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    sget-object p4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 693
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {p1, p4, v0}, Lmobi/beyondpod/ui/core/MusicUtils;->deleteRecord(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 695
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    .line 712
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_5
    :try_start_2
    const-string p1, "MusicUtils"

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No image media scanner record exists for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 701
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    .line 712
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_3
    const-string p4, "MusicUtils"

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load image ID3 tags for track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "! reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 706
    invoke-static {p4, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0

    :goto_4
    if-nez p3, :cond_8

    if-eqz p2, :cond_8

    .line 712
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method

.method private static LoadVideoID3InfoFor(Lmobi/beyondpod/rsscore/Track;ZLandroid/net/Uri;Landroid/database/Cursor;Z)Z
    .locals 7

    if-nez p3, :cond_0

    .line 592
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lmobi/beyondpod/ui/core/MusicUtils;->getVideoCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p3

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object p2, p3

    goto/16 :goto_3

    :cond_0
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_9

    :try_start_1
    const-string p4, "title"

    .line 596
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 597
    invoke-static {p4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->isTitleSameAsFileName(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p0, p4}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    :cond_1
    const-string v0, "duration"

    .line 600
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 602
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    :cond_2
    const-string v2, "mime_type"

    .line 604
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 606
    invoke-virtual {p0, v2}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    :cond_3
    const-string v3, "_id"

    .line 608
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "MusicUtils"

    .line 610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found media scanner video record! id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", Dur:"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", mime:"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasImage()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isUsingParentImage()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 618
    :cond_4
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/core/MusicUtils;->loadVideoThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;IILandroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 620
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz p1, :cond_7

    .line 623
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->patchVideoFilesForMediaScanner()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "MusicUtils"

    const-string p4, "Sharing is disabled! Trying to hide downloaded file when deleting the media scanner record..."

    .line 626
    invoke-static {p1, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    new-instance p4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 633
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/ui/core/MusicUtils;->deleteRecord(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 635
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "MusicUtils"

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to rename back the video file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " after deleting the media scanner record!"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "MusicUtils"

    .line 639
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to hide video file "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for deleting the media scanner record"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    :goto_1
    const/4 p0, 0x1

    if-nez p3, :cond_8

    if-eqz p2, :cond_8

    .line 664
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    return p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_9
    :try_start_2
    const-string p1, "MusicUtils"

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No video media scanner record exists for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_a

    .line 653
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    if-nez p3, :cond_b

    if-eqz p2, :cond_b

    .line 664
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_3
    const-string p4, "MusicUtils"

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load video ID3 tags for track "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "! reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 658
    invoke-static {p4, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_b

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    :goto_4
    const/4 p0, 0x0

    return p0

    :goto_5
    if-nez p3, :cond_c

    if-eqz p2, :cond_c

    .line 664
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p0
.end method

.method public static audioTrackImageMatchesDatabase(Lmobi/beyondpod/rsscore/Track;Landroid/database/Cursor;)Z
    .locals 3

    .line 75
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isUsingParentImage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "album_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static deleteRecord(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 911
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 916
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v2, :cond_1

    const-string v1, "_data"

    goto :goto_0

    .line 918
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v2, :cond_2

    const-string v1, "_data"

    goto :goto_0

    .line 920
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v2, :cond_3

    const-string v1, "_data"

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v0

    invoke-virtual {p0, p1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v4, "MusicUtils"

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete record using provided path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "! Trying canonical path..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 933
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, p0

    move-object p2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p2, v4

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "MusicUtils"

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete using canonical path! reason: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 938
    invoke-static {p1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const-string p0, "MusicUtils"

    .line 943
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from the Media Database"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v2, v3, :cond_5

    move v0, v3

    :cond_5
    return v0

    :cond_6
    return v0

    :catch_2
    return v0
.end method

.method public static dumpAudioDB(Landroid/content/Context;)V
    .locals 10

    .line 847
    invoke-static {p0}, Lmobi/beyondpod/ui/core/MusicUtils;->getAllRecordsAudioCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 848
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "_id"

    .line 852
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "title"

    .line 853
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    .line 854
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string v5, "mime_type"

    .line 855
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    .line 856
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MusicUtils"

    .line 858
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "##### AUDIO RECORD => id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dur:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mime:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public static dumpAudioDBRecordCount(Landroid/content/Context;)I
    .locals 1

    .line 867
    invoke-static {p0}, Lmobi/beyondpod/ui/core/MusicUtils;->getAllRecordsAudioCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 870
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 873
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static dumpVideoDB(Landroid/content/Context;)V
    .locals 11

    const-string v0, "_data"

    const-string v1, "title"

    const-string v2, "duration"

    const-string v3, "_id"

    const-string v4, "mime_type"

    .line 826
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 829
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 830
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "title"

    .line 834
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    .line 835
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "mime_type"

    .line 836
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    .line 837
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MusicUtils"

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##### VIDEO RECORD => name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dur:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mime:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public static getAllRecordsAudioCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "_data"

    const-string v1, "title"

    const-string v2, "duration"

    const-string v3, "_id"

    const-string v4, "mime_type"

    .line 881
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 884
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getArtworkQuick(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;
    .locals 5

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_0
    const-string v1, "r"

    .line 392
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :try_start_1
    const-string p2, "MusicUtils"

    .line 396
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No audio thumbnail file exist for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 467
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :catch_1
    move-exception p2

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p4, v1, :cond_3

    .line 403
    :try_start_3
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    .line 467
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    return-object p2

    .line 411
    :cond_3
    :try_start_5
    sget-object v1, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 412
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 413
    sget-object v1, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v1, v2

    .line 414
    sget-object v3, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v3, v2

    move v4, v2

    :goto_0
    if-le v1, p2, :cond_4

    if-le v3, p3, :cond_4

    shl-int/lit8 v4, v4, 0x1

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    :cond_4
    sget-object v1, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 423
    sget-object v1, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 424
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez p4, :cond_6

    .line 429
    sget-object p4, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p4, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p4, p2, :cond_5

    sget-object p4, Lmobi/beyondpod/ui/core/MusicUtils;->_BitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p4, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p4, p3, :cond_6

    .line 432
    :cond_5
    invoke-static {v1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, v1, :cond_7

    .line 436
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_6
    move-object p2, v1

    :cond_7
    :goto_1
    if-nez p2, :cond_8

    const-string p3, "MusicUtils"

    .line 442
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed loading audio thumbnail for: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    if-eqz p0, :cond_9

    .line 467
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_9
    return-object p2

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_4

    :catch_4
    move-object p0, v0

    :catch_5
    :try_start_7
    const-string p1, "MusicUtils"

    const-string p2, "Unable to load album artwork! OutOfMemoryError"

    .line 459
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p0, :cond_a

    .line 467
    :try_start_8
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_a
    return-object v0

    :catch_7
    move-exception p2

    move-object p0, v0

    :goto_2
    :try_start_9
    const-string p3, "MusicUtils"

    .line 455
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while retreiving audio thumbnail for: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p3, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p0, :cond_c

    .line 467
    :goto_3
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_5

    :catch_8
    move-object p0, v0

    :catch_9
    :try_start_b
    const-string p2, "MusicUtils"

    .line 451
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find audio thumbnail file for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz p0, :cond_c

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p0, :cond_b

    .line 467
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 471
    :catch_a
    :cond_b
    throw p1

    :catch_b
    :cond_c
    :goto_5
    return-object v0
.end method

.method public static getAudioArtwork(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;III)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 238
    :try_start_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasImage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lmobi/beyondpod/ui/core/MusicUtils;->getAudioCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v1

    .line 244
    :try_start_1
    invoke-static/range {v2 .. v7}, Lmobi/beyondpod/ui/core/MusicUtils;->loadAudioThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;IIILandroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p0, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 249
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    invoke-static {p0, v1, p2, p3, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->getArtworkQuick(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz v0, :cond_5

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string p2, "MusicUtils"

    .line 258
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to get album artwork for"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "! reason: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 264
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    :cond_4
    :goto_4
    move-object p0, v0

    :cond_5
    :goto_5
    return-object p0
.end method

.method public static getAudioCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "title"

    const-string v3, "duration"

    const-string v4, "album_id"

    const-string v5, "mime_type"

    .line 720
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p2

    .line 728
    invoke-static/range {v6 .. v11}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 731
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_data=?"

    const/4 p2, 0x1

    new-array v10, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v10, p2

    const-string v11, "title_key"

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 735
    :cond_1
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "title_key"

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 741
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 742
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    .line 751
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getImageCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    const-string v0, "_data"

    const-string v1, "title"

    const-string v2, "_id"

    const-string v3, "mime_type"

    .line 794
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p2

    .line 801
    invoke-static/range {v4 .. v9}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 804
    :cond_0
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_data=?"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v8, v0

    const-string v9, "bucket_display_name"

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 810
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 811
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MusicUtils"

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found image record for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Location: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVideoArtwork(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasImage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lmobi/beyondpod/ui/core/MusicUtils;->getVideoCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v1

    .line 292
    :try_start_1
    invoke-static/range {v2 .. v7}, Lmobi/beyondpod/ui/core/MusicUtils;->loadVideoThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;IILandroid/database/Cursor;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    .line 297
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 298
    invoke-static/range {v2 .. v8}, Lmobi/beyondpod/ui/core/MusicUtils;->getVideoThumbnail(Landroid/content/Context;JZLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 309
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_3
    :try_start_3
    const-string p2, "MusicUtils"

    .line 303
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to get album artwork for"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "! reason: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-static {p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v1, :cond_2

    .line 309
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    :goto_5
    return-object v0
.end method

.method public static getVideoCursor(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "_data"

    const-string v1, "title"

    const-string v2, "duration"

    const-string v3, "_id"

    const-string v4, "mime_type"

    .line 759
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p2

    .line 766
    invoke-static/range {v5 .. v10}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 769
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_data=?"

    const/4 p2, 0x1

    new-array v9, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v9, p2

    const-string v10, "title"

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 772
    :cond_1
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "title"

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lmobi/beyondpod/ui/core/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 777
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 778
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVideoThumbnail(Landroid/content/Context;JZLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-gez v2, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x1

    .line 162
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    new-instance v1, Lmobi/beyondpod/ui/core/MusicUtils$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lmobi/beyondpod/ui/core/MusicUtils$1;-><init>(ZLandroid/content/Context;J)V

    .line 190
    invoke-virtual {v1}, Lmobi/beyondpod/ui/core/MusicUtils$1;->start()V

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, "MusicUtils"

    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find video thumbnail for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    if-nez p4, :cond_3

    if-lez p6, :cond_4

    if-lez p5, :cond_4

    .line 211
    :cond_3
    invoke-static {p0, p4, p5, p6}, Lmobi/beyondpod/ui/core/MusicUtils;->sizeAndFrame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p0

    :catch_0
    const-string p0, "MusicUtils"

    const-string p1, "Unable to load video thumbnail! OutOfMemoryError"

    .line 221
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_1
    return-object v0
.end method

.method static isTitleSameAsFileName(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadAudioThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;IIILandroid/database/Cursor;)Landroid/graphics/Bitmap;
    .locals 3

    .line 103
    sget-object v0, Lmobi/beyondpod/ui/core/MusicUtils;->_ArtworkExternalUri:Landroid/net/Uri;

    const-string v1, "album_id"

    .line 104
    invoke-interface {p5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 103
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 107
    invoke-static {p0, v0, p2, p3, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->getArtworkQuick(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "album art"

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 115
    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "/albumart"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    .line 118
    invoke-static {p0, p5, p2, p3, p4}, Lmobi/beyondpod/ui/core/MusicUtils;->getArtworkQuick(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    const-string p0, "track"

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V

    const-string p0, "parent feed"

    :goto_0
    const-string p2, "MusicUtils"

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "** track "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will be using ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] image"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static loadVideoThumbnail(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;IILandroid/database/Cursor;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "_id"

    .line 139
    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    int-to-long v1, p5

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 141
    invoke-static/range {v0 .. v6}, Lmobi/beyondpod/ui/core/MusicUtils;->getVideoThumbnail(Landroid/content/Context;JZLandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->setUseParentImage()V

    :goto_0
    return-object p0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    .line 894
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 899
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static sizeAndFrame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez p1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 327
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    if-gt v0, p2, :cond_3

    if-gt v1, p3, :cond_3

    .line 333
    div-int/lit8 v3, p2, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 334
    div-int/lit8 v3, p3, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 335
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 336
    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    if-gt v0, p2, :cond_5

    if-le v1, p3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v4

    goto :goto_4

    :cond_5
    :goto_3
    if-lt v0, v1, :cond_6

    sub-int/2addr v0, v1

    .line 343
    div-int/lit8 v0, v0, 0x2

    .line 344
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v0, v1

    invoke-direct {v5, v0, v3, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_6
    sub-int/2addr v1, v0

    .line 348
    div-int/lit8 v1, v1, 0x2

    .line 349
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v0

    invoke-direct {v5, v3, v1, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    :try_start_0
    const-string v0, "MusicUtils"

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resizing image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 359
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 360
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 361
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v6, p2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ge p2, p3, :cond_8

    :cond_7
    const p2, -0xbbbbbc

    .line 365
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 367
    :cond_8
    invoke-virtual {v1, p0, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_9

    const/4 p2, 0x0

    .line 370
    invoke-virtual {v1, p1, p2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "MusicUtils"

    const-string p1, "Unable to execute sizeAndFrame! OutOfMemoryError"

    .line 378
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static videoTrackImageMatchesDatabase(Lmobi/beyondpod/rsscore/Track;Landroid/database/Cursor;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isUsingParentImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "_id"

    .line 95
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackImagePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
