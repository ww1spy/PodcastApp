.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;
.super Ljava/lang/Object;
.source "InfoCardGuidedTour.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;

.field public static final TYPE_TOUR:I = 0x0

.field public static final TYPE_TRIAL_ABOUT_TO_EXPIRE_WARNING:I = 0x2

.field public static final TYPE_TRIAL_EXPIRED:I = 0x3

.field public static final TYPE_VERSION_UPGRADE:I = 0x1


# instance fields
.field private _ActionListener:Landroid/view/View$OnClickListener;

.field private _ActionListenerGoPro:Landroid/view/View$OnClickListener;

.field _CardType:I

.field _Context:Landroid/content/Context;

.field _Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0001-000000000000"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    .line 30
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListener:Landroid/view/View$OnClickListener;

    .line 39
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$2;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListenerGoPro:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    .line 54
    iput p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    .line 55
    iput-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->refreshParent()V

    return-void
.end method

.method private buildGuidedTourCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V
    .locals 3

    .line 122
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardFace:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    const v2, 0x7f060088

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->title:Landroid/widget/TextView;

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->action:Landroid/widget/TextView;

    const v1, 0x7f100256

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0800b5

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 127
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardContent:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildTrialAboutToExpireCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V
    .locals 5

    .line 132
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardFace:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    const v2, 0x7f06008c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpiresInDays()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1003f9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->action:Landroid/widget/TextView;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 137
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardContent:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListenerGoPro:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildTrialExpiredCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V
    .locals 3

    .line 142
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardFace:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    const v2, 0x7f060088

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->title:Landroid/widget/TextView;

    const v1, 0x7f1003fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->action:Landroid/widget/TextView;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0800b5

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 147
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardContent:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListenerGoPro:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildWhatIsNewCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V
    .locals 5

    .line 112
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardFace:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    const v2, 0x7f06008c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10025a

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->action:Landroid/widget/TextView;

    const v1, 0x7f100259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 117
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardContent:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_ActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearNotificationFlag()V
    .locals 2

    .line 217
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xe

    .line 228
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpiresInDays()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setTrialExpirationWarningDays(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 224
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    .line 220
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dismiss(Landroid/view/View;)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->clearNotificationFlag()V

    .line 174
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->findCardRoot(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 177
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->refreshParent()V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$4;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private findCardRoot(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090159

    if-eq v0, v1, :cond_2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 159
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 160
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_2
    return-object p1
.end method

.method private refreshParent()V
    .locals 1

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;->reloadContent()V

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 249
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->AdapterID:Ljava/util/UUID;

    return-object v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 65
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V

    .line 66
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    const p3, 0x7f0c0079

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09028a

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->title:Landroid/widget/TextView;

    const p3, 0x7f0900ba

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->action:Landroid/widget/TextView;

    const p3, 0x7f0901ac

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    const p3, 0x7f09006d

    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardFace:Landroid/view/View;

    const p3, 0x7f09006c

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->cardContent:Landroid/view/View;

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;

    .line 81
    iget p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    if-nez p3, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->buildGuidedTourCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V

    goto :goto_0

    .line 85
    :cond_1
    iget p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 87
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->buildWhatIsNewCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V

    goto :goto_0

    .line 89
    :cond_2
    iget p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 91
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->buildTrialAboutToExpireCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V

    goto :goto_0

    .line 93
    :cond_3
    iget p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 95
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->buildTrialExpiredCard(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;)V

    .line 98
    :cond_4
    :goto_0
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$Holder;->TBDismiss:Landroid/widget/TextView;

    new-instance p3, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$3;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$3;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
