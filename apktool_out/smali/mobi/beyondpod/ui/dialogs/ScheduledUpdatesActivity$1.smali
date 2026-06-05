.class Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$1;
.super Ljava/lang/Object;
.source "ScheduledUpdatesActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .line 156
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41e00000    # 28.0f

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method
