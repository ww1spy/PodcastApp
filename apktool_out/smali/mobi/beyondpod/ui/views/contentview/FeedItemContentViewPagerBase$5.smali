.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->wireViewPager(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectionChanged()V
    .locals 2

    .line 522
    sget-object v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->TAG:Ljava/lang/String;

    const-string v1, "Underlying feed has changed! Refreshing..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$602(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;I)I

    .line 524
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$5;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$700(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
