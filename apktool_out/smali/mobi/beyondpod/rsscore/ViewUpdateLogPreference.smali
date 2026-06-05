.class public Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;
.super Landroid/preference/Preference;
.source "ViewUpdateLogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->refreshLatestLogDate()V

    return-void
.end method

.method private refreshLatestLogDate()V
    .locals 8

    .line 32
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getUpdateLogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    .line 36
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1003cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const v0, 0x80a11

    invoke-static {v4, v6, v7, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->refreshLatestLogDate()V

    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowUpdateLog(Landroid/content/Context;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/ViewUpdateLogPreference;->refreshLatestLogDate()V

    return-void
.end method
