.class Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;
.super Ljava/lang/Object;
.source "FadingNetworkImageView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->imageError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;->this$0:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->imageSuccess(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
