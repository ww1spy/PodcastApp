.class Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;
.super Ljava/lang/Object;
.source "NavigatorHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$200(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$200(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;->startStopUpdate()V

    :cond_0
    return-void
.end method
