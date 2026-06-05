.class Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;
.super Ljava/lang/Object;
.source "ImportFeedlyFragment.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getFeedlyFeedList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 3

    .line 179
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    instance-of v0, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearAccountToken()V

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$100()Ljava/lang/String;

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

    return-void
.end method

.method public success(Lmobi/beyondpod/aggregators/GDataObject;)V
    .locals 2

    .line 198
    invoke-static {p1}, Lmobi/beyondpod/aggregators/feedly/Feedly;->buildFeedList(Lmobi/beyondpod/aggregators/GDataObject;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
