.class public Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;
.super Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;
.source "PublisherFeedsFragment.java"


# static fields
.field private static final PUBLISHER_NAME_TAG:Ljava/lang/String; = "PUBLISHER_NAME"

.field protected static final PUBLISHER_TAG:Ljava/lang/String; = "#PUBLISHER:#"


# instance fields
.field _PublisherName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "PUBLISHER_NAME"

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_PublisherName:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->buildContents(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected callSearch(Ljava/lang/String;ILmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_FeedSearchService:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    const-string v1, "#PUBLISHER:#"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_FilterTag:Ljava/lang/String;

    iget v4, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->PAGE_SIZE:I

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getPublisherFeeds(Ljava/lang/String;Ljava/lang/String;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method getEmptyText()Ljava/lang/CharSequence;
    .locals 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_PublisherName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100313

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->buildFilterForEmptyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPublisherFeeds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_PublisherName:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#PUBLISHER:#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->doSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 51
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_0

    .line 55
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "publisherName"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "publisherId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 57
    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->loadPublisherFeeds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PUBLISHER_NAME"

    .line 90
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/PublisherFeedsFragment;->_PublisherName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
