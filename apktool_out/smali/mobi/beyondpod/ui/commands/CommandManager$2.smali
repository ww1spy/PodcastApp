.class final Lmobi/beyondpod/ui/commands/CommandManager$2;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->askForReplaceAppend(Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Landroid/widget/RadioGroup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isManual:Z

.field final synthetic val$playList:Ljava/util/List;

.field final synthetic val$remember:Landroid/widget/CheckBox;

.field final synthetic val$startOn:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/content/Context;Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

    .line 354
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$cb:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$remember:Landroid/widget/CheckBox;

    iput-object p3, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$playList:Ljava/util/List;

    iput-object p5, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$startOn:Lmobi/beyondpod/rsscore/Track;

    iput-boolean p6, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$isManual:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 358
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$cb:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x1

    const v0, 0x7f10041e

    const/4 v1, 0x0

    const v2, 0x7f090251

    if-ne p1, v2, :cond_1

    .line 360
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 362
    invoke-static {p1, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 364
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$playList:Ljava/util/List;

    iget-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$startOn:Lmobi/beyondpod/rsscore/Track;

    iget-boolean v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$isManual:Z

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdLoadPlaylistAndPlayTrack(Ljava/util/List;Lmobi/beyondpod/rsscore/Track;Z)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$cb:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v2, 0x7f09024e

    if-ne p1, v2, :cond_3

    .line 371
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$remember:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 373
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setAutoPlaylistEnabled(Z)V

    .line 374
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 377
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$2;->val$startOn:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayTrack(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Z

    :cond_3
    :goto_0
    return-void
.end method
