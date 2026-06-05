.class public abstract Lmobi/beyondpod/services/player/TransportFocusHelper;
.super Ljava/lang/Object;
.source "TransportFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;,
        Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;
    }
.end annotation


# static fields
.field static final MEDIA_RECEIVER:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->packageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobi.beyondpod.services.player.MediaButtonIntentReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper;->MEDIA_RECEIVER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmobi/beyondpod/services/player/TransportFocusHelper;
    .locals 1

    .line 31
    invoke-static {}, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus$Holder;->access$000()Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract startListeningForMediaButton()V
.end method

.method abstract stopListeningForMediaButton()V
.end method
