.class final Lcom/google/android/gms/internal/zzarr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdzt:Lcom/google/android/gms/internal/zzasz;

.field private synthetic zzdzu:Lcom/google/android/gms/internal/zzarq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarq;Lcom/google/android/gms/internal/zzasz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarr;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarr;->zzdzt:Lcom/google/android/gms/internal/zzasz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarr;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarq;->zzdzq:Lcom/google/android/gms/internal/zzaro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaro;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarr;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarq;->zzdzq:Lcom/google/android/gms/internal/zzaro;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->zzeb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarr;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarq;->zzdzq:Lcom/google/android/gms/internal/zzaro;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarr;->zzdzt:Lcom/google/android/gms/internal/zzasz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaro;->zza(Lcom/google/android/gms/internal/zzaro;Lcom/google/android/gms/internal/zzasz;)V

    :cond_0
    return-void
.end method
