.class final Lcom/google/android/gms/internal/zzbet;
.super Lcom/google/android/gms/internal/zzbev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbeq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbev;-><init>(Lcom/google/android/gms/internal/zzbeq;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
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

.method public final zza(Lcom/google/android/gms/internal/zzbfa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbex;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbex;-><init>(Lcom/google/android/gms/internal/zzbev;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbfa;->zza(Lcom/google/android/gms/internal/zzbfc;)V

    return-void
.end method
