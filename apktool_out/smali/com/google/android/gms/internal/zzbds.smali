.class final Lcom/google/android/gms/internal/zzbds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfmz:Lcom/google/android/gms/internal/zzbdp;

.field private synthetic zzfna:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdr;Lcom/google/android/gms/internal/zzbdp;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbds;->zzfmz:Lcom/google/android/gms/internal/zzbdp;

    iput p3, p0, Lcom/google/android/gms/internal/zzbds;->zzfna:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbds;->zzfmz:Lcom/google/android/gms/internal/zzbdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdp;->zze(Lcom/google/android/gms/internal/zzbdp;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbds;->zzfna:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    return-void
.end method
