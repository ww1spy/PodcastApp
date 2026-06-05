.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$1;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$000(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
