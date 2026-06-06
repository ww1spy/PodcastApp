.class public Lmobi/beyondpod/ui/views/Splash;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Splash.java"


# static fields
.field public static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5

.field private static final TAG:Ljava/lang/String; = "Splash"


# instance fields
.field private _CancelBtn:Landroid/widget/Button;

.field private _ExitBtn:Landroid/widget/Button;

.field _ExitListener:Landroid/view/View$OnClickListener;

.field private _External:Landroid/widget/RadioButton;

.field private _ExternalAvailable:Z

.field private _ExternalSDCardMount:Ljava/io/File;

.field private _Internal:Landroid/widget/RadioButton;

.field private _InternalAvailable:Z

.field private _InternalSDCardMount:Ljava/io/File;

.field private _ResetBtn:Landroid/widget/Button;

.field private _SDCardSelector:Landroid/widget/RadioGroup;

.field private _StatusMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 272
    new-instance v0, Lmobi/beyondpod/ui/views/Splash$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Splash$3;-><init>(Lmobi/beyondpod/ui/views/Splash;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/Splash;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Splash;->initAndRestartSplash()V

    return-void
.end method

.method private initAndRestartSplash()V
    .locals 3

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->initialize(Landroid/content/Context;)Z

    .line 289
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->finish()V

    .line 291
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v2, "failed to initialize Configuration"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    # DIAG: Toast to confirm Splash.onCreate() started
    const-string v0, "BP: Splash started"
    const/4 v1, 0x1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    sget-object p1, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v0, "Splash activity created!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    # DIAG: Toast - Splash isInitialized()=true, about to start MasterView
    const-string v4, "BP: Splash isInit=true, starting MV"
    const/4 v5, 0x1
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v4
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 120
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Splash;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->finish()V

    return-void

    .line 126
    :cond_0
    sget v3, Lmobi/beyondpod/R$layout;->splash:I

    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/Splash;->setContentView(I)V

    .line 128
    sget v3, Lmobi/beyondpod/R$id;->versionInfo:I

    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 129
    sget v4, Lmobi/beyondpod/R$id;->status:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    .line 130
    sget v4, Lmobi/beyondpod/R$id;->btn_reset:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    .line 131
    iget-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    new-instance v5, Lmobi/beyondpod/ui/views/Splash$1;

    invoke-direct {v5, p0}, Lmobi/beyondpod/ui/views/Splash$1;-><init>(Lmobi/beyondpod/ui/views/Splash;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v4, Lmobi/beyondpod/R$id;->btn_cancel:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_CancelBtn:Landroid/widget/Button;

    .line 146
    iget-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_CancelBtn:Landroid/widget/Button;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v4, Lmobi/beyondpod/R$id;->btn_exit:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitBtn:Landroid/widget/Button;

    .line 149
    iget-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitBtn:Landroid/widget/Button;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget v4, Lmobi/beyondpod/R$id;->chooseSD:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_SDCardSelector:Landroid/widget/RadioGroup;

    .line 152
    sget v4, Lmobi/beyondpod/R$id;->internalSD:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_Internal:Landroid/widget/RadioButton;

    .line 153
    sget v4, Lmobi/beyondpod/R$id;->externalSD:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_External:Landroid/widget/RadioButton;

    .line 155
    sget v4, Lmobi/beyondpod/R$id;->splashIcon:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 157
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersionAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    .line 165
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 167
    iget-object v6, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    .line 168
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    iput-boolean v6, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalAvailable:Z

    .line 170
    sget v6, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    const/4 v7, -0x4

    const/16 v8, 0x8

    if-ne v6, v7, :cond_2

    .line 172
    sget-object p1, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected that Storage Root requires a permission. Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Asking user for permission..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_SDCardSelector:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    new-instance v0, Lmobi/beyondpod/ui/views/Splash$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Splash$2;-><init>(Lmobi/beyondpod/ui/views/Splash;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    sget v0, Lmobi/beyondpod/R$string;->alert_dialog_allow:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_CancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 199
    :cond_2
    sget v6, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    const/4 v7, 0x3

    if-ne v6, v0, :cond_5

    .line 201
    sget-object v6, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v9, "BeyondPod external storage root %s is not available! Internal SD card: %s, External SD card: %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v2

    iget-boolean v11, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalAvailable:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    goto :goto_1

    :cond_3
    const-string v11, "N/A"

    :goto_1
    aput-object v11, v10, v1

    iget-boolean v11, p0, Lmobi/beyondpod/ui/views/Splash;->_ExternalAvailable:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lmobi/beyondpod/ui/views/Splash;->_ExternalSDCardMount:Ljava/io/File;

    goto :goto_2

    :cond_4
    const-string v11, "N/A"

    :goto_2
    aput-object v11, v10, p1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_5
    sget v6, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    if-ne v6, v0, :cond_9

    .line 210
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->preferLastSDCardRoot()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 211
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v5, :cond_6

    .line 212
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 213
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_6
    iget-boolean v6, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalAvailable:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lmobi/beyondpod/ui/views/Splash;->_ExternalAvailable:Z

    if-eqz v6, :cond_9

    .line 215
    :cond_7
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid SD card root while using a cached root: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Asking user if they want to reset..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget v3, Lmobi/beyondpod/R$string;->reset_storage_folder_current:I

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v5, p1, v2

    iget-boolean v4, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalAvailable:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_InternalSDCardMount:Ljava/io/File;

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lmobi/beyondpod/ui/views/Splash;->_ExternalSDCardMount:Ljava/io/File;

    .line 223
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, p1, v1

    .line 219
    invoke-virtual {p0, v3, p1}, Lmobi/beyondpod/ui/views/Splash;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_SDCardSelector:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitBtn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_ResetBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_CancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 232
    :cond_9
    iget-object v5, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitBtn:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    const-string v5, "mounted"

    .line 234
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, -0x10000

    if-nez v5, :cond_f

    .line 236
    iget-object v5, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    sget v5, Lmobi/beyondpod/R$drawable;->ic_mp_sd_card:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4fe25641

    if-eq v4, v5, :cond_d

    const v1, -0x35db539b

    if-eq v4, v1, :cond_c

    const v1, 0x1f586a7a

    if-eq v4, v1, :cond_b

    const v1, 0x41141860

    if-eq v4, v1, :cond_a

    goto :goto_4

    :cond_a
    const-string v1, "removed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_b
    const-string p1, "unmountable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v7

    goto :goto_5

    :cond_c
    const-string p1, "shared"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_5

    :cond_d
    const-string p1, "unmounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_5

    :cond_e
    :goto_4
    move p1, v0

    :goto_5
    packed-switch p1, :pswitch_data_0

    .line 250
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget v0, Lmobi/beyondpod/R$string;->error_CantCreateRootFolder:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 247
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget v0, Lmobi/beyondpod/R$string;->error_SDCardError:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 244
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget v0, Lmobi/beyondpod/R$string;->error_SDCardMissing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 241
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget v0, Lmobi/beyondpod/R$string;->error_SDCardBusy:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    return-void

    .line 258
    :cond_f
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    if-nez p1, :cond_10

    sget-object p1, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 260
    :cond_10
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x1080027

    .line 261
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 264
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_11
    sget-object p1, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 267
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash;->_StatusMsg:Landroid/widget/TextView;

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void

    .line 90
    :catch_0
    sget-object v3, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v4, "Found that Application instance is not initialized!"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Settings"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "androidBackupRestored"

    .line 93
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 97
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v4, "Found that Android has restored a backup and we need to restart..."

    invoke-static {v0, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "androidBackupRestored"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 101
    sget-object p1, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v0, "Scheduled application restart in 2 sec."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "mobi.beyondpod.action.VIEW_MASTER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    .line 105
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    add-long v7, v3, v5

    invoke-virtual {v0, v1, v7, v8, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string p1, "Restarting..."

    .line 107
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_13
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->finish()V

    .line 113
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 302
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v1, "Splash activity destroyed!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_1

    .line 312
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    sget p1, Lmobi/beyondpod/R$string;->grant_permission_access_granted:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Splash;->initAndRestartSplash()V

    goto :goto_0

    :cond_0
    const p1, 0x1020002

    .line 319
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lmobi/beyondpod/R$string;->grant_permission_access_denied:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 325
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method
