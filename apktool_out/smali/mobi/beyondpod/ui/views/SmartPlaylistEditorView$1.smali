.class Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;
.super Ljava/lang/Object;
.source "SmartPlaylistEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    new-instance p1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setSortID(I)V

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->reBindTemplates()V

    .line 152
    iget-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    const-string v0, "input_method"

    .line 153
    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_PlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
