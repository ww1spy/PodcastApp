.class Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;
.super Ljava/lang/Object;
.source "ExternalPlayerStarterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->updateTrackWhenRepositoryLoads(Ljava/lang/String;JJLjava/lang/Float;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$filePlaybackStartTime:J

.field final synthetic val$pctPlayed:Ljava/lang/Float;

.field final synthetic val$position:J

.field final synthetic val$totalTime:J


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Ljava/lang/String;JJLjava/lang/Float;J)V
    .locals 0

    .line 207
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$filePath:Ljava/lang/String;

    iput-wide p3, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$filePlaybackStartTime:J

    iput-wide p5, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$position:J

    iput-object p7, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$pctPlayed:Ljava/lang/Float;

    iput-wide p8, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$totalTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 211
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$filePath:Ljava/lang/String;

    iget-wide v2, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$filePlaybackStartTime:J

    iget-wide v4, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$position:J

    iget-object v6, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$pctPlayed:Ljava/lang/Float;

    iget-wide v7, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;->val$totalTime:J

    invoke-static/range {v0 .. v8}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->access$000(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Ljava/lang/String;JJLjava/lang/Float;J)V

    return-void
.end method
