.class final Lcom/google/android/gms/internal/zzber;
.super Lcom/google/android/gms/internal/zzbfh;


# instance fields
.field private synthetic zzfor:Lcom/google/android/gms/internal/zzbeq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbeq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzber;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbn(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbeq;->zzahb()Lcom/google/android/gms/internal/zzbei;

    move-result-object p1

    const-string v0, "onRemoteDisplayEnded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzber;->zzfor:Lcom/google/android/gms/internal/zzbeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbeq;->zza(Lcom/google/android/gms/internal/zzbeq;)V

    return-void
.end method
