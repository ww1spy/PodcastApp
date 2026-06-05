.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$5;->val$text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
