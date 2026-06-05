.class public Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "AddFeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/AddFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field private tabs:[Ljava/lang/String;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    .line 470
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 506
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->tabs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 482
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->access$200(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    const-string v2, "Publishers"

    .line 484
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Regions"

    .line 485
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Categories"

    .line 486
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Interests"

    .line 487
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;-><init>()V

    const-string v2, "SECTION"

    .line 495
    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->tabs:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_1
    :goto_0
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/views/impexp/PublishersFragment;-><init>()V

    const-string v2, "SECTION"

    .line 490
    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->tabs:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setTabs([Ljava/lang/String;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$TabsPagerAdapter;->tabs:[Ljava/lang/String;

    return-void
.end method
