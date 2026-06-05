.class final Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference$1;
.super Ljava/lang/Object;
.source "PodcastStorageFolderPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference;->showMoveInstructionsDialog(Landroid/content/Context;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pathsFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference$1;->val$pathsFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 120
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    const-class v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "destination"

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PodcastStorageFolderPreference$1;->val$pathsFinal:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
