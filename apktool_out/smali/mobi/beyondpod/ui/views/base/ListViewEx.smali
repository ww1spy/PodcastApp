.class public Lmobi/beyondpod/ui/views/base/ListViewEx;
.super Landroid/widget/ListView;
.source "ListViewEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public volatile ViewIsScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/ListViewEx;->ViewIsScrolling:Z

    .line 50
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->initializeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/ListViewEx;->ViewIsScrolling:Z

    .line 44
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->initializeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/ListViewEx;->ViewIsScrolling:Z

    .line 38
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->initializeView()V

    return-void
.end method


# virtual methods
.method protected OnItemSelected(I)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Selected"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public canScrollLeft()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initializeView()V
    .locals 0

    .line 55
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/base/ListViewEx;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 73
    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/base/ListViewEx;->OnItemSelected(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
