.class public Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;
.super Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;
.source "FeedCommonSection.java"


# static fields
.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;


# instance fields
.field private _AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

.field private _Cat1Num:Landroid/view/View;

.field private _Cat2Num:Landroid/view/View;

.field private _Cat2Toggle:Landroid/widget/ImageButton;

.field private _Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

.field private _Category1:Landroid/widget/Spinner;

.field private _Category2:Landroid/widget/Spinner;

.field private _CustomizeDefaults:Landroid/view/View;

.field private _DeleteIfOlderThan:Landroid/widget/EditText;

.field private _DownloadActions:[Ljava/lang/String;

.field private _DownloadPodcasts:Landroid/widget/Spinner;

.field private _Handler:Landroid/os/Handler;

.field private _KeepAtMost:Landroid/widget/EditText;

.field private _NumPodcastsToDownload:Landroid/widget/EditText;

.field private _NumPodcastsToDownloadAction:Landroid/widget/TextView;

.field private _Old_keep_at_Most:I

.field private _Old_max_age:I

.field private _OriginalFeedUrl:Ljava/lang/String;

.field private _PodcastDefaults:Landroid/widget/TextView;

.field private _PodcastSectionFull:Landroid/view/View;

.field private _PodcastSectionSimple:Landroid/view/View;

.field private _ShowGlobals:Landroid/widget/TextView;

.field private _SpaceSaversArea:Landroid/view/View;

.field private _ToggleAdvancedPrefs:Landroid/widget/ImageView;

.field private _ToggleAdvancedPrefsHolder:Landroid/view/View;

.field private _ToggleAdvancedPrefsListener:Landroid/view/View$OnClickListener;

.field private _ToggleAdvancedPrefsMsg:Landroid/widget/TextView;

.field private _Url:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100224

    .line 57
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_keep_at_Most:I

    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_max_age:I

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_OriginalFeedUrl:Ljava/lang/String;

    const p1, 0x7f09026e

    .line 78
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_StubId:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/Spinner;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefs:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->toggleCat2(Z)V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionSimple:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->toggleDownloadOptions(Z)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)I
    .locals 0

    .line 54
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_SpaceSaversArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownloadAction:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    return-object p0
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsMsg:Landroid/widget/TextView;

    return-object p0
.end method

