.class Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;
.super Ljava/lang/Object;
.source "CrossDeviceSyncLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

.field final synthetic val$forgot:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;->val$forgot:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 291
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEndpoint()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "forgotPassword"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;->val$forgot:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-void
.end method
