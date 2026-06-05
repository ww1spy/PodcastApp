.class Lmobi/beyondpod/ui/settings/SettingsView$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/SettingsView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/SettingsView;

.field final synthetic val$environment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/SettingsView;Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/SettingsView$1;->this$0:Lmobi/beyondpod/ui/settings/SettingsView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/SettingsView$1;->val$environment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 269
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/SettingsView$1;->this$0:Lmobi/beyondpod/ui/settings/SettingsView;

    const-string v1, "support@beyondpod.mobi"

    const-string v2, "BeyondPod environment"

    iget-object v3, p0, Lmobi/beyondpod/ui/settings/SettingsView$1;->val$environment:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return-void
.end method
