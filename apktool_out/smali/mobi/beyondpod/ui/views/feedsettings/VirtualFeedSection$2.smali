.class Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$2;
.super Ljava/lang/Object;
.source "VirtualFeedSection.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 129
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$2;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection$2;->this$0:Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;->access$200(Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
