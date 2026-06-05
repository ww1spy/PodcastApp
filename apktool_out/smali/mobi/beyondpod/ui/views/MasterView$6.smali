.class Lmobi/beyondpod/ui/views/MasterView$6;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/MasterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationErrorEvent(Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;)V
    .locals 5

    .line 244
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/MasterView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    iget v2, p1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;->type:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    return-void

    .line 286
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    const v0, 0x7f100245

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 279
    :pswitch_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :pswitch_4
    const p1, 0x7f1000a3

    .line 268
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v2, "mobi.beyondpod.ErrorMessage"

    .line 269
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const p1, 0x7f1000a4

    .line 271
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "mobi.beyondpod.ButtonText"

    .line 272
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "mobi.beyondpod.ErrorType"

    .line 274
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    const p1, 0x7f1000a7

    .line 253
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 256
    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/MasterView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000a9

    .line 257
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    .line 256
    invoke-static {v2, v3, v4, v4}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->requestPermissionsIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const p1, 0x7f1000aa

    .line 261
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    const-string v0, "mobi.beyondpod.ErrorMessage"

    .line 263
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    .line 294
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$6;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/MasterView;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
