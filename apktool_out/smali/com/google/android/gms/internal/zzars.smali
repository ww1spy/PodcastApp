.class final Lcom/google/android/gms/internal/zzars;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzdzu:Lcom/google/android/gms/internal/zzarq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarq;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzars;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzars;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzars;->zzdzu:Lcom/google/android/gms/internal/zzarq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzarq;->zzdzq:Lcom/google/android/gms/internal/zzaro;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzars;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaro;->zza(Lcom/google/android/gms/internal/zzaro;Landroid/content/ComponentName;)V

    return-void
.end method
