.class Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;
.super Ljava/lang/Object;
.source "DeleteCategoryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->deleteCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 75
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->deleteScheduledTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 79
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->onCategoryDeleted(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 81
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->autoSaveRepository()V

    .line 82
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V

    return-void
.end method
