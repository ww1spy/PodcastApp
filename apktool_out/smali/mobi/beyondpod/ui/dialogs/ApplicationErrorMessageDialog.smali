.class public Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;
.super Landroid/app/Activity;
.source "ApplicationErrorMessageDialog.java"


# static fields
.field public static final BUTTON_TEXT:Ljava/lang/String; = "mobi.beyondpod.ButtonText"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "mobi.beyondpod.ErrorMessage"

.field public static final ERROR_PERMISSION_DENIED_MSG:Ljava/lang/String; = "mobi.beyondpod.permission.denied.msg"

.field public static final ERROR_PERMISSION_GRANTED_MSG:Ljava/lang/String; = "mobi.beyondpod.permission.granted.msg"

.field public static final ERROR_TYPE:Ljava/lang/String; = "mobi.beyondpod.ErrorType"

.field public static final ERROR_TYPE_ASK_PERMISSION:I = 0x6

.field public static final ERROR_TYPE_NO_PERMISSION:I = 0x5

.field public static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->handlePermissionRequest()V

    return-void
.end method

.method private handlePermissionRequest()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 125
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 126
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f5

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static requestPermissionsIfNeeded(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 167
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->versionSupportsPermissions()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mobi.beyondpod.ErrorMessage"

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.ErrorType"

    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 177
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string p1, "mobi.beyondpod.permission.granted.msg"

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_2
    if-eqz p3, :cond_4

    const-string p1, "mobi.beyondpod.permission.denied.msg"

    .line 185
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string p1, "mobi.beyondpod.ErrorMessage"

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000a0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 189
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_4
    :goto_2
    const/high16 p1, 0x10000000

    .line 193
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 62
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_3

    const-string v1, "mobi.beyondpod.ErrorMessage"

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "mobi.beyondpod.ErrorType"

    const/4 v2, -0x1

    .line 75
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 78
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->handlePermissionRequest()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const p1, 0x7f10008c

    .line 82
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const p1, 0x7f100092

    .line 94
    new-instance v1, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$3;-><init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string v2, "mobi.beyondpod.ButtonText"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;

    invoke-direct {v2, p0, v1}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;-><init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;I)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_6

    .line 137
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "mobi.beyondpod.permission.granted.msg"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f10009f

    .line 141
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "mobi.beyondpod.permission.denied.msg"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    const p1, 0x7f10009e

    .line 145
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, p2

    .line 149
    :goto_1
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p1, v0

    .line 152
    :cond_4
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x1

    .line 153
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->finish()V

    goto :goto_2

    .line 159
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_2
    return-void
.end method
