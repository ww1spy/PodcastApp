.class final Lcom/google/android/gms/internal/zzbcn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private synthetic zzfku:Lcom/google/android/gms/internal/zzbcm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcn;->zzfku:Lcom/google/android/gms/internal/zzbcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcn;->zzfku:Lcom/google/android/gms/internal/zzbcm;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzbdo;->zzfu(Ljava/lang/String;)V

    return-void
.end method
