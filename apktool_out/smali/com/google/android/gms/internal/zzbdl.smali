.class final Lcom/google/android/gms/internal/zzbdl;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbdn;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzffw:Ljava/util/List;

.field private synthetic zzflz:[Ljava/lang/String;

.field private synthetic zzfma:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdj;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdl;->zzflz:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdl;->zzfma:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbdl;->zzffw:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbdn;

    new-instance v0, Lcom/google/android/gms/internal/zzbdm;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/zzbdm;-><init>(Lcom/google/android/gms/internal/zzbdl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbef;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbdl;->zzflz:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdl;->zzfma:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdl;->zzffw:Ljava/util/List;

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzbef;->zza(Lcom/google/android/gms/common/api/internal/zzca;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
