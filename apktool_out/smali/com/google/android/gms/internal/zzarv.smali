.class public final Lcom/google/android/gms/internal/zzarv;
.super Lcom/google/android/gms/internal/zzari;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private final zzdvo:Lcom/google/android/gms/internal/zzaql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzark;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzark;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaql;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaql;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarv;->zzdvo:Lcom/google/android/gms/internal/zzaql;

    return-void
.end method


# virtual methods
.method protected final zzwk()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzya()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzwh()Lcom/google/android/gms/internal/zzaql;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->zzdvo:Lcom/google/android/gms/internal/zzaql;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaql;->zza(Lcom/google/android/gms/internal/zzaql;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarh;->zzye()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzwn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarv;->zzdvo:Lcom/google/android/gms/internal/zzaql;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaql;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzwo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarv;->zzdvo:Lcom/google/android/gms/internal/zzaql;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaql;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzzd()Lcom/google/android/gms/internal/zzaql;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzari;->zzyk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarv;->zzdvo:Lcom/google/android/gms/internal/zzaql;

    return-object v0
.end method
