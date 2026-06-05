.class Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;
.super Landroid/os/Handler;
.source "HtmlViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/fragments/HtmlViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 452
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v1, ""

    .line 460
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->access$000(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
