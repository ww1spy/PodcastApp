.class public Lmobi/beyondpod/rsscore/AutoUpdatePreference;
.super Landroid/preference/Preference;
.source "AutoUpdatePreference.java"


# static fields
.field private static final THERE_ARE_NO_SCHEDULED_UPDATES:Ljava/lang/String;

.field private static final UPDATES_ARE_SCHEDULED_FOR_CATEGORIES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget v0, Lmobi/beyondpod/R$string;->updates_are_scheduled_for_categories:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->UPDATES_ARE_SCHEDULED_FOR_CATEGORIES:Ljava/lang/String;

    .line 44
    sget v0, Lmobi/beyondpod/R$string;->there_are_no_scheduled_updates:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->THERE_ARE_NO_SCHEDULED_UPDATES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->refreshWhatIsScheduled()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->refreshWhatIsScheduled()V

    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method protected refreshWhatIsScheduled()V
    .locals 4

    const-string v0, ""

    .line 57
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/schedulercore/ScheduledTask;

    .line 59
    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->operation()Lmobi/beyondpod/schedulercore/OperationBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    instance-of v3, v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_1
    check-cast v2, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/OperationUpdateCategory;->getCategoryToUpdate()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    sget-object v0, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->THERE_ARE_NO_SCHEDULED_UPDATES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->UPDATES_ARE_SCHEDULED_FOR_CATEGORIES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/AutoUpdatePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
