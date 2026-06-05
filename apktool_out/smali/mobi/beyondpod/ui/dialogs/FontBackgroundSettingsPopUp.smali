.class public Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;
.super Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;
.source "FontBackgroundSettingsPopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;
    }
.end annotation


# static fields
.field static final dialogTitle:Ljava/lang/String; = "Display Settings"


# instance fields
.field private _BGDarkButton:Landroid/widget/Button;

.field private _BGSepiaButton:Landroid/widget/Button;

.field private _BGWhiteButton:Landroid/widget/Button;

.field private _FontBackgroundSettingsChangedListener:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

.field private _FontSizeSwitcher:Landroid/widget/TextSwitcher;

.field private _InMin:Landroid/view/animation/Animation;

.field private _InPlus:Landroid/view/animation/Animation;

.field private _MinusButton:Landroid/widget/ImageView;

.field private _OnBackgroundColorChanged:Landroid/view/View$OnClickListener;

.field private _OnMinusListener:Landroid/view/View$OnClickListener;

.field private _OnPlusListener:Landroid/view/View$OnClickListener;

.field private _OutMin:Landroid/view/animation/Animation;

.field private _OutPlus:Landroid/view/animation/Animation;

.field private _PlusButton:Landroid/widget/ImageView;

.field private _SavedBackgroundColorIndex:I

.field private _SavedFontSizeIndex:I

.field private backgroundColorText:[Ljava/lang/String;

.field private fontSizeText:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;)V
    .locals 5

    const v0, 0x7f0c0071

    .line 79
    invoke-direct {p0, p1, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;)V

    .line 35
    new-instance v0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;-><init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnBackgroundColorChanged:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$2;-><init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnPlusListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$3;-><init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnMinusListener:Landroid/view/View$OnClickListener;

    .line 81
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontBackgroundSettingsChangedListener:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->fontSizeText:[Ljava/lang/String;

    .line 88
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultDocFontSize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    .line 90
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    const/4 v1, 0x2

    if-gez v0, :cond_0

    .line 91
    iput v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->backgroundColorText:[Ljava/lang/String;

    .line 94
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentTheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    .line 96
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 97
    iput v2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    :cond_1
    const v0, 0x7f090255

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_PlusButton:Landroid/widget/ImageView;

    const v0, 0x7f090254

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_MinusButton:Landroid/widget/ImageView;

    const v0, 0x7f09010d

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    new-instance v3, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;

    invoke-direct {v3, p0, p1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;-><init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->fontSizeText:[Ljava/lang/String;

    iget v4, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    const v0, 0x7f010014

    .line 117
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_InPlus:Landroid/view/animation/Animation;

    const v0, 0x7f010016

    .line 118
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OutPlus:Landroid/view/animation/Animation;

    const v0, 0x7f010013

    .line 120
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_InMin:Landroid/view/animation/Animation;

    const v0, 0x7f010015

    .line 121
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OutMin:Landroid/view/animation/Animation;

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_PlusButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnPlusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_MinusButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnMinusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005a

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGWhiteButton:Landroid/widget/Button;

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGWhiteButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnBackgroundColorChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGWhiteButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->backgroundColorText:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGWhiteButton:Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const p1, 0x7f09005b

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGSepiaButton:Landroid/widget/Button;

    .line 132
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGSepiaButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnBackgroundColorChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGSepiaButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->backgroundColorText:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGSepiaButton:Landroid/widget/Button;

    const v0, -0x102443

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const p1, 0x7f090059

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGDarkButton:Landroid/widget/Button;

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGDarkButton:Landroid/widget/Button;

    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OnBackgroundColorChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGDarkButton:Landroid/widget/Button;

    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->backgroundColorText:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_BGDarkButton:Landroid/widget/Button;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->backgroundColorText:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)I
    .locals 0

    .line 24
    iget p0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    return p0
.end method

.method static synthetic access$102(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;I)I
    .locals 0

    .line 24
    iput p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    return p1
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontBackgroundSettingsChangedListener:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)I
    .locals 0

    .line 24
    iget p0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    return p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->increaseFontSize()V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->decreaseFontSize()V

    return-void
.end method

.method private decreaseFontSize()V
    .locals 2

    .line 156
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_InMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OutMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->updateFontsize()V

    return-void
.end method

.method private increaseFontSize()V
    .locals 2

    .line 144
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    if-gtz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_InPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_OutPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    .line 151
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->updateFontsize()V

    return-void
.end method


# virtual methods
.method protected updateFontsize()V
    .locals 4

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontSizeSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->fontSizeText:[Ljava/lang/String;

    iget v2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontBackgroundSettingsChangedListener:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_FontBackgroundSettingsChangedListener:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    iget v2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedFontSizeIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    iget v3, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->_SavedBackgroundColorIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;->onFontSizeBackgroundColorChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
