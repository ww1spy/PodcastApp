.class Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;
.super Ljava/lang/Object;
.source "PlaybackSpeedControl.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/PlaybackSpeedControl;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

.field final synthetic val$owner:Landroid/view/View;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;Landroid/view/View;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;->this$0:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;->val$owner:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .line 37
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;->val$owner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41e00000    # 28.0f

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method
