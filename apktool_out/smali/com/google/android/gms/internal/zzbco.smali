.class final Lcom/google/android/gms/internal/zzbco;
.super Lcom/google/android/gms/internal/zzbcr;


# instance fields
.field private synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;

.field private synthetic zzfkv:I

.field private synthetic zzfkw:Ljava/lang/String;

.field private synthetic zzfkx:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcl;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbco;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iput p2, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbco;->zzfkw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbco;->zzfkx:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcr;-><init>(Lcom/google/android/gms/internal/zzbcl;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    const-wide/16 v3, -0x1

    const/16 v5, 0x7d1

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzben;->zza(JILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbcl;->zzagj()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const-string v3, "sendPlayerRequest for unsupported playerState: %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbco;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbco;->zzfkw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbco;->zzfkx:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzben;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
