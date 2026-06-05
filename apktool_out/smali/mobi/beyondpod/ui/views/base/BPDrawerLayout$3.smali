.class Lmobi/beyondpod/ui/views/base/BPDrawerLayout$3;
.super Ljava/lang/Object;
.source "BPDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->peekDrawer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$3;->this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$3;->this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawers()V

    return-void
.end method
