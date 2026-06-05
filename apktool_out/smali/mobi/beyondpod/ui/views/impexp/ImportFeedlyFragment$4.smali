.class Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;
.super Ljava/lang/Object;
.source "ImportFeedlyFragment.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->onOAuthAccessGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Landroid/app/Activity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 3

    .line 247
    instance-of v0, p1, Landroid/accounts/OperationCanceledException;

    if-eqz v0, :cond_0

    .line 248
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->val$act:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 253
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->val$act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ForLoginOnly:Z

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->val$act:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 267
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->val$act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$600(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
