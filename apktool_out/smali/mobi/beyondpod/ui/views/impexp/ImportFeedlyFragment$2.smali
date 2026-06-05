.class Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;
.super Ljava/lang/Object;
.source "ImportFeedlyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showNotification(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->val$message:Ljava/lang/CharSequence;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;->val$message:Ljava/lang/CharSequence;

    .line 159
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 158
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
