.class public final Lcom/google/android/gms/internal/zzbew;
.super Lcom/google/android/gms/internal/zzbeu;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final zzfot:Lcom/google/android/gms/internal/zzbfa;

.field private synthetic zzfou:Lcom/google/android/gms/internal/zzbev;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbev;Lcom/google/android/gms/internal/zzbfa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeu;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbew;->zzfot:Lcom/google/android/gms/internal/zzbfa;

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v0, Lcom/google/android/gms/internal/zzbey;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfot:Lcom/google/android/gms/internal/zzbfa;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object p1

    const-string p2, "Unable to get the display manager"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance p2, Lcom/google/android/gms/internal/zzbey;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;)V

    if-ge p1, p2, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v7, v0, 0x438

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    const-string v4, "private_display"

    const/4 v9, 0x2

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zzd(Lcom/google/android/gms/internal/zzbeq;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object p1

    const-string p2, "Unable to create virtual display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance p2, Lcom/google/android/gms/internal/zzbey;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zzd(Lcom/google/android/gms/internal/zzbeq;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object p1

    const-string p2, "Virtual display does not have a display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance p2, Lcom/google/android/gms/internal/zzbey;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfot:Lcom/google/android/gms/internal/zzbfa;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbeq;->zzd(Lcom/google/android/gms/internal/zzbeq;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbfe;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/zzbfe;->zza(Lcom/google/android/gms/internal/zzbfc;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object p1

    const-string p2, "Unable to provision the route\'s new virtual Display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance p2, Lcom/google/android/gms/internal/zzbey;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public final zzado()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "onConnectedWithDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbeq;->zzd(Lcom/google/android/gms/internal/zzbeq;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "There is no virtual display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v1, Lcom/google/android/gms/internal/zzbey;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbeq;->zzd(Lcom/google/android/gms/internal/zzbeq;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v2, Lcom/google/android/gms/internal/zzbey;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzbey;-><init>(Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "Virtual display no longer has a display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbew;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v1, Lcom/google/android/gms/internal/zzbey;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
