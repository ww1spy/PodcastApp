.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

.field final synthetic val$thisItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/view/MenuItem;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;->val$thisItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;->val$thisItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 839
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$7;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->finish()V

    return-void
.end method
