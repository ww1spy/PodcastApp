.class Lmobi/beyondpod/ui/views/MasterView$11;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView;->openAddFeedActivityIfNeeded(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$11;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$11;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    const-class v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_KEY"

    .line 1130
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->access$1000()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$11;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/MasterView;->startActivity(Landroid/content/Intent;)V

    .line 1132
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$11;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/MasterView;->access$200(Lmobi/beyondpod/ui/views/MasterView;Z)V

    return-void
.end method
