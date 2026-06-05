.class Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;
.super Ljava/lang/Object;
.source "VolumeBoostSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->initialize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 44
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->access$000(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->access$102(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;I)I

    .line 48
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->access$000(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->access$200(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)V

    return-void
.end method
