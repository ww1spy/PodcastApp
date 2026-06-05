.class Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "CrossDeviceSyncLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;
    .locals 9

    .line 73
    new-instance v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;)V

    .line 74
    new-instance v2, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;

    invoke-direct {v2}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;-><init>()V

    const/4 v1, -0x3

    .line 78
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-le v3, v4, :cond_0

    .line 80
    aget-object v3, p1, v8

    aget-object p1, p1, v5

    sget-object v4, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    .line 81
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v2, v3, p1, v4, v5}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->registerUser(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;Ljava/lang/String;)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->AuthResult:Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    goto :goto_0

    .line 85
    :cond_0
    aget-object v3, p1, v8

    aget-object v4, p1, v5

    sget-object v5, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    .line 86
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 85
    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;->authenticateUser(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;Ljava/lang/String;Z)Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->AuthResult:Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    .line 89
    :goto_0
    iget-object p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->AuthResult:Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->isWaitingForEmailVerification()Z

    move-result p1

    if-eqz p1, :cond_1

    move v8, v1

    :cond_1
    iput v8, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I
    :try_end_0
    .catch Lmobi/beyondpod/sync/trackers/bp/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmobi/beyondpod/sync/trackers/bp/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->getStatusCode()I

    move-result p1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_3

    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    const/4 p1, -0x1

    .line 119
    iput p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    goto :goto_2

    :cond_2
    const/4 p1, -0x6

    .line 115
    iput p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    goto :goto_2

    .line 111
    :cond_3
    iput v1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    goto :goto_2

    :cond_4
    const/4 p1, -0x5

    .line 107
    iput p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    goto :goto_2

    :cond_5
    const/4 p1, -0x4

    .line 103
    iput p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 94
    invoke-static {}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    .line 96
    iput p1, v0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    :goto_2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->onPostExecute(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;)V

    return-void
.end method

.method protected onPostExecute(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$200(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 137
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 141
    :cond_0
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 143
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000fb

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 145
    :cond_1
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    const/4 v3, -0x4

    if-ne v1, v3, :cond_2

    .line 147
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000eb

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 150
    :cond_2
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    const/4 v3, -0x5

    if-ne v1, v3, :cond_3

    .line 152
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000f7

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 154
    :cond_3
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    const/4 v3, -0x6

    if-ne v1, v3, :cond_4

    .line 156
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000ec

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 160
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "userName"

    .line 162
    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget v1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->LoginStatus:I

    if-nez v1, :cond_5

    const-string v1, "password"

    .line 165
    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginResult;->AuthResult:Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;

    invoke-virtual {p1}, Lmobi/beyondpod/sync/trackers/bp/AuthenticationResult;->getEncryptedPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string p1, "deviceID"

    .line 167
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->deviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-virtual {p1, v2, v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->finish()V

    goto :goto_1

    .line 139
    :cond_6
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f100101

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 130
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$200(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
