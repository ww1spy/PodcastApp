.class final Lcom/google/android/gms/cast/zzq;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbez;",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzetg:Ljava/lang/String;

.field private synthetic zzeuk:I

.field private synthetic zzeul:Landroid/app/PendingIntent;

.field private synthetic zzeum:Lcom/google/android/gms/cast/CastDevice;

.field final synthetic zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;ILandroid/app/PendingIntent;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    iput p2, p0, Lcom/google/android/gms/cast/zzq;->zzeuk:I

    iput-object p3, p0, Lcom/google/android/gms/cast/zzq;->zzeul:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzq;->zzeum:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/cast/zzq;->zzetg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbez;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "configuration"

    iget v1, p0, Lcom/google/android/gms/cast/zzq;->zzeuk:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/gms/cast/zzr;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/cast/zzr;-><init>(Lcom/google/android/gms/cast/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzbez;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbfe;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzq;->zzeul:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzeum:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/zzq;->zzetg:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbfe;->zza(Lcom/google/android/gms/internal/zzbfc;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
