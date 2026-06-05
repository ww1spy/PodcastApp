.class public Lmobi/beyondpod/ui/core/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private _checkDisabled:Z

.field private _checkableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation
.end field

.field private _isChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->initialise(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->initialise(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->initialise(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private findCheckableChildren(Landroid/view/View;)V
    .locals 3

    .line 92
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkableChildren:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Landroid/view/ViewGroup;

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->findCheckableChildren(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initialise(Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_isChecked:Z

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkableChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_isChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->findCheckableChildren(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkDisabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_isChecked:Z

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkableChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    .line 53
    invoke-interface {v1, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-boolean v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_isChecked:Z

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/core/CheckableRelativeLayout;->_checkableChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    .line 64
    invoke-interface {v1}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0

    :cond_1
    return-void
.end method
