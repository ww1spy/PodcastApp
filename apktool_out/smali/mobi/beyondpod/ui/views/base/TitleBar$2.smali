.class Lmobi/beyondpod/ui/views/base/TitleBar$2;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/base/TitleBar;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/TitleBar;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/TitleBar;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar$2;->this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar$2;->this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/TitleBar;->access$100(Lmobi/beyondpod/ui/views/base/TitleBar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 106
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/TitleBar$2;->this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/base/TitleBar;->access$200(Lmobi/beyondpod/ui/views/base/TitleBar;)Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    .line 107
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    move v0, v1

    .line 106
    :cond_3
    invoke-virtual {v2, v3, v4, v0}, Lmobi/beyondpod/ui/views/MasterView;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    return-void
.end method
