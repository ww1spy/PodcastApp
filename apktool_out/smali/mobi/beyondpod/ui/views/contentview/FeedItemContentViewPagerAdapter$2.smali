.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerAdapter.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->createWebView()Lmobi/beyondpod/ui/views/base/WebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "attachment"

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p3

    .line 284
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 288
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object p3, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    move-result-object p3

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/high16 p5, 0x10000

    invoke-virtual {p3, p2, p5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 297
    :try_start_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;)Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    move-result-object p3

    invoke-virtual {p3, p2}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 302
    invoke-static {}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerAdapter;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Activity not found for "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " over "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 302
    invoke-static {p3, p4, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    return-void
.end method
