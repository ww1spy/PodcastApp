.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
