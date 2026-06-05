.class Lcom/google/android/gms/internal/zzbev;
.super Lcom/google/android/gms/common/api/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzm<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/zzbfa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfor:Lcom/google/android/gms/internal/zzbeq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbeq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbev;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zzc(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/common/api/Api;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    check-cast p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbfa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbev;->zza(Lcom/google/android/gms/internal/zzbfa;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbfa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbey;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbey;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
