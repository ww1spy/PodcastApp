.class public final enum Lcom/aocate/media/MediaPlayer$State;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aocate/media/MediaPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum END:Lcom/aocate/media/MediaPlayer$State;

.field private static final synthetic ENUM$VALUES:[Lcom/aocate/media/MediaPlayer$State;

.field public static final enum ERROR:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum IDLE:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum PAUSED:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum PREPARED:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum PREPARING:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum STARTED:Lcom/aocate/media/MediaPlayer$State;

.field public static final enum STOPPED:Lcom/aocate/media/MediaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 85
    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->IDLE:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "PREPARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->PREPARED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->STARTED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "PREPARING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->PREPARING:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->PLAYBACK_COMPLETED:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "END"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->END:Lcom/aocate/media/MediaPlayer$State;

    new-instance v0, Lcom/aocate/media/MediaPlayer$State;

    const-string v1, "ERROR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/aocate/media/MediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->ERROR:Lcom/aocate/media/MediaPlayer$State;

    const/16 v0, 0xa

    .line 84
    new-array v0, v0, [Lcom/aocate/media/MediaPlayer$State;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->IDLE:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->INITIALIZED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PREPARED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->STARTED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PAUSED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->STOPPED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PREPARING:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PLAYBACK_COMPLETED:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->END:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v10

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->ERROR:Lcom/aocate/media/MediaPlayer$State;

    aput-object v1, v0, v11

    sput-object v0, Lcom/aocate/media/MediaPlayer$State;->ENUM$VALUES:[Lcom/aocate/media/MediaPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aocate/media/MediaPlayer$State;
    .locals 1

    .line 1
    const-class v0, Lcom/aocate/media/MediaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aocate/media/MediaPlayer$State;

    return-object p0
.end method

.method public static values()[Lcom/aocate/media/MediaPlayer$State;
    .locals 4

    .line 1
    sget-object v0, Lcom/aocate/media/MediaPlayer$State;->ENUM$VALUES:[Lcom/aocate/media/MediaPlayer$State;

    const/4 v1, 0x0

    array-length v2, v0

    new-array v3, v2, [Lcom/aocate/media/MediaPlayer$State;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
