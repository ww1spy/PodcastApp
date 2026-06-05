.class Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;
.super Ljava/lang/Object;
.source "PlaylistViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListDataItem"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->name:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    return-void
.end method
