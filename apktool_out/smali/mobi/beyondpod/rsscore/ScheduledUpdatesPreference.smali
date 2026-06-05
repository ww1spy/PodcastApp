.class public Lmobi/beyondpod/rsscore/ScheduledUpdatesPreference;
.super Lmobi/beyondpod/rsscore/AutoUpdatePreference;
.source "ScheduledUpdatesPreference.java"


# static fields
.field public static final PREFERENCE_KEY:Ljava/lang/String; = "ScheduledUpdatesPreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/rsscore/AutoUpdatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ScheduledUpdatesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetUpdateSchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;Z)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/ScheduledUpdatesPreference;->refreshWhatIsScheduled()V

    return-void
.end method
