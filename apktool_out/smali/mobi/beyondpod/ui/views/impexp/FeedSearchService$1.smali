.class Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;
.super Ljava/lang/Object;
.source "FeedSearchService.java"

# implements Response.Listener<JSONObject> - unwraps iTunes "results" array
# and delivers it to the original JSONArray listener

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->performItunesGet(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields

# reference to the outer FeedSearchService instance (unused but kept for symmetry)
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

# the original JSONArray listener to forward results to
.field final synthetic val$listener:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchService;Lcom/android/volley/Response$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;->val$listener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 3

    # Cast the Object parameter to JSONObject
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    # Extract the "results" JSONArray from the iTunes response object
    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    # Forward the JSONArray to the original listener
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v2, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    # On any parse failure deliver an empty JSONArray rather than crashing
    move-exception v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$1;->val$listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v2, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
