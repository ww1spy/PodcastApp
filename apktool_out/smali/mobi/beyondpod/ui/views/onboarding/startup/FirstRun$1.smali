.class Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$1;
.super Ljava/lang/Object;
.source "FirstRun.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->finish()V

    return-void
.end method
