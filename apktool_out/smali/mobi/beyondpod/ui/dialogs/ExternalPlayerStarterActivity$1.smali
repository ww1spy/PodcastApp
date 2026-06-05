.class Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;
.super Ljava/lang/Object;
.source "ExternalPlayerStarterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

.field final synthetic val$external:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Landroid/content/Intent;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;->val$external:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;->val$external:Landroid/content/Intent;

    sget v2, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->REQUEST_CODE_CmdOpenExternalPlayer:I

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
