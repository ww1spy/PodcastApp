.class public Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;
.super Landroid/widget/LinearLayout;
.source "NavigatorExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;
    }
.end annotation


# instance fields
.field _AddFeed:Landroid/view/View;

.field _AddFeedText:Landroid/widget/TextView;

.field _EditContent:Landroid/view/View;

.field private _EditListener:Landroid/view/View$OnClickListener;

.field _GoPro:Landroid/view/View;

.field _Help:Landroid/view/View;

.field _Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

.field _Settings:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$1;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method initialize(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0900cc

    .line 61
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditContent:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditContent:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_EditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900cf

    .line 64
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Settings:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Settings:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$2;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGUIDebug()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Settings:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$3;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const v0, 0x7f0900ca

    .line 92
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Help:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Help:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$4;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGUIDebug()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_Help:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$5;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    const v0, 0x7f0900c9

    .line 117
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_GoPro:Landroid/view/View;

    const v0, 0x7f090037

    .line 121
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_AddFeed:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_AddFeed:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$6;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090039

    .line 135
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_AddFeedText:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->refreshContent()V

    return-void
.end method

.method public refreshContent()V
    .locals 2

    .line 157
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_GoPro:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$7;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$7;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_GoPro:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public switchToEditMode()V
    .locals 2

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_AddFeedText:Landroid/widget/TextView;

    const v1, 0x7f10029d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public switchToNonEditMode()V
    .locals 2

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->_AddFeedText:Landroid/widget/TextView;

    const v1, 0x7f10029e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
