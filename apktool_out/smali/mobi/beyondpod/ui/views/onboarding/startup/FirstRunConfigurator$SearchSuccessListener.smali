.class Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;
.super Ljava/lang/Object;
.source "FirstRunConfigurator.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;
    }
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

.field _random:Ljava/util/Random;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;)V
    .locals 2

    .line 170
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->_random:Ljava/util/Random;

    return-void
.end method

.method private addFeed(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;)Lmobi/beyondpod/rsscore/Feed;
    .locals 4

    .line 309
    iget-object v0, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->feedUrl:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->feedUrl:Ljava/lang/String;

    iget-object v1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->feedName:Ljava/lang/String;

    iget-object v2, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->feedImageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/Feed;->createAndAddFeedWithDefaults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget v2, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->categoryId:I

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->getLocaleCategoryNameFor(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->categoryName:Ljava/lang/String;

    .line 318
    :cond_1
    iget-object v2, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->categoryColor:Ljava/lang/String;

    .line 319
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget p1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;->categoryId:I

    invoke-virtual {v2, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->getLocaleCategoryColorFor(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_2
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    .line 327
    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 334
    :goto_0
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq p1, v2, :cond_4

    .line 336
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 337
    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->setCategoryColor(Lmobi/beyondpod/rsscore/categories/FeedCategory;I)V

    .line 339
    :cond_3
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    if-eq v1, p1, :cond_4

    .line 341
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->setPrimary(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 345
    :cond_4
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyFeedChanged(Lmobi/beyondpod/rsscore/Feed;)V

    return-object v0
.end method

.method private addSampleContent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultPodcastDownloadAction()I

    move-result v0

    const/4 v1, 0x2

    .line 211
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setGlobalDefaultPodcastDownloadAction(I)V

    .line 213
    new-instance v1, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;

    .line 217
    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->addFeed(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 226
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 227
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->moveCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 231
    :cond_2
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGlobalDefaultPodcastDownloadAction(I)V

    .line 233
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 234
    invoke-static {v1, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V

    :cond_3
    return-void
.end method

.method private configureAnalytics()V
    .locals 1

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_EnablaeAnalytics:Z

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGatherAnalyticsData(Z)V

    return-void
.end method

.method private configureAutomaticUpdate()V
    .locals 12

    .line 239
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_DownloadOnWiFiOnly:Z

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setDownloadEnclosuresOnWiFiOnly(Z)V

    .line 241
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_AutomaticDownloadsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->tasks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 247
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    .line 248
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->getRandomHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 249
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->getRandomMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 250
    new-instance v1, Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v11, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v11}, Lmobi/beyondpod/schedulercore/Event;-><init>(Ljava/util/Date;ILmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 251
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->operations()Ljava/util/HashMap;

    move-result-object v0

    sget-object v3, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->OperationID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/schedulercore/OperationBase;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lmobi/beyondpod/schedulercore/OperationBase;->createInstance(Ljava/lang/String;)Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v0

    .line 252
    move-object v3, v0

    check-cast v3, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    sget-object v4, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->setCategoryToUpdate(Ljava/lang/String;)V

    .line 254
    new-instance v3, Lmobi/beyondpod/schedulercore/ScheduledTask;

    invoke-direct {v3, v1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;-><init>(Lmobi/beyondpod/schedulercore/Event;Lmobi/beyondpod/schedulercore/OperationBase;)V

    .line 255
    iput-boolean v2, v3, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    .line 256
    invoke-static {v3}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->registerTask(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 257
    invoke-static {v3}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->setScheduledTaskToDevice(Lmobi/beyondpod/schedulercore/ScheduledTask;)V

    .line 259
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    return-void
.end method

.method private findOrCreateCategory(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 2

    .line 352
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1

    .line 355
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 357
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v0, v1, :cond_1

    .line 361
    :try_start_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->addCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1

    .line 369
    :cond_1
    :goto_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    return-object p1
.end method

.method private getRandomHour()I
    .locals 3

    const/4 v0, 0x4

    .line 271
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 272
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->_random:Ljava/util/Random;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    return v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private getRandomMinute()I
    .locals 3

    const/4 v0, 0x4

    .line 277
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 278
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->_random:Ljava/util/Random;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    return v0

    :array_0
    .array-data 4
        0x1
        0xf
        0x1e
        0x2d
    .end array-data
.end method

.method private parseResults(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 284
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 287
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 290
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 292
    new-instance v12, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;

    const-string v4, "Title"

    .line 293
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    const-string v4, "Title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_1
    const-string v4, "Url"

    .line 294
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    const-string v4, "Url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_2
    const-string v4, "ImageUrl"

    .line 295
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v8, v5

    goto :goto_3

    :cond_3
    const-string v4, "ImageUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :goto_3
    const-string v4, "Category"

    .line 296
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v9, v5

    goto :goto_4

    :cond_4
    const-string v4, "Category"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :goto_4
    const-string v4, "CategoryColor"

    .line 297
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v10, v5

    goto :goto_5

    :cond_5
    const-string v4, "CategoryColor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    :goto_5
    const-string v4, "CategoryId"

    .line 298
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    const-string v4, "CategoryId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v4, v12

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener$SampleContentResult;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_7
    return-object v0
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->parseResults(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->configureAutomaticUpdate()V

    .line 188
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->configureAnalytics()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->addSampleContent(Ljava/util/List;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 194
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->access$000(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 199
    :try_start_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f10030c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 200
    sget-object v1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting sample content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 204
    :goto_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->this$0:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->access$000(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;Z)V

    throw p1
.end method

.method setQuery(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;->_Query:Ljava/lang/String;

    return-void
.end method
