.class final Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$1;
.super Ljava/lang/Object;
.source "InfoCardManager.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getBroadcastNotification(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$1;->val$c:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotIt()V
    .locals 1

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setNextNotificationTime(Ljava/util/Date;)V

    return-void
.end method
