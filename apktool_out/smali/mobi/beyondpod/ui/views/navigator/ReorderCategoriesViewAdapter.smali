.class public Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReorderCategoriesViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;
    }
.end annotation


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    .line 42
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Context:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method clearContent()V
    .locals 1

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->clear()V

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 87
    :try_start_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0091

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;

    invoke-direct {p2, v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;-><init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$1;)V

    const v0, 0x7f090078

    .line 89
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->primaryText:Landroid/widget/TextView;

    const v0, 0x7f090075

    .line 90
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->colorIndicator:Landroid/view/View;

    .line 92
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p3, p2

    goto :goto_1

    .line 96
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 99
    :goto_0
    :try_start_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 100
    iget-object v0, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->colorIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->colorIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p2, p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter$CategoryViewItem;->colorIndicator:Landroid/view/View;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 110
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-object p3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method setCategories(Lmobi/beyondpod/rsscore/categories/CategoryList;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->clear()V

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->_Items:Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
