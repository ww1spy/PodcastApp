.class Lmobi/beyondpod/ui/views/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->handleOptionsMenu(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$6;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 678
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->syncLogFilePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdViewFileContent(Ljava/lang/String;Z)V

    return-void
.end method
