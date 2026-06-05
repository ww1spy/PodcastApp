.class Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;
.super Ljava/lang/Object;
.source "DeletePodcastDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 131
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->access$200(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V

    .line 137
    invoke-static {p2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    :cond_1
    return-void
.end method
