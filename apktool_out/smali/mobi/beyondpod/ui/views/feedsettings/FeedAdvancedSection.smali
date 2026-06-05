.class public Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;
.super Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;
.source "FeedAdvancedSection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedAdvancedSection"


# instance fields
.field private _AllowDeletions:Landroid/widget/CheckBox;

.field private _ClearCustomImage:Landroid/widget/Button;

.field private _ClearHistory:Landroid/widget/Button;

.field private _CustomImage:Landroid/widget/Button;

.field private _DownloadFolderMessage:Landroid/widget/TextView;

.field private _DownloadFolderTitle:Landroid/widget/TextView;

.field private _FeedImage:Landroid/widget/ImageView;

.field private _FeedImageBody:Landroid/view/View;

.field private _FeedImageMsg:Landroid/view/View;

.field private _FeedImageTitle:Landroid/view/View;

.field private _FeedPassword:Landroid/widget/EditText;

.field private _FeedUserName:Landroid/widget/EditText;

.field private _FingerprintType:Landroid/widget/Spinner;

.field private _ForceUniqueNames:Landroid/widget/CheckBox;

.field private _ForceUniqueNamesMsg:Landroid/widget/TextView;

.field private _GoogleProxyNumItemsArea:Landroid/view/View;

.field private _ItemFingerprintTypeOnLoad:I

.field private _ItemSortOrder:Landroid/widget/Spinner;

.field private _LongPodcasNamesHandling:Landroid/widget/Spinner;

.field private _MarkDownloaded:Landroid/widget/Button;

.field private _Name:Landroid/widget/EditText;

.field private _NumGreaderItemsToGet:Landroid/widget/EditText;

.field private _PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

.field private _PodcastDownloadFolder:Landroid/widget/EditText;

.field private _PodcastSort:Landroid/widget/Spinner;

.field private _PreferredEnclosure:Landroid/widget/Spinner;

.field private _SavePlayedPosition:Landroid/widget/CheckBox;

.field private _UseGoogleProxy:Landroid/widget/CheckBox;

.field private _VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

.field private _onSyncWithGoogleChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    .line 367
    new-instance p1, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_onSyncWithGoogleChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const p1, 0x7f09026d

    .line 66
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_StubId:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_GoogleProxyNumItemsArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/widget/EditText;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_NumGreaderItemsToGet:Landroid/widget/EditText;

    return-object p0
.end method

