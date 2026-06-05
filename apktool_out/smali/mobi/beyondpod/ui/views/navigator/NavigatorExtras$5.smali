.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$5;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$5;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 p1, 0x1

    .line 109
    invoke-static {p1, p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    const/4 v0, 0x2

    .line 110
    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$5;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Guided Tour is now enabled!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return p1
.end method
