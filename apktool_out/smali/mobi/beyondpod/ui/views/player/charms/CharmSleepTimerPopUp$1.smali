.class Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;
.super Ljava/lang/Object;
.source "CharmSleepTimerPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;)Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;)Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;->onSleepTimeSelected(I)V

    .line 110
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->dismiss()V

    return-void
.end method
