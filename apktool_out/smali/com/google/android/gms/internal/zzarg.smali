.class final Lcom/google/android/gms/internal/zzarg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarg;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarg;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->zzzj()V

    const/4 v0, 0x0

    return-object v0
.end method
