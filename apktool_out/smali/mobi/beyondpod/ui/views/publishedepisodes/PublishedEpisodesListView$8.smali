.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->markAllAsReadOrPlayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 1

    .line 1195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SetAllItemsAsRead()V

    .line 1198
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleGoogleSynUpdateIfNeeded()V

    .line 1199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$1500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    :cond_0
    return-void
.end method