.method private generateSimplePodcastSectionText()Ljava/lang/String;
    .locals 13

    .line 562
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v0

    .line 564
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 564
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 567
    new-instance v11, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1869f

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 567
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    const-string v2, ""

    .line 572
    invoke-virtual {v11}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v3

    const-wide v5, 0x40f869f000000000L    # 99999.0

    cmpg-double v7, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v7, :cond_0

    .line 573
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1001f3

    new-array v6, v4, [Ljava/lang/Object;

    .line 574
    invoke-virtual {v11}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 573
    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 576
    :cond_0
    iget-object v5, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 576
    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v7, 0x2

    const v8, 0x7f0e0001

    if-ne v0, v4, :cond_3

    .line 587
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f1001f7

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 589
    invoke-virtual {v10}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v10, v8, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 590
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v1, v8, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object v2, v6, v7

    .line 587
    invoke-virtual {v0, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v0, v7, :cond_4

    .line 593
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f1001ff

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 594
    invoke-virtual {v10}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v10, v8, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 595
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v1, v8, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object v2, v6, v7

    .line 593
    invoke-virtual {v0, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 598
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001f5

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 600
    invoke-virtual {v6}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v6, v8, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    .line 598
    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 603
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001fd

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 605
    invoke-virtual {v6}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v6, v8, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    .line 603
    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method private getDownloadAction()I
    .locals 2

    .line 386
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadActions:[Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getDownloadActionPosition(I)I
    .locals 6

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadActions:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 396
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 406
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const-string v1, "feed:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "http"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "http://http"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1
.end method

.method private toggleCat2(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 546
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat1Num:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Num:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 549
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    const v0, 0x7f0800c4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat1Num:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Num:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 556
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private toggleDownloadOptions(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionSimple:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionFull:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastDefaults:Landroid/widget/TextView;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->generateSimplePodcastSectionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionSimple:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionFull:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public focusControl(I)V
    .locals 2

    const v0, 0x7f090136

    if-ne p1, v0, :cond_0

    .line 628
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefs:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 631
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->toggleDownloadOptions(Z)V

    .line 633
    :goto_0
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->focusControl(I)V

    return-void
.end method

.method public hasFeedAddressChanged()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_OriginalFeedUrl:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initialize()V
    .locals 5

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Handler:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Handler:Landroid/os/Handler;

    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadActions:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090142

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_SpaceSaversArea:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090137

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090138

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownloadAction:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090121

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090132

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090119

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f09011a

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f09011b

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090117

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat1Num:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090118

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Num:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090143

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$2;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f09011f

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_CustomizeDefaults:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090120

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastDefaults:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090114

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionFull:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090115

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastSectionSimple:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_CustomizeDefaults:Landroid/view/View;

    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090122

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f09028f

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsHolder:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f090290

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsMsg:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f09028e

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefs:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ShowGlobals:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ShowGlobals:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$4;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 165
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 167
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 170
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f030032

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 178
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    new-instance v1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 248
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    return-void
.end method

.method public isURLFeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 256
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_OriginalFeedUrl:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 260
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 263
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 265
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v2

    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadActionPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 267
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_max_age:I

    .line 270
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    iget v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_max_age:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_keep_at_Most:I

    .line 273
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    iget v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_keep_at_Most:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ShowGlobals:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->toggleCat2(Z)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getPassedFeedUrl()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v2

    double-to-int v2, v2

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DownloadPodcasts:Landroid/widget/Spinner;

    .line 291
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultPodcastDownloadAction()I

    move-result v2

    .line 290
    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadActionPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 293
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 294
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 297
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 299
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ShowGlobals:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->toggleCat2(Z)V

    .line 304
    :goto_0
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Lmobi/beyondpod/rsscore/Feed;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsListener:Landroid/view/View$OnClickListener;

    .line 338
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsHolder:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefs:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_ToggleAdvancedPrefsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_PodcastDefaults:Landroid/widget/TextView;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->generateSimplePodcastSectionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method patchFeedUrl(Ljava/lang/String;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method refresh(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->refresh(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 10

    .line 349
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 356
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 360
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    .line 364
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    .line 365
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 368
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    .line 372
    :goto_1
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1869f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 375
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 375
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    .line 378
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_2

    .line 381
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->updateFeedNameToFeedURLIfNeeded(Lmobi/beyondpod/rsscore/Feed;)V

    :goto_2
    return-void
.end method

.method public validateControls(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 432
    iget-object v2, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-lt v3, v6, :cond_9

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeCreateUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 442
    :cond_0
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_1

    .line 445
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    sget-object v2, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    .line 446
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 448
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return v4

    .line 452
    :cond_1
    iget-object v3, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 452
    invoke-static {v3, v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 454
    iget-object v6, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_NumPodcastsToDownload:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 454
    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 456
    iget-object v7, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_DeleteIfOlderThan:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x1869f

    .line 457
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 456
    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 459
    iget v8, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_keep_at_Most:I

    if-eq v8, v3, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v4

    .line 460
    :goto_0
    iget v9, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Old_max_age:I

    if-eq v9, v7, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v4

    .line 464
    :goto_1
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v10

    if-ne v10, v11, :cond_5

    :cond_4
    if-le v6, v3, :cond_5

    .line 467
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f100214

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 469
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_KeepAtMost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return v4

    :cond_5
    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    .line 476
    :cond_6
    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->getDownloadAction()I

    move-result v6

    if-ne v6, v11, :cond_8

    :cond_7
    if-eqz v1, :cond_8

    .line 480
    new-instance v6, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    int-to-long v13, v7

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v12, v6

    invoke-direct/range {v12 .. v20}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    invoke-static {v1, v3, v6, v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v3

    .line 483
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 485
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v6, 0x7f100215

    new-array v5, v5, [Ljava/lang/Object;

    .line 488
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    .line 487
    invoke-virtual {v2, v6, v5}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10000f

    new-instance v5, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;

    invoke-direct {v5, v0, v3}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$7;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Lmobi/beyondpod/rsscore/TrackList;)V

    .line 489
    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10008a

    const/4 v3, 0x0

    .line 497
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return v4

    .line 502
    :cond_8
    iget-object v3, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v2, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_AdvancedSettings:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->validateControls(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v1

    return v1

    .line 437
    :cond_9
    :goto_2
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f100212

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 438
    iget-object v1, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Url:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return v4
.end method
