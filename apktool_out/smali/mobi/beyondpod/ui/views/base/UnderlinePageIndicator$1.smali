.class Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->access$000(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->access$100(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->access$200(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->access$100(Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->invalidate()V

    if-lez v0, :cond_1

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;->this$0:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
