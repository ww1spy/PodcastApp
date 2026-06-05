.class final Lcom/google/android/gms/internal/zzard;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;

.field private synthetic zzdyn:Lcom/google/android/gms/internal/zzasy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;Lcom/google/android/gms/internal/zzasy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzard;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzard;->zzdyn:Lcom/google/android/gms/internal/zzasy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzard;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzard;->zzdyn:Lcom/google/android/gms/internal/zzasy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->zza(Lcom/google/android/gms/internal/zzasy;)V

    return-void
.end method
