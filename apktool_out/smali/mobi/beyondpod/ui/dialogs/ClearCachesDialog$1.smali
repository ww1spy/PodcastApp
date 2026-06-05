.class Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;
.super Ljava/lang/Object;
.source "ClearCachesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;

.field final synthetic val$dlgContent:Landroid/view/View;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;->val$dlgContent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteCacheForAllFeeds()I

    .line 67
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;->val$dlgContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
