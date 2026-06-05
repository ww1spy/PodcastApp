.class public Lmobi/beyondpod/rsscore/DownloadFolderPreference;
.super Landroid/preference/Preference;
.source "DownloadFolderPreference.java"


# static fields
.field public static final PREFERENCE_KEY:Ljava/lang/String; = "customSDCardLocation"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->refreshLatestBackup()V

    return-void
.end method

.method private refreshLatestBackup()V
    .locals 5

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->customSDCardLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->customSDCardLocation()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100281

    goto :goto_0

    :cond_1
    const v1, 0x7f10027e

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 68
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->customSDCardLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->refreshLatestBackup()V

    .line 76
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 5

    .line 82
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 84
    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->requestPermissionsIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c004e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09015b

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 91
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->customSDCardLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.g. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPreMPrimaryStorageMount()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10007b

    .line 95
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10007a

    .line 96
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100092

    new-instance v4, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;

    invoke-direct {v4, p0, v2}, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;-><init>(Lmobi/beyondpod/rsscore/DownloadFolderPreference;Landroid/widget/EditText;)V

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10008a

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->refreshLatestBackup()V

    return-void
.end method
