.class Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;
.super Ljava/lang/Object;
.source "GuidedTour.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iput p2, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;->val$type:I

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->access$000(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V

    return-void
.end method
