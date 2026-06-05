.class Lmobi/beyondpod/ui/views/FileViewActivity$1;
.super Ljava/lang/Object;
.source "FileViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/FileViewActivity;->scrollToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/FileViewActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/FileViewActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmobi/beyondpod/ui/views/FileViewActivity$1;->this$0:Lmobi/beyondpod/ui/views/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity$1;->this$0:Lmobi/beyondpod/ui/views/FileViewActivity;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->access$100(Lmobi/beyondpod/ui/views/FileViewActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/FileViewActivity$1;->this$0:Lmobi/beyondpod/ui/views/FileViewActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/FileViewActivity;->access$000(Lmobi/beyondpod/ui/views/FileViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
