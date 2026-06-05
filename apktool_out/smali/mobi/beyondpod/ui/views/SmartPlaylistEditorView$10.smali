.class Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;
.super Ljava/lang/Object;
.source "SmartPlaylistEditorView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->showHowToUseSmartPlay()V
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

    .line 551
    iput-object p1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwnerActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reloadContent()V
    .locals 2

    .line 554
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 557
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;->this$0:Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
