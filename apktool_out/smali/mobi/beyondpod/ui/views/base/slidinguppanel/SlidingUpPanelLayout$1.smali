.class synthetic Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mobi$beyondpod$ui$views$base$slidinguppanel$SlidingUpPanelLayout$SlideState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 634
    invoke-static {}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->values()[Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$mobi$beyondpod$ui$views$base$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    :try_start_0
    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$mobi$beyondpod$ui$views$base$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$1;->$SwitchMap$mobi$beyondpod$ui$views$base$slidinguppanel$SlidingUpPanelLayout$SlideState:[I

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
