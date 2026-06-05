.class Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;
.super Ljava/lang/Object;
.source "SelectCategoryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->createDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;->access$000(Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog;)Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;->onCategorySelected(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_0
    return-void
.end method
