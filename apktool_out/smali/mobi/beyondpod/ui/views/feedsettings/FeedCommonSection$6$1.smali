.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;

.field final synthetic val$s:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;Landroid/widget/ScrollView;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;->val$s:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 331
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;->val$s:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$1100(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
