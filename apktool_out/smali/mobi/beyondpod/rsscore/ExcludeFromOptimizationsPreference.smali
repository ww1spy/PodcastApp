.class public Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;
.super Landroid/preference/Preference;
.source "ExcludeFromOptimizationsPreference.java"


# static fields
.field public static KEY:Ljava/lang/String; = "ExcludeBatteryOptimizations"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->refreshSummary()V

    return-void
.end method

.method private refreshSummary()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWhiteListed()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1003c3

    goto :goto_0

    :cond_0
    const v1, 0x7f1003c4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->refreshSummary()V

    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 68
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWhiteListed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->refreshSummary()V

    return-void
.end method
