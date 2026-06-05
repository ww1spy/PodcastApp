.class Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;
.super Landroid/animation/IntEvaluator;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeightEvaluator"
.end annotation


# instance fields
.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Landroid/animation/IntEvaluator;-><init>()V

    .line 355
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;->v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 364
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 365
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;->v:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 349
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/player/PlaylistFragment$HeightEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
