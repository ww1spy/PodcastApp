.class public Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;
.super Landroid/preference/Preference;
.source "PodcastStorageFolderPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->refreshLatestBackup()V

    return-void
.end method

.method private refreshLatestBackup()V
    .locals 5

    .line 58
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->getAlternativePath()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v1}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->setEnabled(Z)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10027f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 66
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadRoot()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->getAlternativePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, v4}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static showMoveInstructionsDialog(Landroid/content/Context;Ljava/io/File;I)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100283

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p2, 0x0

    const v0, 0x7f100092

    .line 114
    invoke-virtual {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f10008a

    .line 115
    invoke-virtual {p0, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p2, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference$1;

    invoke-direct {p2, p1}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference$1;-><init>(Ljava/lang/String;)V

    const p1, 0x7f100272

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getAlternativePath()Ljava/io/File;
    .locals 4

    .line 90
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageFullDataPath()Ljava/io/File;

    move-result-object v1

    .line 95
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->versionSupportsPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->refreshLatestBackup()V

    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->getAlternativePath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100282

    invoke-static {v1, v0, v2}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->showMoveInstructionsDialog(Landroid/content/Context;Ljava/io/File;I)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->refreshLatestBackup()V

    return-void
.end method
