.class Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;
.super Ljava/lang/Object;
.source "SmartPlaylistEditorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 375
    iput-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;->val$entry:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 380
    iget-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;->val$entry:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getSortOrderFromPos(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setEpisodeSortOrder(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
