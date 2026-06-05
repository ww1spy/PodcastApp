.class final Lmobi/beyondpod/ui/commands/CommandManager$8;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosuresManually(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enclosures:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$8;->val$enclosures:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1250
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$8;->val$enclosures:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->access$300(Ljava/util/ArrayList;Z)V

    return-void
.end method
