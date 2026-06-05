.class Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;
.super Ljava/lang/Object;
.source "ScheduledUpdatesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;
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

    .line 314
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 318
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$4;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    iget-object p2, p2, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Active:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->access$100(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;Z)V

    return-void
.end method
