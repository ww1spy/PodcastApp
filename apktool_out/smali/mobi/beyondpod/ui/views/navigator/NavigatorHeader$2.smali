.class Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;
.super Ljava/lang/Object;
.source "NavigatorHeader.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


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

    .line 178
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    const v2, 0x7f0c008f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
