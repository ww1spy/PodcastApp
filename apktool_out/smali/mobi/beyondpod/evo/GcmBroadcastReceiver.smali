.class public Lmobi/beyondpod/evo/GcmBroadcastReceiver;
.super Lmobi/beyondpod/GcmBroadcastReceiverBase;
.source "GcmBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmobi/beyondpod/GcmBroadcastReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/evo/GcmIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2, v0}, Lmobi/beyondpod/GcmBroadcastReceiverBase;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)V

    return-void
.end method
