.class Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;
.super Ljava/lang/Object;
.source "SmartPlayListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/SmartPlayListView;->openPlaylistOverflow(Landroid/view/View;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

.field final synthetic val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 183
    :pswitch_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lmobi/beyondpod/ui/views/ShortcutHandler;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mobi.beyondpod.playlist.id"

    .line 184
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 185
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 186
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    .line 187
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 188
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 189
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1003e0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-static {v3}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->access$200(Lmobi/beyondpod/ui/views/player/SmartPlayListView;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v2

    .line 194
    new-instance v3, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v2}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 197
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;->build()Landroid/support/v4/content/pm/ShortcutInfoCompat;

    move-result-object p1

    .line 200
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/support/v4/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1003df

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    .line 176
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->setDefaultSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 177
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V

    return v1

    .line 158
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    .line 160
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100152

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v6}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f100092

    new-instance v3, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2$1;-><init>(Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;)V

    .line 161
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f10008a

    .line 172
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    .line 154
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditSmartPlayList(I)V

    return v1

    .line 150
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlayListView$2;->val$playlist:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateSmartPlayList(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
