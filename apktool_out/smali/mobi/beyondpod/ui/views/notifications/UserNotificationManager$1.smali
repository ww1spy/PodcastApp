.class final Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;
.super Ljava/lang/Object;
.source "UserNotificationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;

.field final synthetic val$whichPref:I


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$cb:Landroid/widget/CheckBox;

    iput p2, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$whichPref:I

    iput-object p3, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$listener:Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 152
    iget-object p1, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->access$000()Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    move-result-object p1

    iget p2, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$whichPref:I

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->setPreference(ILjava/lang/String;)V

    .line 157
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$listener:Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;->val$listener:Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    :cond_1
    return-void
.end method
