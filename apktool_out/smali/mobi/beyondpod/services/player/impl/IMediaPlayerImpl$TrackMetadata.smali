.class public Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;
.super Ljava/lang/Object;
.source "IMediaPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackMetadata"
.end annotation


# instance fields
.field public FeedName:Ljava/lang/String;

.field public MimeType:Ljava/lang/String;

.field public TrackDate:Ljava/util/Date;

.field public TrackImageUrl:Ljava/lang/String;

.field public TrackName:Ljava/lang/String;

.field public TrackURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackURL:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->MimeType:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackImageUrl:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->FeedName:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;->TrackDate:Ljava/util/Date;

    return-void
.end method
