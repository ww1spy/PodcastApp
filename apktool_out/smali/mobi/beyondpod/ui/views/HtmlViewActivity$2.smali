.class Lmobi/beyondpod/ui/views/HtmlViewActivity$2;
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

    .line 162
    iput-object p1, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity$2;->this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity$2;->this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->finish()V

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity$2;->this$0:Lmobi/beyondpod/ui/views/HtmlViewActivity;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    return-void
.end method
