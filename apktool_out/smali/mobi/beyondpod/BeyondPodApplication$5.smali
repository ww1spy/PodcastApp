.class Lmobi/beyondpod/BeyondPodApplication$5;
.super Landroid/content/BroadcastReceiver;
.source "BeyondPodApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->registerEnvironmentListeners()V
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

    .line 440
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$5;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "level"

    const/4 v0, -0x1

    .line 447
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/BeyondPodApplication;->batteryLevel:I

    const-string p1, "status"

    .line 448
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/BeyondPodApplication;->batteryStatus:I

    const-string p1, "plugged"

    .line 449
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/BeyondPodApplication;->batteryPlugged:I

    :cond_0
    return-void
.end method
