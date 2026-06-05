.class Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;
.super Ljava/lang/Object;
.source "SelectCategoryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->createFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

.field final synthetic val$edit_text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->val$edit_text:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->val$edit_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lmobi/beyondpod/R$string;->category_properties_vld_NameEmpty:I

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_1

    .line 123
    sget v0, Lmobi/beyondpod/R$string;->category_properties_vld_categoryExists:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 132
    :cond_2
    new-instance v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$100(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$200(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$300(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    return-void
.end method
