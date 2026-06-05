.class final Lmobi/beyondpod/ui/commands/CommandManager$1;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->askForReplaceAppend(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$remember:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$1;->val$remember:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f09024e

    if-ne p2, p1, :cond_0

    .line 343
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$1;->val$remember:Landroid/widget/CheckBox;

    const p2, 0x7f10041c

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$1;->val$remember:Landroid/widget/CheckBox;

    const p2, 0x7f10041d

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(I)V

    :goto_0
    return-void
.end method
