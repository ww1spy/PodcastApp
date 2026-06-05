.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;
.super Landroid/os/Handler;
.source "MoveFilesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 294
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move failed!\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 297
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto/16 :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 254
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 240
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    goto/16 :goto_0

    .line 259
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v0, 0x7f10026a

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto/16 :goto_0

    .line 236
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    goto :goto_0

    .line 274
    :pswitch_5
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v3, 0x7f100277

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 277
    invoke-static {v5}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$400(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 276
    invoke-virtual {v0, v3, v4}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 278
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto :goto_0

    .line 232
    :pswitch_6
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto :goto_0

    .line 269
    :pswitch_7
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v0, 0x7f100273

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto :goto_0

    .line 264
    :pswitch_8
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v0, 0x7f100279

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 265
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto :goto_0

    .line 282
    :pswitch_9
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :pswitch_a
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$900(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    goto :goto_0

    .line 290
    :pswitch_b
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    .line 300
    :cond_1
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
