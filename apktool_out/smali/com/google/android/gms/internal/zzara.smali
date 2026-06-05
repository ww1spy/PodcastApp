.class final Lcom/google/android/gms/internal/zzara;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdyi:I

.field private synthetic zzdyj:Lcom/google/android/gms/internal/zzaqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqz;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzara;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    iput p2, p0, Lcom/google/android/gms/internal/zzara;->zzdyi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzara;->zzdyj:Lcom/google/android/gms/internal/zzaqz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqz;->zza(Lcom/google/android/gms/internal/zzaqz;)Lcom/google/android/gms/internal/zzarw;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzara;->zzdyi:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzarw;->zzr(J)V

    return-void
.end method
