.class public Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "FolderBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FolderBrowserFragment"


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

.field _Content:Landroid/widget/ListView;

.field _OnFolderSelected:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_OnFolderSelected:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 99
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Landroid/app/Activity;

    .line 101
    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_OnFolderSelected:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_1

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_OnFolderSelected:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_OnFolderSelected:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$OnFolderSelectedListener;->onFolderSelected(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p2, 0x0

    const p3, 0x7f0c006f

    .line 53
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090109

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Content:Landroid/widget/ListView;

    .line 57
    new-instance p3, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, p0, v1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    .line 58
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Content:Landroid/widget/ListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {p3, p2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->setRoot(Ljava/io/File;)V

    .line 62
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Content:Landroid/widget/ListView;

    new-instance p3, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
