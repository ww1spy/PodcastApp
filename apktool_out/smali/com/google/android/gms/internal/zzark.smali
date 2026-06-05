.class public Lcom/google/android/gms/internal/zzark;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzdys:Lcom/google/android/gms/internal/zzark;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private final zzdyt:Landroid/content/Context;

.field private final zzdyu:Lcom/google/android/gms/internal/zzasl;

.field private final zzdyv:Lcom/google/android/gms/internal/zzatd;

.field private final zzdyw:Lcom/google/android/gms/analytics/zzk;

.field private final zzdyx:Lcom/google/android/gms/internal/zzaqz;

.field private final zzdyy:Lcom/google/android/gms/internal/zzasq;

.field private final zzdyz:Lcom/google/android/gms/internal/zzatu;

.field private final zzdza:Lcom/google/android/gms/internal/zzath;

.field private final zzdzb:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzdzc:Lcom/google/android/gms/internal/zzasc;

.field private final zzdzd:Lcom/google/android/gms/internal/zzaqy;

.field private final zzdze:Lcom/google/android/gms/internal/zzarv;

.field private final zzdzf:Lcom/google/android/gms/internal/zzasp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzarm;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarm;->zzyl()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzark;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdyt:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzata:Lcom/google/android/gms/common/util/zze;

    new-instance v1, Lcom/google/android/gms/internal/zzasl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzasl;-><init>(Lcom/google/android/gms/internal/zzark;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdyu:Lcom/google/android/gms/internal/zzasl;

    new-instance v1, Lcom/google/android/gms/internal/zzatd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzatd;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdyv:Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzarj;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x86

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Google Analytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzarh;->zzec(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzath;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzath;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    new-instance v1, Lcom/google/android/gms/internal/zzatu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzatu;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdyz:Lcom/google/android/gms/internal/zzatu;

    new-instance v1, Lcom/google/android/gms/internal/zzaqz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaqz;-><init>(Lcom/google/android/gms/internal/zzark;Lcom/google/android/gms/internal/zzarm;)V

    new-instance p1, Lcom/google/android/gms/internal/zzasc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzasc;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaqy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaqy;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance v3, Lcom/google/android/gms/internal/zzarv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzarv;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance v4, Lcom/google/android/gms/internal/zzasp;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzasp;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzk;->zzbk(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/zzarl;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzarl;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyw:Lcom/google/android/gms/analytics/zzk;

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzark;->zzdzc:Lcom/google/android/gms/internal/zzasc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzark;->zzdzd:Lcom/google/android/gms/internal/zzaqy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzark;->zzdze:Lcom/google/android/gms/internal/zzarv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzark;->zzdzf:Lcom/google/android/gms/internal/zzasp;

    new-instance p1, Lcom/google/android/gms/internal/zzasq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzasq;-><init>(Lcom/google/android/gms/internal/zzark;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzark;->zzdyy:Lcom/google/android/gms/internal/zzasq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzari;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzdyx:Lcom/google/android/gms/internal/zzaqz;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzb:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqz;->start()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzari;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->isInitialized()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzbl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzark;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzark;->zzdys:Lcom/google/android/gms/internal/zzark;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzark;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzark;->zzdys:Lcom/google/android/gms/internal/zzark;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzarm;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzarm;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzark;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzark;-><init>(Lcom/google/android/gms/internal/zzarm;)V

    sput-object p0, Lcom/google/android/gms/internal/zzark;->zzdys:Lcom/google/android/gms/internal/zzark;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzvw()V

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v4, v2

    sget-object v1, Lcom/google/android/gms/internal/zzast;->zzedb:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/zzarh;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzark;->zzdys:Lcom/google/android/gms/internal/zzark;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final zzxx()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzata:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method public final zzxy()Lcom/google/android/gms/internal/zzatd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyv:Lcom/google/android/gms/internal/zzatd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyv:Lcom/google/android/gms/internal/zzatd;

    return-object v0
.end method

.method public final zzxz()Lcom/google/android/gms/internal/zzasl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyu:Lcom/google/android/gms/internal/zzasl;

    return-object v0
.end method

.method public final zzya()Lcom/google/android/gms/analytics/zzk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyw:Lcom/google/android/gms/analytics/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyw:Lcom/google/android/gms/analytics/zzk;

    return-object v0
.end method

.method public final zzyc()Lcom/google/android/gms/internal/zzaqz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyx:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyx:Lcom/google/android/gms/internal/zzaqz;

    return-object v0
.end method

.method public final zzyd()Lcom/google/android/gms/internal/zzasq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyy:Lcom/google/android/gms/internal/zzasq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyy:Lcom/google/android/gms/internal/zzasq;

    return-object v0
.end method

.method public final zzye()Lcom/google/android/gms/internal/zzatu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyz:Lcom/google/android/gms/internal/zzatu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyz:Lcom/google/android/gms/internal/zzatu;

    return-object v0
.end method

.method public final zzyf()Lcom/google/android/gms/internal/zzath;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    return-object v0
.end method

.method public final zzyi()Lcom/google/android/gms/internal/zzarv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdze:Lcom/google/android/gms/internal/zzarv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdze:Lcom/google/android/gms/internal/zzarv;

    return-object v0
.end method

.method public final zzyj()Lcom/google/android/gms/internal/zzasp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzf:Lcom/google/android/gms/internal/zzasp;

    return-object v0
.end method

.method public final zzyl()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyt:Landroid/content/Context;

    return-object v0
.end method

.method public final zzym()Lcom/google/android/gms/internal/zzatd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdyv:Lcom/google/android/gms/internal/zzatd;

    return-object v0
.end method

.method public final zzyn()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzb:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzb:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzb:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzyo()Lcom/google/android/gms/internal/zzath;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzari;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdza:Lcom/google/android/gms/internal/zzath;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzyp()Lcom/google/android/gms/internal/zzaqy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzd:Lcom/google/android/gms/internal/zzaqy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzd:Lcom/google/android/gms/internal/zzaqy;

    return-object v0
.end method

.method public final zzyq()Lcom/google/android/gms/internal/zzasc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzc:Lcom/google/android/gms/internal/zzasc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzark;->zza(Lcom/google/android/gms/internal/zzari;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzdzc:Lcom/google/android/gms/internal/zzasc;

    return-object v0
.end method
