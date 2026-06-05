.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "FeedItemContentViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$WebChrome;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onWebPageProgress(Landroid/webkit/WebView;I)V

    return-void
.end method
