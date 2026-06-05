.class final Lcom/google/android/gms/internal/zzbdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfly:Lcom/google/android/gms/internal/zzbdg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdi;->zzfly:Lcom/google/android/gms/internal/zzbdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbdg;Lcom/google/android/gms/internal/zzbdh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbdi;-><init>(Lcom/google/android/gms/internal/zzbdg;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzfly:Lcom/google/android/gms/internal/zzbdg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzbdg;->zzflx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdi;->zzfly:Lcom/google/android/gms/internal/zzbdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbdg;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbdi;->zzfly:Lcom/google/android/gms/internal/zzbdg;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbdg;->zzz(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdi;->zzfly:Lcom/google/android/gms/internal/zzbdg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    return-void
.end method
