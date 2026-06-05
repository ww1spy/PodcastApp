.class final Lcom/google/android/gms/internal/zzatn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzeeq:Lcom/google/android/gms/internal/zzatm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatm;->zzeel:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatm;->zzeep:Lcom/google/android/gms/internal/zzatl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatl;->zza(Lcom/google/android/gms/internal/zzatl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzato;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatm;->zzeel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzato;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatm;->zzeen:Lcom/google/android/gms/internal/zzatd;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatm;->zzeen:Lcom/google/android/gms/internal/zzatd;

    const-string v1, "AnalyticsJobService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzea(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatm;->zzeep:Lcom/google/android/gms/internal/zzatl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatl;->zza(Lcom/google/android/gms/internal/zzatl;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzato;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatn;->zzeeq:Lcom/google/android/gms/internal/zzatm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatm;->zzeeo:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzato;->zza(Landroid/app/job/JobParameters;Z)V

    :cond_2
    return-void
.end method
