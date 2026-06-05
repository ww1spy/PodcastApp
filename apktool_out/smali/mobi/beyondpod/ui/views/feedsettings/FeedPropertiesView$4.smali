.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->deleteCustomImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    :cond_0
    return-void
.end method
