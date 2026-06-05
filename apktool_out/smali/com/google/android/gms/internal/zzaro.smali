.class public final Lcom/google/android/gms/internal/zzaro;
.super Lcom/google/android/gms/internal/zzari;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final zzdzm:Lcom/google/android/gms/internal/zzarq;

.field private zzdzn:Lcom/google/android/gms/internal/zzasz;

.field private final zzdzo:Lcom/google/android/gms/internal/zzasn;

.field private final zzdzp:Lcom/google/android/gms/internal/zzatp;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzark;->zzxx()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzatp;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzp:Lcom/google/android/gms/internal/zzatp;

    new-instance v0, Lcom/google/android/gms/internal/zzarq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzarq;-><init>(Lcom/google/android/gms/internal/zzaro;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzm:Lcom/google/android/gms/internal/zzarq;

    new-instance v0, Lcom/google/android/gms/internal/zzarp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzarp;-><init>(Lcom/google/android/gms/internal/zzaro;Lcom/google/android/gms/internal/zzark;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzo:Lcom/google/android/gms/internal/zzasn;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqz;->zzxu()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaro;)Lcom/google/android/gms/internal/zzarq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzm:Lcom/google/android/gms/internal/zzarq;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaro;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaro;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaro;Lcom/google/android/gms/internal/zzasz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaro;->zza(Lcom/google/android/gms/internal/zzasz;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzasz;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaro;->zzyw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqz;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaro;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaro;->zzyx()V

    return-void
.end method

.method private final zzyw()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzp:Lcom/google/android/gms/internal/zzatp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatp;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzo:Lcom/google/android/gms/internal/zzasn;

    sget-object v1, Lcom/google/android/gms/internal/zzast;->zzecv:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzasn;->zzs(J)V

    return-void
.end method

.method private final zzyx()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaro;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaro;->disconnect()V

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzm:Lcom/google/android/gms/internal/zzarq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarq;->zzyy()Lcom/google/android/gms/internal/zzasz;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaro;->zzyw()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzanm()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaro;->zzdzm:Lcom/google/android/gms/internal/zzarq;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzyc()Lcom/google/android/gms/internal/zzaqz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqz;->zzxu()V

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzasy;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzaap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzaab()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzasl;->zzaac()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzjq()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzasy;->zzaan()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasz;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaro;->zzyw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    return v6
.end method

.method protected final zzwk()V
    .locals 0

    return-void
.end method

.method public final zzyv()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzwj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdzn:Lcom/google/android/gms/internal/zzasz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzasz;->zzxr()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaro;->zzyw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    return v1
.end method
