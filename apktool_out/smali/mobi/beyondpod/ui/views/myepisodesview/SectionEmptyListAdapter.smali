.class public Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;
.super Ljava/lang/Object;
.source "SectionEmptyListAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;


# instance fields
.field private _ActionText:Ljava/lang/String;

.field private _Context:Landroid/content/Context;

.field private _EmptyText:Ljava/lang/String;

.field private _Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000003"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_Context:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_EmptyText:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_ActionText:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;
    .locals 0

    .line 14
    iget-object p0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;

    return-object p0
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 82
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->AdapterID:Ljava/util/UUID;

    return-object v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_Context:Landroid/content/Context;

    const p2, 0x7f0c00c0

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p1, 0x7f0900d7

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 50
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_EmptyText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090026

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 53
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_ActionText:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090216

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;

    if-eqz p3, :cond_1

    .line 59
    new-instance p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method
