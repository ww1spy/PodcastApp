.class Lmobi/beyondpod/ui/views/MasterView$7$1;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/MasterView$7;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView$7;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$7$1;->this$1:Lmobi/beyondpod/ui/views/MasterView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 531
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteAllRepositoryFiles()V

    const/4 p1, 0x0

    .line 532
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
