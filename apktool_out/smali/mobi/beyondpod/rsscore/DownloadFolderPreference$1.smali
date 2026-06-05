.class Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;
.super Ljava/lang/Object;
.source "DownloadFolderPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/DownloadFolderPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/DownloadFolderPreference;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/DownloadFolderPreference;Landroid/widget/EditText;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->this$0:Lmobi/beyondpod/rsscore/DownloadFolderPreference;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 106
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCustomSDCardLocation(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->this$0:Lmobi/beyondpod/rsscore/DownloadFolderPreference;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100284

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->showMoveInstructionsDialog(Landroid/content/Context;Ljava/io/File;I)V

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->this$0:Lmobi/beyondpod/rsscore/DownloadFolderPreference;

    .line 110
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/DownloadFolderPreference$1;->this$0:Lmobi/beyondpod/rsscore/DownloadFolderPreference;

    .line 111
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100280

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    .line 111
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 127
    :cond_2
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setCustomSDCardLocation(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
