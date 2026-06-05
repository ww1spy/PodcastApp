.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$3;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ensureSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$3;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 382
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$3;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->syncSelection()V

    return-void
.end method
