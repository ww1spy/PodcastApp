.class public Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;
.super Landroid/app/Activity;
.source "BackupRestoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 39
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;->setContentView(I)V

    const p1, 0x7f090066

    .line 40
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f090065

    .line 41
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f10008a

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 43
    new-instance v0, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity$1;-><init>(Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
