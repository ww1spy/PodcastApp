.class final Lcom/google/android/gms/internal/zzbes;
.super Lcom/google/android/gms/internal/zzbev;


# instance fields
.field private synthetic zzfor:Lcom/google/android/gms/internal/zzbeq;

.field private synthetic zzfos:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbeq;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbes;->zzfos:Ljava/lang/String;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbew;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbew;-><init>(Lcom/google/android/gms/internal/zzbev;Lcom/google/android/gms/internal/zzbfa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbeq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/internal/zzbfg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbes;->zzfos:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbfa;->zza(Lcom/google/android/gms/internal/zzbfc;Lcom/google/android/gms/internal/zzbfg;Ljava/lang/String;)V

    return-void
.end method
