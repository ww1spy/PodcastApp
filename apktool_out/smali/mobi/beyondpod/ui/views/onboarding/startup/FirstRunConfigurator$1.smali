.class Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;
.super Ljava/lang/Object;
.source "FirstRunConfigurator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->access$000(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;Z)V

    .line 57
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching sample content: Http Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f10030c

    goto :goto_1

    :cond_1
    const p1, 0x7f10030e

    .line 67
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
