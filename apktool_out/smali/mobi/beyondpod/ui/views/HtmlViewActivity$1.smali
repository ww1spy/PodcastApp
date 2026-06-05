.class Lmobi/beyondpod/ui/views/HtmlViewActivity$1;
.super Ljava/lang/Object;
.source "HtmlViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/HtmlViewActivity;->requestOwnerActivityClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/HtmlViewActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity$1;->this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity$1;->this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->finish()V

    return-void
.end method
