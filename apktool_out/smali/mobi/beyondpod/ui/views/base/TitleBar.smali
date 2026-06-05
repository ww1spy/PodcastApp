.class public Lmobi/beyondpod/ui/views/base/TitleBar;
.super Ljava/lang/Object;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
    }
.end annotation


# static fields
.field public static PlayerStatusBarColor:I = 0x0

.field private static _Category:Landroid/graphics/drawable/Drawable; = null

.field private static _CategoryColor:I = -0x1

.field private static _Default:Landroid/graphics/drawable/Drawable;

.field private static _DefaultColor:I

.field private static _Home:Landroid/graphics/drawable/Drawable;

.field private static _HomeColor:I


# instance fields
.field private _Owner:Lmobi/beyondpod/ui/views/MasterView;

.field private _Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

.field private _episodeOptions:[Ljava/lang/String;

.field private _previousSubtitle:Ljava/lang/String;

.field private _subTitleLine:Landroid/widget/TextSwitcher;

.field private _titleGroup:Landroid/view/View;

.field private _titleLine:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xf0

    .line 50
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lmobi/beyondpod/ui/views/base/TitleBar;->PlayerStatusBarColor:I

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_episodeOptions:[Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c001c

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleLine:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    const v1, 0x7f090271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    new-instance v1, Lmobi/beyondpod/ui/views/base/TitleBar$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/base/TitleBar$1;-><init>(Lmobi/beyondpod/ui/views/base/TitleBar;Landroid/view/LayoutInflater;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 81
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 83
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    new-instance v0, Lmobi/beyondpod/ui/views/base/TitleBar$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/base/TitleBar$2;-><init>(Lmobi/beyondpod/ui/views/base/TitleBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    const v0, 0x7f06002a

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_HomeColor:I

    .line 112
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    const v0, 0x7f06002d

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_DefaultColor:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/TitleBar;)Landroid/widget/TextSwitcher;
    .locals 0

    .line 42
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/TitleBar;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/base/TitleBar;)Lmobi/beyondpod/ui/views/MasterView;
    .locals 0

    .line 42
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    return-object p0
.end method

.method public static constructActionBarColor()I
    .locals 2

    .line 168
    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_DefaultColor:I

    .line 170
    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 173
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->actionBarUsesCategoryColor()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_HomeColor:I

    goto :goto_0

    :cond_1
    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_DefaultColor:I

    :cond_2
    :goto_0
    return v0
.end method

.method private getDrawableForColor(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 188
    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_DefaultColor:I

    if-ne p1, v0, :cond_1

    .line 190
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Default:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_DefaultColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Default:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_0
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Default:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 197
    :cond_1
    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_HomeColor:I

    if-ne p1, v0, :cond_3

    .line 199
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Home:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 201
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_HomeColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Home:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_2
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Home:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 206
    :cond_3
    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_CategoryColor:I

    if-ne v0, p1, :cond_4

    sget-object v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Category:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 208
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Category:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 212
    :cond_4
    sput p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_CategoryColor:I

    .line 213
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->_CategoryColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Category:Landroid/graphics/drawable/Drawable;

    .line 214
    sget-object p1, Lmobi/beyondpod/ui/views/base/TitleBar;->_Category:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_previousSubtitle:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_previousSubtitle:Ljava/lang/String;

    .line 145
    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 146
    :cond_2
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_subTitleLine:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_2
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_previousSubtitle:Ljava/lang/String;

    return-void
.end method

.method private updateActionBarBackground()V
    .locals 3

    .line 155
    invoke-static {}, Lmobi/beyondpod/ui/views/base/TitleBar;->constructActionBarColor()I

    move-result v0

    .line 156
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/MasterView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/base/TitleBar;->getDrawableForColor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    .line 162
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lmobi/beyondpod/ui/views/base/TitleBar;->PlayerStatusBarColor:I

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/UIUtils;->createStatusBarColorFromCategoryColor(I)I

    move-result v0

    .line 161
    :goto_0
    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/base/UIUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public setTitle(Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V
    .locals 3

    .line 117
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    .line 119
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/TitleBar;->updateActionBarBackground()V

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget p1, p1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleLine:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->subTitle:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleLine:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_episodeOptions:[Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget v1, v1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    aget-object p1, p1, v1

    .line 131
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget v2, v2, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/TitleBar;->setSubtitle(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_titleGroup:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget v1, v1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar;->_Owner:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MasterView;->supportInvalidateOptionsMenu()V

    return-void
.end method
