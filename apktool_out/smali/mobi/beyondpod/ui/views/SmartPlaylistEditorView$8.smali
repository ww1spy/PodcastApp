.class Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;
.super Ljava/lang/Object;
.source "SmartPlaylistEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->BuildItem(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

.field final synthetic val$entry:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->val$entry:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 421
    iget-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->val$entry:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 422
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->swapItems(II)V

    .line 423
    iget-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->reBindTemplates()V

    return-void
.end method
