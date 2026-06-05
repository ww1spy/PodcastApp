.class Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;
.super Ljava/lang/Object;
.source "VirtualFeedSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->access$000(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->access$100(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;Z)V

    return-void
.end method
