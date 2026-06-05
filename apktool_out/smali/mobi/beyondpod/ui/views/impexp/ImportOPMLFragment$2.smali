.class Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;
.super Ljava/lang/Object;
.source "ImportOPMLFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 96
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object p1, p1, v0

    .line 97
    new-instance v6, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->TAG:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    if-nez p1, :cond_0

    .line 106
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;-><init>()V

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0901b2

    .line 108
    sget-object v2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x1003

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 114
    :cond_0
    invoke-virtual {p1, v6}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->initialize(Lmobi/beyondpod/rsscore/Feed;)V

    .line 115
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->loadCurrentFeed()V

    return-void
.end method
