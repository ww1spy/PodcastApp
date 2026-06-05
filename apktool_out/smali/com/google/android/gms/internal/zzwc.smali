.class public final Lcom/google/android/gms/internal/zzwc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzvo;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzabh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mStartTime:J

.field private final zzanh:Lcom/google/android/gms/internal/zzov;

.field private final zzanu:Lcom/google/android/gms/internal/zzwf;

.field private final zzavr:Z

.field private final zzcir:Lcom/google/android/gms/internal/zzvq;

.field private final zzciv:Z

.field private final zzciw:Z

.field private final zzcjk:Lcom/google/android/gms/internal/zzacf;

.field private final zzcjl:J

.field private zzcjn:Z

.field private final zzcjp:Ljava/lang/String;

.field private zzcjq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzvw;",
            ">;"
        }
    .end annotation
.end field

.field private zzcju:Lcom/google/android/gms/internal/zzvt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzacf;Lcom/google/android/gms/internal/zzwf;Lcom/google/android/gms/internal/zzvq;ZZLjava/lang/String;JJLcom/google/android/gms/internal/zzov;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzwc;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwc;->zzcjn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzwc;->zzcjq:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzwc;->zzanu:Lcom/google/android/gms/internal/zzwf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzwc;->zzcir:Lcom/google/android/gms/internal/zzvq;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzwc;->zzavr:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzwc;->zzciv:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzwc;->zzcjp:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzwc;->mStartTime:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzwc;->zzcjl:J

    iput-object p12, p0, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/zzwc;->zzciw:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzwc;->zzcjn:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwc;->zzcju:Lcom/google/android/gms/internal/zzvt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwc;->zzcju:Lcom/google/android/gms/internal/zzvt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvt;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzh(Ljava/util/List;)Lcom/google/android/gms/internal/zzvw;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzvp;",
            ">;)",
            "Lcom/google/android/gms/internal/zzvw;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahw;->zzby(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzov;->zzjo()Lcom/google/android/gms/internal/zzot;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzacf;->zzaud:Lcom/google/android/gms/internal/zzko;

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, v4, Lcom/google/android/gms/internal/zzko;->zzbic:[Lcom/google/android/gms/internal/zzko;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbt;->zzfd()Lcom/google/android/gms/internal/zzvy;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzwc;->zzcjp:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzvy;->zza(Ljava/lang/String;[I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget v8, v5, v6

    aget v5, v5, v7

    iget-object v9, v4, Lcom/google/android/gms/internal/zzko;->zzbic:[Lcom/google/android/gms/internal/zzko;

    array-length v10, v9

    :goto_0
    if-ge v6, v10, :cond_1

    aget-object v11, v9, v6

    iget v12, v11, Lcom/google/android/gms/internal/zzko;->width:I

    if-ne v8, v12, :cond_0

    iget v12, v11, Lcom/google/android/gms/internal/zzko;->height:I

    if-ne v5, v12, :cond_0

    move-object v4, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzvp;

    const-string v8, "Trying mediation network: "

    iget-object v9, v6, Lcom/google/android/gms/internal/zzvp;->zzchc:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_3
    invoke-static {v8}, Lcom/google/android/gms/internal/zzahw;->zzcy(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/internal/zzvp;->zzchd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzov;->zzjo()Lcom/google/android/gms/internal/zzot;

    move-result-object v10

    iget-object v15, v1, Lcom/google/android/gms/internal/zzwc;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcjn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_3

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/zzvw;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzvw;-><init>(I)V

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v30, v15

    goto/16 :goto_6

    :cond_3
    :try_start_2
    new-instance v14, Lcom/google/android/gms/internal/zzvt;

    iget-object v12, v1, Lcom/google/android/gms/internal/zzwc;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/google/android/gms/internal/zzwc;->zzanu:Lcom/google/android/gms/internal/zzwf;

    iget-object v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcir:Lcom/google/android/gms/internal/zzvq;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzacf;->zzcrv:Lcom/google/android/gms/internal/zzkk;

    move-object/from16 v27, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzacf;->zzatz:Lcom/google/android/gms/internal/zzala;

    move-object/from16 v28, v8

    iget-boolean v8, v1, Lcom/google/android/gms/internal/zzwc;->zzavr:Z

    move-object/from16 v29, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzwc;->zzciv:Z

    move-object/from16 v30, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzacf;->zzauq:Lcom/google/android/gms/internal/zzqh;

    move-object/from16 v31, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzacf;->zzauy:Ljava/util/List;

    move-object/from16 v32, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzacf;->zzcsk:Ljava/util/List;

    move-object/from16 v33, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/zzwc;->zzcjk:Lcom/google/android/gms/internal/zzacf;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzacf;->zzctf:Ljava/util/List;

    move-object/from16 v34, v10

    iget-boolean v10, v1, Lcom/google/android/gms/internal/zzwc;->zzciw:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v11

    move-object/from16 v16, v30

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move-object/from16 v24, v33

    move-object v11, v14

    move-object/from16 v17, v13

    move-object v13, v9

    move-object/from16 v35, v2

    move-object v2, v14

    move-object/from16 v14, v17

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v3

    move/from16 v26, v10

    :try_start_3
    invoke-direct/range {v11 .. v26}, Lcom/google/android/gms/internal/zzvt;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzwf;Lcom/google/android/gms/internal/zzvq;Lcom/google/android/gms/internal/zzvp;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzala;ZZLcom/google/android/gms/internal/zzqh;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzwc;->zzcju:Lcom/google/android/gms/internal/zzvt;

    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzwc;->zzcju:Lcom/google/android/gms/internal/zzvt;

    iget-wide v7, v1, Lcom/google/android/gms/internal/zzwc;->mStartTime:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/zzwc;->zzcjl:J

    invoke-virtual {v2, v7, v8, v10, v11}, Lcom/google/android/gms/internal/zzvt;->zza(JJ)Lcom/google/android/gms/internal/zzvw;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzwc;->zzcjq:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/google/android/gms/internal/zzvw;->zzcjd:I

    if-nez v3, :cond_5

    const-string v3, "Adapter succeeded."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzahw;->zzby(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v4, "mediation_network_succeed"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/zzov;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v35

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v5, "mediation_networks_fail"

    const-string v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/zzov;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v4, "mls"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v34

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzov;->zza(Lcom/google/android/gms/internal/zzot;[Ljava/lang/String;)Z

    iget-object v3, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v4, "ttm"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v29

    invoke-virtual {v3, v7, v4}, Lcom/google/android/gms/internal/zzov;->zza(Lcom/google/android/gms/internal/zzot;[Ljava/lang/String;)Z

    return-object v2

    :cond_5
    move-object/from16 v7, v29

    move-object/from16 v5, v34

    move-object/from16 v3, v35

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v9, "mlf"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/zzov;->zza(Lcom/google/android/gms/internal/zzot;[Ljava/lang/String;)Z

    iget-object v5, v2, Lcom/google/android/gms/internal/zzvw;->zzcjf:Lcom/google/android/gms/internal/zzwi;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/google/android/gms/internal/zzaij;->zzdfn:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/zzwd;

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/zzwd;-><init>(Lcom/google/android/gms/internal/zzwc;Lcom/google/android/gms/internal/zzvw;)V

    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    move-object v2, v3

    move-object v3, v7

    move-object/from16 v5, v27

    move-object/from16 v8, v28

    const/4 v7, 0x1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v30, v15

    :goto_5
    move-object v2, v0

    :goto_6
    :try_start_4
    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/google/android/gms/internal/zzwc;->zzanh:Lcom/google/android/gms/internal/zzov;

    const-string v4, "mediation_networks_fail"

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/zzov;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/zzvw;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzvw;-><init>(I)V

    return-object v2
.end method

.method public final zzmf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzvw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwc;->zzcjq:Ljava/util/List;

    return-object v0
.end method
