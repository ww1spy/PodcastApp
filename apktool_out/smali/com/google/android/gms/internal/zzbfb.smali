.class final Lcom/google/android/gms/internal/zzbfb;
.super Lcom/google/android/gms/internal/zzbfh;


# instance fields
.field private synthetic zzfox:Lcom/google/android/gms/internal/zzbfg;

.field private synthetic zzfoy:Lcom/google/android/gms/internal/zzbfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfa;Lcom/google/android/gms/internal/zzbfg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfb;->zzfoy:Lcom/google/android/gms/internal/zzbfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbfb;->zzfox:Lcom/google/android/gms/internal/zzbfg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbn(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzbfa;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfb;->zzfox:Lcom/google/android/gms/internal/zzbfg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfb;->zzfox:Lcom/google/android/gms/internal/zzbfg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbfg;->zzbn(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfb;->zzfoy:Lcom/google/android/gms/internal/zzbfa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbfa;->zzb(Lcom/google/android/gms/internal/zzbfa;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbfb;->zzfoy:Lcom/google/android/gms/internal/zzbfa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbfa;->zzb(Lcom/google/android/gms/internal/zzbfa;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
