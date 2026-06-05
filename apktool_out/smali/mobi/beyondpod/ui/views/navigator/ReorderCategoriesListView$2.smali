.class Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;
.super Ljava/lang/Object;
.source "ReorderCategoriesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->showHowToUseDragDropCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reloadContent()V
    .locals 2

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->access$100(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->access$100(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
