.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 124
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;->isEditingFeeds()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddNewCategory(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenAddFeedDialog()V

    :goto_0
    return-void
.end method
