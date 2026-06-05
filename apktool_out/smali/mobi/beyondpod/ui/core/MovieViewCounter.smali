.class public Lmobi/beyondpod/ui/core/MovieViewCounter;
.super Ljava/lang/Object;
.source "MovieViewCounter.java"


# static fields
.field static volatile _InstanceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInstance()V
    .locals 1

    .line 19
    sget v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    return-void
.end method

.method public static hasInstances()Z
    .locals 1

    .line 9
    sget v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static instanceCount()I
    .locals 1

    .line 14
    sget v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    return v0
.end method

.method public static removeInstance()V
    .locals 1

    .line 24
    sget v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmobi/beyondpod/ui/core/MovieViewCounter;->_InstanceCount:I

    return-void
.end method
