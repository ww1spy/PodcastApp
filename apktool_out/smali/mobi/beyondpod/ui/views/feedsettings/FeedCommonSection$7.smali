.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->validateControls(Lmobi/beyondpod/rsscore/Feed;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

.field final synthetic val$toDelete:Lmobi/beyondpod/rsscore/TrackList;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;->val$toDelete:Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 495
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;->val$toDelete:Lmobi/beyondpod/rsscore/TrackList;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method
