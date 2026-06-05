.class public Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;
.super Landroid/app/Activity;
.source "CrossDeviceSyncLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;,
        Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;
    }
.end annotation


# static fields
.field private static final BEYOND_POD_HELP:Ljava/lang/String;

.field private static final MENU_HELP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CrossDeviceSyncLoginActivity"


# instance fields
.field public final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private _Cancel:Landroid/widget/Button;

.field _Context:Landroid/content/Context;

.field private _DialogTitle:Landroid/widget/TextView;

.field private _InfoLabel:Landroid/widget/TextView;

.field private _Login:Landroid/widget/Button;

.field private _LoginPassword:Ljava/lang/String;

.field private _LoginProgress:Landroid/widget/ProgressBar;

.field private _LoginUserName:Ljava/lang/String;

.field private _ModeCreate:Z

.field private _Password:Landroid/widget/EditText;

.field private _RetypePassword:Landroid/widget/EditText;

.field private _UserName:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1001a4

    .line 38
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->BEYOND_POD_HELP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_UserName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_RetypePassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_ModeCreate:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    iput-object p0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Context:Landroid/content/Context;

    const p1, 0x7f0c0038

    .line 184
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->setContentView(I)V

    const p1, 0x7f090085

    .line 186
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_UserName:Landroid/widget/EditText;

    const p1, 0x7f090083

    .line 188
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Password:Landroid/widget/EditText;

    const p1, 0x7f090084

    .line 189
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_RetypePassword:Landroid/widget/EditText;

    const-string p1, "CREATE"

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_ModeCreate:Z

    const p1, 0x7f090082

    .line 193
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginProgress:Landroid/widget/ProgressBar;

    .line 194
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_LoginProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p1, 0x7f090066

    .line 196
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Cancel:Landroid/widget/Button;

    .line 197
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Cancel:Landroid/widget/Button;

    const v1, 0x7f10008a

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 198
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Cancel:Landroid/widget/Button;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090065

    .line 207
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Login:Landroid/widget/Button;

    .line 208
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Login:Landroid/widget/Button;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090081

    .line 262
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    const p1, 0x7f0900c6

    .line 263
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_DialogTitle:Landroid/widget/TextView;

    .line 265
    iget-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_ModeCreate:Z

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_DialogTitle:Landroid/widget/TextView;

    const v0, 0x7f1000ef

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_RetypePassword:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Login:Landroid/widget/Button;

    const v0, 0x7f1000f0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    const v0, 0x7f1000f5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_DialogTitle:Landroid/widget/TextView;

    const v1, 0x7f1000fc

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_RetypePassword:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_Login:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 278
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 284
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->_InfoLabel:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$3;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result p1

    if-nez p1, :cond_1

    .line 298
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f100041

    .line 304
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 311
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    return v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->finish()V

    return p2

    .line 319
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupRestoreFileURL()Landroid/net/Uri;

    move-result-object p1

    sget-object v1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->BEYOND_POD_HELP:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return p2
.end method
