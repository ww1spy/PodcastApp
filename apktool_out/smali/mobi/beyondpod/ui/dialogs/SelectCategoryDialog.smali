.class public Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;
.super Landroid/app/AlertDialog;
.source "SelectCategoryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;
    }
.end annotation


# instance fields
.field private ListItemListener:Landroid/content/DialogInterface$OnClickListener;

.field private _ActionFooter:Landroid/view/View;

.field private _Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ButtonFooter:Landroid/widget/TextView;

.field public _Categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _CategorySelectedListener:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

.field private _Footer:Landroid/view/View;

.field private _ListView:Landroid/widget/ListView;

.field private _PreferredCategory:Ljava/lang/String;

.field private _Window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ButtonFooter:Landroid/widget/TextView;

    .line 41
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    .line 42
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_CategorySelectedListener:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    .line 231
    new-instance p1, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$5;-><init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->ListItemListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_CategorySelectedListener:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_CategorySelectedListener:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->refreshCategoryList()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Adapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->switchToButtonFooter()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->switchToActionFooter()V

    return-void
.end method

.method private createFooter()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$layout;->select_cat_dlg_cat_add:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    sget v1, Lmobi/beyondpod/R$id;->createCategory:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    sget v1, Lmobi/beyondpod/R$id;->qcc_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 102
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    sget v3, Lmobi/beyondpod/R$id;->qcc_add_cat_but:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 103
    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    sget v4, Lmobi/beyondpod/R$id;->qcc_cancel_add_cat:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 105
    new-instance v4, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;

    invoke-direct {v4, p0, v0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$3;-><init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    sget v1, Lmobi/beyondpod/R$id;->addButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ButtonFooter:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ButtonFooter:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$4;-><init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Footer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private refreshCategoryList()V
    .locals 4

    .line 209
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_PreferredCategory:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_PreferredCategory:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 216
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 223
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private switchToActionFooter()V
    .locals 3

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ButtonFooter:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    sget v1, Lmobi/beyondpod/R$id;->qcc_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 179
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, ""

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 188
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Window:Landroid/view/Window;

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 190
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Window:Landroid/view/Window;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private switchToButtonFooter()V
    .locals 3

    .line 196
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ButtonFooter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ActionFooter:Landroid/view/View;

    sget v1, Lmobi/beyondpod/R$id;->qcc_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 201
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public createDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_PreferredCategory:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->refreshCategoryList()V

    .line 65
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Categories:Ljava/util/ArrayList;

    const v2, 0x1090003

    const v3, 0x1020014

    invoke-direct {p1, v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Adapter:Landroid/widget/ArrayAdapter;

    .line 68
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    sget v0, Lmobi/beyondpod/R$string;->alert_dialog_cancel:I

    new-instance v1, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->ListItemListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    sget v0, Lmobi/beyondpod/R$string;->opml_import_dlg_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_ListView:Landroid/widget/ListView;

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->_Window:Landroid/view/Window;

    .line 86
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->createFooter()V

    return-object p1
.end method
