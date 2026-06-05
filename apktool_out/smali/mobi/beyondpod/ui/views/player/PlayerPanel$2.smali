.class Lmobi/beyondpod/ui/views/player/PlayerPanel$2;
.super Ljava/lang/Object;
.source "PlayerPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerPanel;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 133
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iget-wide v2, p3, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x96

    cmp-long p3, v4, v2

    if-lez p3, :cond_2

    .line 135
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iput-wide v0, p3, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    .line 136
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$700(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p3, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$602(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)J

    .line 138
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$700(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v4, p2, v0

    const/4 p2, 0x1

    if-nez v4, :cond_1

    const-string p3, ""

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    .line 139
    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$700(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v4}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$600(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v4

    sub-long v6, v0, v4

    div-long/2addr v6, v2

    invoke-static {v6, v7, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 141
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$600(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object p2

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$800(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updateCurrentPosition(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    iget-boolean p2, p2, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_ManualSeekInProgress:Z

    if-nez p2, :cond_3

    .line 148
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_ManualSeekInProgress:Z

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 156
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$000(Lmobi/beyondpod/ui/views/player/PlayerPanel;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$600(Lmobi/beyondpod/ui/views/player/PlayerPanel;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lmobi/beyondpod/services/player/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerPanel;->access$602(Lmobi/beyondpod/ui/views/player/PlayerPanel;J)J

    .line 164
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_ManualSeekInProgress:Z

    .line 165
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerPanel$2;->this$0:Lmobi/beyondpod/ui/views/player/PlayerPanel;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lmobi/beyondpod/ui/views/player/PlayerPanel;->_LastSeekEventTime:J

    return-void
.end method
