.class public final Lcom/google/android/gms/internal/zzbdz;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field public static final zzfnf:Lcom/google/android/gms/internal/zzcce;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcce<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gms:cast:remote_display_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcce;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzccg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbdz;->zzfnf:Lcom/google/android/gms/internal/zzcce;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasn()Lcom/google/android/gms/internal/zzcck;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzaso()Lcom/google/android/gms/internal/zzccl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzccl;->initialize(Landroid/content/Context;)V

    return-void
.end method
