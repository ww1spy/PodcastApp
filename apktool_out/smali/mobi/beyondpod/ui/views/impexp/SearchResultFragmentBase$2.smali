.class Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$2;
.super Ljava/lang/Object;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 205
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$2;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$2;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    return-void
.end method
