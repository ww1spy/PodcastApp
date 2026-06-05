.class Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;
.super Ljava/lang/Object;
.source "PlaylistPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field card:Landroid/view/View;

.field date:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
