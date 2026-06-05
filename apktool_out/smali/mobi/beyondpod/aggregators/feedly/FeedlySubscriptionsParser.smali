.class public Lmobi/beyondpod/aggregators/feedly/FeedlySubscriptionsParser;
.super Ljava/lang/Object;
.source "FeedlySubscriptionsParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseSubscriptions(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v0, Lmobi/beyondpod/aggregators/GDataObject;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/GDataObject;-><init>()V

    .line 16
    new-instance v1, Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-direct {v1}, Lmobi/beyondpod/aggregators/GDataObjectList;-><init>()V

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    .line 17
    iget-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    const-string v2, "User Subscriptions"

    iput-object v2, v1, Lmobi/beyondpod/aggregators/GDataObjectList;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/FeedlySubscriptionsParser;->readSubscription(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/aggregators/GDataObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-object v0
.end method

.method static readCategories(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/aggregators/GDataObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p1, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/GDataObjectList;-><init>()V

    iput-object v0, p1, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    .line 61
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    const-string v1, "Categories"

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObjectList;->name:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p1, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/FeedlySubscriptionsParser;->readCategory(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/aggregators/GDataObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method private static readCategory(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lmobi/beyondpod/aggregators/GDataObject;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/GDataObject;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xd1b

    if-eq v3, v4, :cond_1

    const v4, 0x61f7ef4    # 2.9997847E-35f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "label"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 88
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->string:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->id:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readSubscription(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lmobi/beyondpod/aggregators/GDataObject;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/GDataObject;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xd1b

    if-eq v3, v4, :cond_2

    const v4, 0x6942258

    if-eq v3, v4, :cond_1

    const v4, 0x4d47461c    # 2.089538E8f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "categories"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const-string v3, "title"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 48
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 45
    :pswitch_0
    invoke-static {p0, v0}, Lmobi/beyondpod/aggregators/feedly/FeedlySubscriptionsParser;->readCategories(Lcom/google/gson/stream/JsonReader;Lmobi/beyondpod/aggregators/GDataObject;)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->title:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/aggregators/GDataObject;->id:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
