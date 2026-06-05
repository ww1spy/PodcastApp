.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
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

    .line 171
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 209
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_IsPageSwitching:Z

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 199
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$400(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_IsPageSwitching:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 201
    sget p1, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->VIBRATE_SHORT:I

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->vibrate(I)V

    .line 202
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$402(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Z)Z

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_DataSource:Lmobi/beyondpod/ui/views/contentview/IDataSource;

    invoke-interface {v1, p1}, Lmobi/beyondpod/ui/views/contentview/IDataSource;->getItemAtPosition(I)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 180
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->markAsReadOnOpen()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 181
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->markAsReadOnOpen()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_CurrentRssItem:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 182
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    if-nez p1, :cond_2

    .line 184
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$200(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Z)V

    .line 187
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->show()V

    .line 192
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$300(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    .line 193
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$3;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->invalidateOptionsMenu()V

    return-void
.end method
