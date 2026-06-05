.class final Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Lmobi/beyondpod/ui/core/customtabs/CustomTabActivityHelper$CustomTabFallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->startChromeCustomTabActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/CharSequence;Lmobi/beyondpod/ui/core/customtabs/CustomTabsSession;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;->val$title:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 330
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$4;->val$title:Ljava/lang/CharSequence;

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/CharSequence;)Z

    return-void
.end method
