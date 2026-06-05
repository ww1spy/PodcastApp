.class Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$1;->this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 346
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v0

    .line 347
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v1

    const-string v2, "DefaultNumberPodcastsToDownload"

    .line 349
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 351
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 350
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v2, "DefaultKeepAtMostPodcasts"

    .line 353
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    check-cast p2, Ljava/lang/String;

    .line 355
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 354
    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    const/4 p1, 0x1

    if-le v0, v1, :cond_2

    .line 359
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$1;->this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f100214

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_2
    return p1
.end method
