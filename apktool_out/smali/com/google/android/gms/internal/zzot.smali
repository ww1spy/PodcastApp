.class public final Lcom/google/android/gms/internal/zzot;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzabh;
.end annotation


# instance fields
.field private final zzbwp:J

.field private final zzbwq:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwr:Lcom/google/android/gms/internal/zzot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzot;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzot;->zzbwp:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot;->zzbwq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzot;->zzbwr:Lcom/google/android/gms/internal/zzot;

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzot;->zzbwp:J

    return-wide v0
.end method

.method public final zzjl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzot;->zzbwq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjm()Lcom/google/android/gms/internal/zzot;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzot;->zzbwr:Lcom/google/android/gms/internal/zzot;

    return-object v0
.end method
