.class Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$3;
.super Ljava/lang/Object;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->toggleProgressFooter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$3;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 224
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$3;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
