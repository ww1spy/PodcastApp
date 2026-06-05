.class public final Lcom/google/android/gms/internal/zzaqz;
.super Lcom/google/android/gms/internal/zzari;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final zzdyh:Lcom/google/android/gms/internal/zzarw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzark;Lcom/google/android/gms/internal/zzarm;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzarw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzarw;-><init>(Lcom/google/android/gms/internal/zzark;Lcom/google/android/gms/internal/zzarm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    return-object p0
.end method


# virtual methods
.method final onServiceConnected()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->onServiceConnected()V

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzara;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzara;-><init>(Lcom/google/android/gms/internal/zzaqz;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->start()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzarn;)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzarw;->zza(Lcom/google/android/gms/internal/zzarn;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzarw;->zzb(Lcom/google/android/gms/internal/zzarn;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzasr;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzarf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzarf;-><init>(Lcom/google/android/gms/internal/zzaqz;Lcom/google/android/gms/internal/zzasr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzasy;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzard;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzard;-><init>(Lcom/google/android/gms/internal/zzaqz;Lcom/google/android/gms/internal/zzasy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzarc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzarc;-><init>(Lcom/google/android/gms/internal/zzaqz;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzwk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->initialize()V

    return-void
.end method

.method public final zzxr()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzare;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzare;-><init>(Lcom/google/android/gms/internal/zzaqz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzxs()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatk;->zzbj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatl;->zzbn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzasr;)V

    return-void
.end method

.method public final zzxt()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzarg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzarg;-><init>(Lcom/google/android/gms/internal/zzaqz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final zzxu()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    return-void
.end method

.method final zzxv()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqz;->zzdyh:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->zzxv()V

    return-void
.end method
