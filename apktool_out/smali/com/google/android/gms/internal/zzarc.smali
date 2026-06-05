.class final Lcom/google/android/gms/internal/zzarc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;

.field private synthetic zzdyl:Ljava/lang/String;

.field private synthetic zzdym:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarc;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarc;->zzdyl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarc;->zzdym:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarc;->zzdyl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->zzei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc;->zzdym:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc;->zzdym:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
