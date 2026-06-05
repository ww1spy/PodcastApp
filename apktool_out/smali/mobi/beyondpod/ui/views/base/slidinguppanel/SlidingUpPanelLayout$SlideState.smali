.class final enum Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SlideState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

.field public static final enum EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    new-instance v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const-string v1, "ANCHORED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    const/4 v0, 0x3

    .line 106
    new-array v0, v0, [Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->EXPANDED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->ANCHORED:Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    aput-object v1, v0, v4

    sput-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->$VALUES:[Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 1

    .line 106
    const-class v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object p0
.end method

.method public static values()[Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;
    .locals 1

    .line 106
    sget-object v0, Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->$VALUES:[Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v0}, [Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/beyondpod/ui/views/base/slidinguppanel/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method
