.class public Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CategoryPropertiesActivity.java"


# static fields
.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_OK:I = 0x0

.field private static final NEW_CATEGORY:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "CategoryPropertiesActivity"

.field private static final UNABLE_TO_MODIFY_CATEGORY:Ljava/lang/String;


# instance fields
.field _CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field _Name:Landroid/widget/EditText;

.field _SelectedColor:I

.field mColors:[I

.field private mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1000e1

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->UNABLE_TO_MODIFY_CATEGORY:Ljava/lang/String;

    const v0, 0x7f1000e0

    .line 57
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->NEW_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mColors:[I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->updateColorPalette()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->saveChanges()V

    return-void
.end method

.method private addOkCancelButtons()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001b

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090028

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$3;-><init>(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090027

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$4;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$4;-><init>(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x1a

    .line 196
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 200
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private saveChanges()V
    .locals 4

    .line 208
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->validateControls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 216
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v2, v3, :cond_1

    .line 218
    new-instance v2, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :try_start_1
    invoke-static {v2}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 223
    :cond_1
    :try_start_2
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v2}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v2, v0}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->setCategoryToUpdate(Ljava/lang/String;)V

    .line 231
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->renameCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 237
    :goto_0
    sget-object v2, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->TAG:Ljava/lang/String;

    sget-object v3, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->UNABLE_TO_MODIFY_CATEGORY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :cond_3
    :goto_1
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_SelectedColor:I

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setCategoryColor(Lmobi/beyondpod/rsscore/categories/FeedCategory;I)V

    .line 243
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 244
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V

    .line 246
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->finish()V

    return-void
.end method

.method private updateColorPalette()V
    .locals 3

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mColors:[I

    iget v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_SelectedColor:I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_SelectedColor:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->drawPalette([II)V

    return-void
.end method

.method private validateControls()Z
    .locals 5

    .line 263
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v1, v4, :cond_1

    const v0, 0x7f1000df

    .line 274
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 279
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_2
    :goto_0
    const v0, 0x7f1000de

    .line 268
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2
.end method


# virtual methods
.method loadColors()V
    .locals 3

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mColors:[I

    .line 149
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;-><init>(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->init(ILmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 158
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->updateColorPalette()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "categoryValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object p1, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0c0033

    .line 82
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_2

    .line 90
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->addOkCancelButtons()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 94
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    :cond_3
    :goto_0
    const v0, 0x7f0900ad

    .line 98
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    .line 100
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq p1, v0, :cond_4

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 109
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    sget-object v0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->NEW_CATEGORY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f090098

    .line 113
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    .line 115
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 117
    array-length v0, p1

    if-lez v0, :cond_5

    .line 119
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mColors:[I

    const/4 v0, 0x0

    .line 120
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 122
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->mColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    :cond_5
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_CurrentCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->setColor(I)V

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->loadColors()V

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    new-instance v0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;-><init>(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 287
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f100094

    .line 290
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0800d7

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x6

    .line 291
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f10008a

    const/4 v3, 0x1

    .line 292
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0800b5

    .line 293
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 294
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method public onDestroy()V
    .locals 0

    .line 258
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->finish()V

    return v2

    .line 312
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->saveChanges()V

    return v2

    .line 304
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setColor(I)V
    .locals 0

    .line 251
    iput p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_SelectedColor:I

    .line 252
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->_Name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method
