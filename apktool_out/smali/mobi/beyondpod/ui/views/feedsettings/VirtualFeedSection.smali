.class public Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;
.super Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;
.source "VirtualFeedSection.java"


# static fields
.field private static final THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;


# instance fields
.field private _AllowDeletions:Landroid/widget/CheckBox;

.field private _Cat1Num:Landroid/view/View;

.field private _Cat2Num:Landroid/view/View;

.field private _Cat2Toggle:Landroid/widget/ImageButton;

.field private _Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

.field private _Category1:Landroid/widget/Spinner;

.field private _Category2:Landroid/widget/Spinner;

.field private _Handler:Landroid/os/Handler;

.field private _LongPodcasNamesHandling:Landroid/widget/Spinner;

.field private _Name:Landroid/widget/EditText;

.field private _OriginalDownloadFolder:Ljava/lang/String;

.field private _PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

.field private _PodcastDownloadFolder:Landroid/widget/EditText;

.field private _PodcastSort:Landroid/widget/Spinner;

.field private _SavePlayedPosition:Landroid/widget/CheckBox;

.field private _VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100224

    .line 50
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_OriginalDownloadFolder:Ljava/lang/String;

    const p1, 0x7f090270

    .line 69
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_StubId:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)Landroid/widget/Spinner;
    .locals 0

    .line 48
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->toggleCat2(Z)V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    return-object p0
.end method

.method private normalizeFolder(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    return-object v0

    .line 306
    :cond_0
    new-instance p1, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 316
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 319
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 327
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 300
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toggleCat2(Z)V
    .locals 4

    .line 356
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat1Num:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat2Num:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const p1, 0x7f0800c4

    goto :goto_2

    :cond_3
    const p1, 0x7f0800ae

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public hasFeedAddressChanged()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_OriginalDownloadFolder:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initialize()V
    .locals 5

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Handler:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastSort:Landroid/widget/Spinner;

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    .line 84
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category1:Landroid/widget/Spinner;

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat1Num:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat2Num:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Cat2Toggle:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    .line 99
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_InflatedContent:Landroid/view/View;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x1090008

    const v2, 0x7f030042

    invoke-static {v0, v2, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v2, 0x1090009

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 104
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f03001d

    invoke-static {v0, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    .line 113
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f09028e

    invoke-virtual {v0, v3}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 117
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 119
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 122
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForAssignment()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 124
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$2;-><init>(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isURLFeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 143
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_OriginalDownloadFolder:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f030043

    .line 150
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 149
    invoke-static {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 153
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 157
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLeftTruncateLongTrackNames()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 159
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getShouldRememberPlayedPosition()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 164
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 166
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 167
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPlayer()I

    move-result v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->initialize(I)V

    .line 171
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->getVolumeBoost()I

    move-result v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->initialize(I)V

    .line 173
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->toggleCat2(Z)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->initialize(I)V

    .line 178
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->initialize(I)V

    .line 180
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getPassedFeedUrl()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v1

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 191
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Categories:Lmobi/beyondpod/rsscore/categories/CategoryList;

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 200
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 202
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->toggleCat2(Z)V

    .line 205
    :goto_1
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method patchFeedUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method refresh(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    return-void
.end method

.method public saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setLeftTruncateLongTrackNames(Z)V

    .line 216
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setShouldRememberPlayedPosition(Z)V

    .line 221
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 223
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category1:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 225
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Category2:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setSecondary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 231
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f030043

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastSort:Landroid/widget/Spinner;

    .line 232
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 231
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexValueInNumArray(Landroid/content/Context;II)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 234
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 237
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->getSelectedSpeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPlayer(I)V

    .line 238
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->getSelectedVolumeBoost()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->setVolumeBoost(I)V

    return-void
.end method

.method public validateControls(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 5

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->normalizeFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 262
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v0, 0x7f100211

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 263
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 267
    :cond_1
    iget-object v4, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getVirtualFeedByDownloadPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 272
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    sget-object v1, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    .line 273
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    :cond_2
    return v3

    .line 250
    :cond_3
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v0, 0x7f100213

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 251
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v2
.end method
