.class Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;
.super Ljava/lang/Object;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field _Query:Ljava/lang/String;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 6

    const/4 v0, 0x2

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v2, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$000(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Z)V

    .line 93
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$100(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->_Query:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->parseJSONResults(Ljava/lang/String;Lorg/json/JSONArray;[Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsAppending:Z

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 100
    :cond_0
    aget-object p1, v0, v1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-boolean v3, v3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsAppending:Z

    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onBeforeDataLoaded(ZLjava/lang/String;)V

    .line 107
    aget-object p1, v0, v1

    check-cast p1, Ljava/util/List;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 111
    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v5, v5, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget v4, v4, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->PAGE_SIZE:I

    if-ge v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iput-boolean v3, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_NoMoreResultsExist:Z

    .line 119
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$200(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-boolean v3, v3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsAppending:Z

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onAfterDataLoaded(ZLjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 128
    :try_start_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$200(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f10030c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error performing search: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$000(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Z)V

    return-void

    .line 133
    :goto_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 134
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$000(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Z)V

    throw p1
.end method

.method setQuery(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$SearchSuccessListener;->_Query:Ljava/lang/String;

    return-void
.end method
