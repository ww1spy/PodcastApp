.class Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;
.super Ljava/lang/Object;
.source "FadingNetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->imageSuccess(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

.field final synthetic val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iput-object p2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->imageSuccess(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
