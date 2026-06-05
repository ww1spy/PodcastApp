.class public Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "SampleContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;,
        Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;
    }
.end annotation


# static fields
.field public static final MAX_SELECTED_CATEGORIES:I = 0xf


# instance fields
.field _Context:Landroid/content/Context;

.field _SampleContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_Context:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f030013

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 30
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 32
    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    new-instance v4, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    aget-object v5, v1, v2

    aget-object v6, v0, v2

    aget-object v7, p1, v2

    invoke-direct {v4, v5, v6, v7}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uncheckOverflowItemFarthestFromItem(I)V
    .locals 9

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 134
    rem-int v1, p1, v0

    .line 135
    div-int/2addr p1, v0

    .line 141
    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    .line 143
    iget-boolean v7, v6, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    if-eqz v7, :cond_0

    .line 145
    iget-object v7, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 146
    rem-int v7, v6, v0

    .line 147
    div-int v8, v6, v0

    sub-int v7, v1, v7

    .line 149
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, p1, v8

    .line 150
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    if-le v8, v5, :cond_0

    move v4, v6

    move v5, v8

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    move-result-object p1

    .line 162
    iput-boolean v3, p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getCheckedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    .line 122
    iget-boolean v3, v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCheckedItemsCount()I
    .locals 3

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    .line 109
    iget-boolean v2, v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    move-result-object p1

    return-object p1
.end method

.method public final getItemAt(I)Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_SampleContent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->_Context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c006c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;

    invoke-direct {p3, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$1;)V

    .line 44
    iput-object p2, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->background:Landroid/view/View;

    const v0, 0x7f09008f

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->checked:Landroid/view/View;

    const v0, 0x7f090073

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->categoryName:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    move-result-object p1

    .line 56
    iget-object v0, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->categoryName:Landroid/widget/TextView;

    iget-object v1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->background:Landroid/view/View;

    iget v1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->categoryColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    iget-object p3, p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContentHolder;->checked:Landroid/view/View;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public toggleItem(I)V
    .locals 2

    .line 86
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    move-result-object v0

    .line 88
    iget-boolean v1, v0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    .line 92
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getCheckedItemsCount()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->uncheckOverflowItemFarthestFromItem(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, v0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->notifyDataSetChanged()V

    return-void
.end method
