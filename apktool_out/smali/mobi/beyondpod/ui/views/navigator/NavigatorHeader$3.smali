.class Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;
.super Ljava/lang/Object;
.source "NavigatorHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$200(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$200(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideReadFeeds()Z

    move-result v0

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;->showHideNewFeeds(Z)V

    .line 194
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->updateFeedFilter()V

    :cond_0
    return-void
.end method
