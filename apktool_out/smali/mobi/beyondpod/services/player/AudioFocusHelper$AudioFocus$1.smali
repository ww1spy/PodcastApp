.class Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 100
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->pauseOnNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "**** Audiofocus changed but pause on notification is Disabled"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 140
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** Audiofocus change: AUDIOFOCUS_LOSS. Is Playing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 141
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Is Connected to Chromecast: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->pause()V

    .line 144
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$302(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    goto/16 :goto_1

    .line 148
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$302(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 149
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$402(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$600(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$502(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 151
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$800(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$702(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 153
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT. Is Playing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 154
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$300(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Connected to Chromecast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Connected to Bluetooth Audio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 156
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$500(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Wired headset connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 157
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$700(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->duck()V

    goto/16 :goto_1

    .line 163
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK! Currently playing on Chromecast player. Ignoring..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$302(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 172
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$402(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 173
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$600(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$502(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$800(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$702(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    .line 176
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK. Is Playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 178
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$300(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Connected to Chromecast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Connected to Bluetooth Audio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 180
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$500(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Is Wired Headset Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 181
    invoke-static {v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$700(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->duck()V

    goto/16 :goto_1

    .line 109
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** Audiofocus change: AUDIOFOCUS_GAIN. Is Playing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 110
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Was playing when audiofocus was lost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 111
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$300(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Was Connected to Chromecast on focus lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 112
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$400(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Is connected now: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Was Connected to Bluetooth when audiofocus was lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 115
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$500(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Is connected now: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 116
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$600(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Was wired headset connected when audiofocus was lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 118
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$700(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Is Connected now: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 119
    invoke-static {v2}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$800(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$300(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$400(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result p1

    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 129
    invoke-static {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$500(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$600(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    .line 130
    invoke-static {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$700(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$800(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z

    move-result v0

    if-ne p1, v0, :cond_3

    .line 131
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->play()V

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "**** CC, BT or WH connections have changed since we paused. Will not resume!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_4
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;->this$0:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    invoke-static {p1, v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->access$302(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
