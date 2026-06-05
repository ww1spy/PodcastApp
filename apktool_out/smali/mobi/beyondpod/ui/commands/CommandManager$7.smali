.class final Lmobi/beyondpod/ui/commands/CommandManager$7;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowUpdateLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$7;->val$logs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1051
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$7;->val$logs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->access$200(Ljava/io/File;)V

    return-void
.end method
