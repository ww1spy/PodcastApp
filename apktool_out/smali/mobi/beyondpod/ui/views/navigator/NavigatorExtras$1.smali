.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;
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

    .line 29
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;->startEditMode()V

    :cond_0
    return-void
.end method
