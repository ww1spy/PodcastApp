.class Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;
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

    .line 156
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$000(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)I

    move-result p1

    const v0, 0x7f080079

    const v1, 0x7f080078

    if-ne p1, v1, :cond_0

    .line 161
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$002(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;I)I

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$000(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    const v0, 0x7f08007a

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$002(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;I)I

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$002(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;I)I

    .line 167
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$100(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->access$000(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
