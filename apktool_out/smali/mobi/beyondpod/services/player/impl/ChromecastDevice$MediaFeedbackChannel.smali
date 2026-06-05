.class public Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFeedbackChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;
    }
.end annotation


# static fields
.field private static final BP_FEEDBACK_CHANNEL_NAMESPACE:Ljava/lang/String; = "urn:x-cast:mobi.beyondpod.feedbackchannel"

.field private static final KEY_CONTENT_ID:Ljava/lang/String; = "contentId"

.field private static final KEY_EVENT:Ljava/lang/String; = "event"

.field private static final KEY_MEDIA_END:Ljava/lang/String; = "mediaEnded"

.field private static final KEY_PLAYBACK_ERROR_ID:Ljava/lang/String; = "playbackError"

.field private static final KEY_SEEK_COMPLETED:Ljava/lang/String; = "seekCompleted"

.field private static final KEY_VIDEO_FOCUS_GAIN:Ljava/lang/String; = "videoFocusGain"

.field private static final KEY_VIDEO_FOCUS_LOST:Ljava/lang/String; = "videoFocusLost"


# instance fields
.field _NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "urn:x-cast:mobi.beyondpod.feedbackchannel"

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "urn:x-cast:mobi.beyondpod.feedbackchannel"

    .line 775
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 780
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "event"

    .line 781
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "event"

    .line 783
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "seekCompleted"

    .line 784
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "chromecastDevice"

    const-string p2, "####FB ---- On Seek Completed!"

    .line 786
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "mediaEnded"

    .line 789
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "chromecastDevice"

    const-string v0, "####FB ---- On Playback Completed!"

    .line 791
    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "contentId"

    .line 793
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    iget-object p2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    if-eqz p2, :cond_6

    .line 796
    iget-object p2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    invoke-interface {p2, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;->onPlaybackComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "videoFocusLost"

    .line 798
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "chromecastDevice"

    const-string p2, "####FB ---- On Video Focus Lost"

    .line 800
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    if-eqz p1, :cond_6

    .line 803
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;->onVideoFocusLost()V

    goto :goto_0

    :cond_3
    const-string p1, "videoFocusGain"

    .line 805
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "chromecastDevice"

    const-string p2, "####FB ---- On Video Focus Gain"

    .line 807
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    if-eqz p1, :cond_6

    .line 810
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;->onVideoFocusGain()V

    goto :goto_0

    :cond_4
    const-string p1, "playbackError"

    .line 812
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "chromecastDevice"

    const-string p2, "####FB ---- On Playback Error"

    .line 814
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    if-eqz p1, :cond_6

    .line 817
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    invoke-interface {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;->onPlaybackError()V

    goto :goto_0

    :cond_5
    const-string p2, "chromecastDevice"

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "chromecastDevice"

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message doesn\'t contain an expected key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method setNotificationListener(Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->_NotificationListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel$FeedbackNotificationListener;

    return-void
.end method
