.class final Lcom/google/android/gms/internal/zzbdu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfmz:Lcom/google/android/gms/internal/zzbdp;

.field private synthetic zzfnc:Lcom/google/android/gms/internal/zzbdd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdr;Lcom/google/android/gms/internal/zzbdp;Lcom/google/android/gms/internal/zzbdd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdu;->zzfmz:Lcom/google/android/gms/internal/zzbdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdu;->zzfnc:Lcom/google/android/gms/internal/zzbdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdu;->zzfmz:Lcom/google/android/gms/internal/zzbdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdu;->zzfnc:Lcom/google/android/gms/internal/zzbdd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdp;->zza(Lcom/google/android/gms/internal/zzbdp;Lcom/google/android/gms/internal/zzbdd;)V

    return-void
.end method
