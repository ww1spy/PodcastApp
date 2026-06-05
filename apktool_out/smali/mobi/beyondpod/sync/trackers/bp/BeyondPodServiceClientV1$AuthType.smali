.class public final enum Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;
.super Ljava/lang/Enum;
.source "BeyondPodServiceClientV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

.field public static final enum BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

.field public static final enum Google:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    const-string v1, "BeyondPod"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    .line 36
    new-instance v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    const-string v1, "Google"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->Google:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    sget-object v1, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->BeyondPod:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->Google:Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->$VALUES:[Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;
    .locals 1

    .line 34
    const-class v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    return-object p0
.end method

.method public static values()[Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;
    .locals 1

    .line 34
    sget-object v0, Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->$VALUES:[Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    invoke-virtual {v0}, [Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/beyondpod/sync/trackers/bp/BeyondPodServiceClientV1$AuthType;

    return-object v0
.end method
