.class Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;
.super Ljava/lang/Object;
.source "PlaybackSpeedSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->initialize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 40
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->access$002(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;I)I

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->access$102(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;I)I

    .line 44
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->updateSpeed()V

    return-void
.end method
