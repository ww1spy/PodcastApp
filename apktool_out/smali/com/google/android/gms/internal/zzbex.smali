.class public final Lcom/google/android/gms/internal/zzbex;
.super Lcom/google/android/gms/internal/zzbeu;


# instance fields
.field private synthetic zzfou:Lcom/google/android/gms/internal/zzbev;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzbev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbex;->zzfou:Lcom/google/android/gms/internal/zzbev;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbex;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbex;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v1, Lcom/google/android/gms/internal/zzbey;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

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

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbex;->zzfou:Lcom/google/android/gms/internal/zzbev;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbex;->zzfou:Lcom/google/android/gms/internal/zzbev;

    new-instance v0, Lcom/google/android/gms/internal/zzbey;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
