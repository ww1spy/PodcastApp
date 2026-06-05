.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$3;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$300(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$400(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Z)V

    return-void
.end method
