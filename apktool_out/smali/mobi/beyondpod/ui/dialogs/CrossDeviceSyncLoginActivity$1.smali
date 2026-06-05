.class Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;
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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->finish()V

    return-void
.end method
