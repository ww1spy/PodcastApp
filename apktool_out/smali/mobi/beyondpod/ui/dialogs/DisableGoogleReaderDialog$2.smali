.class Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;
.super Ljava/lang/Object;
.source "DisableGoogleReaderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 112
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;

    .line 114
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->disconnectFromAggregator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10036f

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->finish()V

    return-void
.end method
