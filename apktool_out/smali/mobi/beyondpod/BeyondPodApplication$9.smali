.class Lmobi/beyondpod/BeyondPodApplication$9;
.super Landroid/content/BroadcastReceiver;
.source "BeyondPodApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->startMonitoringNetworkConnectivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/BeyondPodApplication;


# direct methods
.method constructor <init>(Lmobi/beyondpod/BeyondPodApplication;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$9;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 713
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "########### All network connections are lost! ########"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
