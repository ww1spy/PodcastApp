.class Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;
.super Ljava/lang/Object;
.source "ExportToOPMLDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x0

    .line 68
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeyondPodFeeds.opml"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsOpml(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_Context:Landroid/content/Context;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_Context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
