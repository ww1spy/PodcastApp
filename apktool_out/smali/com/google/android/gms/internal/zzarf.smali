.class final Lcom/google/android/gms/internal/zzarf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;

.field private synthetic zzdyo:Lcom/google/android/gms/internal/zzasr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;Lcom/google/android/gms/internal/zzasr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarf;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarf;->zzdyo:Lcom/google/android/gms/internal/zzasr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarf;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarf;->zzdyo:Lcom/google/android/gms/internal/zzasr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->zzb(Lcom/google/android/gms/internal/zzasr;)V

    return-void
.end method
