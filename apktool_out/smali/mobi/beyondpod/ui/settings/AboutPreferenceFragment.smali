.class public Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutPreferenceFragment.java"


# static fields
.field private static final ABOUT_BEYOND_POD:Ljava/lang/String;

.field private static final EXPIRES:Ljava/lang/String;

.field private static final LICENSED_TO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100065

    .line 27
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->ABOUT_BEYOND_POD:Ljava/lang/String;

    const v0, 0x7f100069

    .line 28
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->EXPIRES:Ljava/lang/String;

    const v0, 0x7f10006a

    .line 29
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->LICENSED_TO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 36
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c001a

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090032

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->productVersionAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090031

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090030

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0xf

    .line 45
    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    const v1, 0x7f09002f

    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09002c

    .line 49
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 50
    new-instance v3, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;

    invoke-direct {v3, p0, v1}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;-><init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09002d

    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 61
    new-instance v3, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$2;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$2;-><init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09002e

    .line 70
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 71
    new-instance v3, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;

    invoke-direct {v3, p0, p1, v2}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;-><init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/view/LayoutInflater;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isTagUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getLicenseKey()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 103
    array-length v3, p1

    if-le v3, v2, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->LICENSED_TO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->EXPIRES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 108
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const v5, 0x80010

    .line 107
    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    new-instance p1, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;

    invoke-direct {p1, p0, v1}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;-><init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->ABOUT_BEYOND_POD:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->dumpWakeLocks()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-object p2
.end method