.method private refreshFeedImage(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->getFeedImageFor(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearCustomImage:Landroid/widget/Button;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->hasCustomImageForFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public hasFeedAddressChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initialize()V
    .locals 5

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_DownloadFolderTitle:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_DownloadFolderMessage:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_DownloadFolderMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 73
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Name:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedUserName:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedPassword:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastSort:Landroid/widget/Spinner;

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FingerprintType:Landroid/widget/Spinner;

    .line 84
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PreferredEnclosure:Landroid/widget/Spinner;

    .line 89
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearHistory:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_MarkDownloaded:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_CustomImage:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearCustomImage:Landroid/widget/Button;

    .line 94
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    .line 96
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x1090008

    const v2, 0x7f030042

    invoke-static {v0, v2, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v2, 0x1090009

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f03001d

    invoke-static {v0, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 106
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f03000d

    invoke-static {v0, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FingerprintType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f03001c

    invoke-static {v0, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 115
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f030034

    invoke-static {v0, v3, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 120
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PreferredEnclosure:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ForceUniqueNames:Landroid/widget/CheckBox;

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ForceUniqueNamesMsg:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImage:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageTitle:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageBody:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_InflatedContent:Landroid/view/View;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageMsg:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_GoogleProxyNumItemsArea:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_NumGreaderItemsToGet:Landroid/widget/EditText;

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_UseGoogleProxy:Landroid/widget/CheckBox;

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_UseGoogleProxy:Landroid/widget/CheckBox;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_onSyncWithGoogleChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public isURLFeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 144
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_NumGreaderItemsToGet:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_UseGoogleProxy:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v3, 0x7f030043

    .line 152
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getTrackSortOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 151
    invoke-static {v2, v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 156
    iget-object v4, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastSort:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 160
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v2

    iput v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemFingerprintTypeOnLoad:I

    .line 163
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v4, 0x7f03000c

    .line 164
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 163
    invoke-static {v2, v4, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result v2

    .line 166
    iget-object v4, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FingerprintType:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 168
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getLeftTruncateLongTrackNames()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAllowAutoTrackDeletions()I

    move-result v4

    if-eq v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getShouldRememberPlayedPosition()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result v2

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 181
    :pswitch_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 185
    :pswitch_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 177
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 190
    :goto_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedPlayer()I

    move-result v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->initialize(I)V

    .line 191
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->getVolumeBoost()I

    move-result v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->initialize(I)V

    .line 193
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PreferredEnclosure:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPreferredEnclosureIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ForceUniqueNames:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getForceUniqueTrackNames()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedUserName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->refreshFeedImage(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_3

    .line 201
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_UseGoogleProxy:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_NumGreaderItemsToGet:Landroid/widget/EditText;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumGReaderItemsToGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_MarkDownloaded:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearHistory:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->initialize(I)V

    .line 208
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->initialize(I)V

    :goto_3
    const/16 v0, 0x8

    if-nez p1, :cond_4

    .line 213
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageTitle:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageBody:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedImageMsg:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_4
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearHistory:Landroid/widget/Button;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ClearHistoryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_MarkDownloaded:Landroid/widget/Button;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_MarkDownloadedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_CustomImage:Landroid/widget/Button;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SelectCustomImageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ClearCustomImage:Landroid/widget/Button;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ClearCustomImageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_DownloadFolderMessage:Landroid/widget/TextView;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_DownloadFolderTitle:Landroid/widget/TextView;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method patchFeedUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method refresh(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->refreshFeedImage(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 5

    .line 240
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->updateFeedNameToFeedURLIfNeeded(Lmobi/beyondpod/rsscore/Feed;)V

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastDownloadFolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ForceUniqueNames:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    .line 249
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PreferredEnclosure:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setPreferredEnclosureIndex(I)V

    .line 251
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemSortOrder:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 262
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 258
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    .line 254
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v1, 0x7f030043

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PodcastSort:Landroid/widget/Spinner;

    .line 268
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 267
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexValueInNumArray(Landroid/content/Context;II)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 270
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v2, 0x7f03000c

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FingerprintType:Landroid/widget/Spinner;

    .line 274
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 273
    invoke-static {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexValueInNumArray(Landroid/content/Context;II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 276
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    .line 278
    :cond_1
    iget v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_ItemFingerprintTypeOnLoad:I

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getItemFingerprintAlgorithm()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 280
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->TAG:Ljava/lang/String;

    const-string v1, "feed item Fingeprint type changed! Deleting feed cache..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_PlaybackSpeed:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->getSelectedSpeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setFeedPlayer(I)V

    .line 286
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getAudioSettings()Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_VolumeBoost:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->getSelectedVolumeBoost()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->setVolumeBoost(I)V

    .line 288
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_LongPodcasNamesHandling:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setLeftTruncateLongTrackNames(Z)V

    .line 290
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_AllowDeletions:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 293
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_SavePlayedPosition:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setShouldRememberPlayedPosition(Z)V

    .line 295
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 297
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->refreshVirtualFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 300
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedUserName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_FeedPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 304
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setUserName(Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {p1, v4}, Lmobi/beyondpod/rsscore/Feed;->setUserName(Ljava/lang/String;)V

    .line 308
    :goto_2
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 309
    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/Feed;->setPassword(Ljava/lang/String;)V

    goto :goto_3

    .line 311
    :cond_6
    invoke-virtual {p1, v4}, Lmobi/beyondpod/rsscore/Feed;->setPassword(Ljava/lang/String;)V

    .line 313
    :goto_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_NumGreaderItemsToGet:Landroid/widget/EditText;

    .line 314
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumGReaderItemsToGet(I)V

    .line 316
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->_UseGoogleProxy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x5

    :cond_7
    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 0

    .line 328
    invoke-super {p0}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->show()V

    return-void
.end method

.method updateFeedNameToFeedURLIfNeeded(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public validateControls(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
