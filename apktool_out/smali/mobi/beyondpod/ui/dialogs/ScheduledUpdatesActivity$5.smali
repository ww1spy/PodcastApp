.class Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;
.super Ljava/lang/Object;
.source "ScheduledUpdatesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 332
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 336
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    iget p1, p1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    const/16 v0, 0x63

    if-ge p1, v0, :cond_0

    .line 338
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    iget v0, p1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->_Interval:I

    .line 339
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity$5;->this$0:Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;->access$200(Lmobi/beyondpod/ui/dialogs/ScheduledUpdatesActivity;)V

    :cond_0
    return-void
.end method
