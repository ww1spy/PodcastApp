.class public final Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;
.super Landroid/support/v4/app/Fragment;
.source "ConfigureAutomaticUpdatesFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "TestFragment:Content"

.field public static TAG:Ljava/lang/String; = "ConfigureAutomaticUpdatesFragment"


# instance fields
.field _AutomaticUpdates:Landroid/widget/RadioButton;

.field _Content:Landroid/view/View;

.field _DownloadOnWiFi:Landroid/widget/CheckBox;

.field _EnableAnalytics:Landroid/widget/CheckBox;

.field _ManualUpdates:Landroid/widget/RadioButton;

.field _UpdateGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->notifySelectionChanged()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;
    .locals 1

    .line 28
    sget-object v0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;-><init>()V

    return-object p0
.end method

.method private notifySelectionChanged()V
    .locals 4

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_AutomaticUpdates:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_DownloadOnWiFi:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_EnableAnalytics:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->downloadOptionsChanged(ZZZ)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "TestFragment:Content"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TestFragment:Content"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c006a

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    .line 50
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    const p2, 0x7f0900c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_DownloadOnWiFi:Landroid/widget/CheckBox;

    .line 51
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    const p2, 0x7f0900d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_EnableAnalytics:Landroid/widget/CheckBox;

    .line 52
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    const p2, 0x7f090051

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_AutomaticUpdates:Landroid/widget/RadioButton;

    .line 53
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    const p2, 0x7f090174

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_ManualUpdates:Landroid/widget/RadioButton;

    .line 54
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    const p2, 0x7f090050

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_UpdateGroup:Landroid/widget/RadioGroup;

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_DownloadOnWiFi:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_EnableAnalytics:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_AutomaticUpdates:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_DownloadOnWiFi:Landroid/widget/CheckBox;

    new-instance p2, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_EnableAnalytics:Landroid/widget/CheckBox;

    new-instance p2, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$2;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$2;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_UpdateGroup:Landroid/widget/RadioGroup;

    new-instance p2, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$3;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment$3;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->_Content:Landroid/view/View;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TestFragment:Content"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
