.class Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;
.super Ljava/lang/Object;
.source "SelectCategoryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 236
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$200(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 240
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p1, v0, :cond_1

    .line 242
    new-instance p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    iget-object v0, v0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 246
    :cond_1
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p2}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 247
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p2}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;->onCategorySelected(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_2
    return-void
.end method
