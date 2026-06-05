.class public Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;
.super Landroid/app/Activity;
.source "DisableGoogleReaderDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004c

    .line 44
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->setContentView(I)V

    const p1, 0x7f0900c5

    .line 46
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAllAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 54
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearLogin()V

    const p1, 0x7f10024f

    .line 55
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->finish()V

    return-void

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 63
    invoke-static {v4}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "  \u2022 "

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f100353

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 76
    :goto_1
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAllSpecialAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "\n\n"

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/rsscore/Feed;

    const-string v7, "  \u2022 "

    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f100352

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090066

    .line 91
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f10008a

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 93
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090065

    .line 102
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f100351

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    if-eqz v1, :cond_6

    .line 107
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/DisableGoogleReaderDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method
