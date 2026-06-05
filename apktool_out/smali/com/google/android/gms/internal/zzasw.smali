.class final Lcom/google/android/gms/internal/zzasw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzask<",
        "Lcom/google/android/gms/internal/zzasx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdyp:Lcom/google/android/gms/internal/zzark;

.field private final zzede:Lcom/google/android/gms/internal/zzasx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzdyp:Lcom/google/android/gms/internal/zzark;

    new-instance p1, Lcom/google/android/gms/internal/zzasx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzasx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    iput p2, p1, Lcom/google/android/gms/internal/zzasx;->zzedh:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzasw;->zzdyp:Lcom/google/android/gms/internal/zzark;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    iput p2, p1, Lcom/google/android/gms/internal/zzasx;->zzedg:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzasw;->zzdyp:Lcom/google/android/gms/internal/zzark;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzasx;->zzdwo:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzasx;->zzdwp:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzasx;->zzedf:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzasw;->zzdyp:Lcom/google/android/gms/internal/zzark;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzark;->zzxy()Lcom/google/android/gms/internal/zzatd;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzarh;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzzt()Lcom/google/android/gms/internal/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasw;->zzede:Lcom/google/android/gms/internal/zzasx;

    return-object v0
.end method
