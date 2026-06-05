.class Lmobi/beyondpod/ui/views/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 3

    .line 181
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/Workspace;->access$000(Lmobi/beyondpod/ui/views/Workspace;)Lmobi/beyondpod/ui/views/player/PlayerPanel;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onPlayerCollapsed()V

    .line 182
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    new-instance v0, Lmobi/beyondpod/ui/views/Workspace$1$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Workspace$1$2;-><init>(Lmobi/beyondpod/ui/views/Workspace$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lmobi/beyondpod/ui/views/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 3

    .line 165
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/Workspace;->access$000(Lmobi/beyondpod/ui/views/Workspace;)Lmobi/beyondpod/ui/views/player/PlayerPanel;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onPlayerExpanded()V

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    new-instance v0, Lmobi/beyondpod/ui/views/Workspace$1$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Workspace$1$1;-><init>(Lmobi/beyondpod/ui/views/Workspace$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lmobi/beyondpod/ui/views/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x7

    .line 175
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 5

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    .line 135
    invoke-static {}, Lmobi/beyondpod/ui/views/base/TitleBar;->constructActionBarColor()I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->createStatusBarColorFromCategoryColor(I)I

    move-result p1

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 138
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 137
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    float-to-double v0, p2

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 146
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->PlayerStatusBarColor:I

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/Workspace;->_Owner:Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 151
    invoke-static {v1, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 150
    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 158
    :cond_2
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$1;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/Workspace;->access$000(Lmobi/beyondpod/ui/views/Workspace;)Lmobi/beyondpod/ui/views/player/PlayerPanel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->onPlayerSlide(F)V

    return-void
.end method
