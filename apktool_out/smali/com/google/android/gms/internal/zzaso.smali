.class final Lcom/google/android/gms/internal/zzaso;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzebg:Lcom/google/android/gms/internal/zzasn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaso;->zzebg:Lcom/google/android/gms/internal/zzasn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaso;->zzebg:Lcom/google/android/gms/internal/zzasn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasn;->zza(Lcom/google/android/gms/internal/zzasn;)Lcom/google/android/gms/internal/zzark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzark;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaso;->zzebg:Lcom/google/android/gms/internal/zzasn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasn;->zzea()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaso;->zzebg:Lcom/google/android/gms/internal/zzasn;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzasn;->zza(Lcom/google/android/gms/internal/zzasn;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaso;->zzebg:Lcom/google/android/gms/internal/zzasn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasn;->run()V

    :cond_1
    return-void
.end method
