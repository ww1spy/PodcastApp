.class public Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;
.super Ljava/lang/Object;
.source "SectionHeaderAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000002"

    .line 14
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->_Context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->_Title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 63
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->AdapterID:Ljava/util/UUID;

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
    .locals 1

    if-nez p2, :cond_0

    .line 32
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;)V

    .line 33
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->_Context:Landroid/content/Context;

    const p3, 0x7f0c00be

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090217

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;->Title:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;

    .line 44
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter$Holder;->Title:Landroid/widget/TextView;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->_Title:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
