.class final Lcom/google/android/gms/internal/zzbcm;
.super Lcom/google/android/gms/internal/zzbcu;


# instance fields
.field final synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcl;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbcu;-><init>(Lcom/google/android/gms/internal/zzbcl;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcl;->zzb(Lcom/google/android/gms/internal/zzbcl;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbdo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzbcn;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbcn;-><init>(Lcom/google/android/gms/internal/zzbcm;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcl;->zzc(Lcom/google/android/gms/internal/zzbcl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcl;->zzd(Lcom/google/android/gms/internal/zzbcl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcm;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    const/16 v2, 0x44c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    invoke-static {v1, v0, v2, v0, v3}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzben;)V

    return-void

    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzben;->zza(JILjava/lang/Object;)V

    return-void
.end method
