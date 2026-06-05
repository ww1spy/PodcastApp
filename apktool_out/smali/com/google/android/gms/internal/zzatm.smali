.class final Lcom/google/android/gms/internal/zzatm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzasr;


# instance fields
.field final synthetic zzeel:Ljava/lang/Integer;

.field private synthetic zzeem:Lcom/google/android/gms/internal/zzark;

.field final synthetic zzeen:Lcom/google/android/gms/internal/zzatd;

.field final synthetic zzeeo:Landroid/app/job/JobParameters;

.field final synthetic zzeep:Lcom/google/android/gms/internal/zzatl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatl;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzark;Lcom/google/android/gms/internal/zzatd;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatm;->zzeep:Lcom/google/android/gms/internal/zzatl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatm;->zzeel:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatm;->zzeem:Lcom/google/android/gms/internal/zzark;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzatm;->zzeen:Lcom/google/android/gms/internal/zzatd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzatm;->zzeeo:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzatm;->zzeep:Lcom/google/android/gms/internal/zzatl;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatl;->zzb(Lcom/google/android/gms/internal/zzatl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzatn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzatn;-><init>(Lcom/google/android/gms/internal/zzatm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
