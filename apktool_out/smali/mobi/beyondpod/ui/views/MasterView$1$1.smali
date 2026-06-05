.class Lmobi/beyondpod/ui/views/MasterView$1$1;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView$1;->onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/MasterView$1;

.field final synthetic val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView$1;Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    new-instance v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;-><init>()V

    .line 147
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    iget v1, v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->access$000()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/MasterView;->access$100(Lmobi/beyondpod/ui/views/MasterView;Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v0, v2}, Lmobi/beyondpod/ui/views/MasterView;->access$200(Lmobi/beyondpod/ui/views/MasterView;Z)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    iget v1, v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    if-ne v1, v2, :cond_1

    .line 155
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->access$300()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/MasterView;->access$100(Lmobi/beyondpod/ui/views/MasterView;Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V

    .line 157
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v0, v2}, Lmobi/beyondpod/ui/views/MasterView;->access$200(Lmobi/beyondpod/ui/views/MasterView;Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->val$evt:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    iget v1, v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 168
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->access$400()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MasterView;->access$500(Lmobi/beyondpod/ui/views/MasterView;)V

    .line 170
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/MasterView;->access$200(Lmobi/beyondpod/ui/views/MasterView;Z)V

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$1$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/MasterView$1;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    :cond_2
    :goto_0
    return-void
.end method
