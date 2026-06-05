.class Lmobi/beyondpod/ui/views/MasterView$10;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MasterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView;->initializeDrawers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .line 891
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 894
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    .line 895
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->invalidateOptionsMenu()V

    goto :goto_0

    .line 898
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    .line 901
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    .line 903
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->notifyDrawerClosed()V

    .line 904
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->updateFlingSensitivity()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 909
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    .line 910
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->invalidateOptionsMenu()V

    goto :goto_0

    .line 913
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    .line 915
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    .line 917
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->notifyDrawerOpened()V

    .line 919
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->isPlaylistDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 920
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    .line 922
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 923
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    .line 926
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->isPlaylistDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    invoke-static {p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 927
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 929
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$10;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MasterView;->access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->updateFlingSensitivity()V

    return-void
.end method
