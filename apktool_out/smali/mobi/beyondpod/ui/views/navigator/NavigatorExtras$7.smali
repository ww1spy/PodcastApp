.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$7;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->refreshContent()V
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

    .line 160
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$7;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$7;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockBeyondPod(Landroid/content/Context;)V

    return-void
.end method
