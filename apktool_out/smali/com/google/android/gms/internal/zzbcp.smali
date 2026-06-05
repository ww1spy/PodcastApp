.class final Lcom/google/android/gms/internal/zzbcp;
.super Lcom/google/android/gms/internal/zzbcr;


# instance fields
.field private synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;

.field private synthetic zzfkw:Ljava/lang/String;

.field private synthetic zzfkx:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkx:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcr;-><init>(Lcom/google/android/gms/internal/zzbcl;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcp;->zzfkx:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzben;)V

    return-void
.end method
