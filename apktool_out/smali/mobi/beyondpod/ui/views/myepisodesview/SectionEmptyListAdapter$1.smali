.class Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$1;
.super Ljava/lang/Object;
.source "SectionEmptyListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;->onEmptyViewSelected()V

    return-void
.end method
