.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;
.super Ljava/lang/Object;
.source "InfoCardTip.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;,
        Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;

.field public static final CARD_TYPE_INFO:I = 0x2

.field public static final CARD_TYPE_MARKETING:I = 0x3

.field public static final CARD_TYPE_WARNING:I = 0x1


# instance fields
.field _CardType:I

.field _Context:Landroid/content/Context;

.field _Message:Lmobi/beyondpod/ui/views/notifications/Message;

.field _OnGotItAction:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;

.field _Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

.field _PreferenceToSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0002-000000000000"

    .line 26
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_PreferenceToSet:I

    const/4 v0, 0x2

    iput v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_CardType:I

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 46
    iput-object p5, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    .line 47
    iput p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_PreferenceToSet:I

    .line 48
    iput p4, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_CardType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_PreferenceToSet:I

    const/4 v0, 0x2

    iput v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_CardType:I

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 55
    iput-object p5, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    .line 56
    iput-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_OnGotItAction:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;

    .line 57
    iput p4, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_CardType:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->refreshParent()V

    return-void
.end method

.method private clearNotificationFlag()V
    .locals 2

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_OnGotItAction:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_OnGotItAction:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;->onGotIt()V

    .line 207
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_PreferenceToSet:I

    if-ltz v0, :cond_1

    .line 209
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_PreferenceToSet:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 210
    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->recordTipShown()Ljava/util/Date;

    :cond_1
    return-void
.end method

.method private dismiss(Landroid/view/View;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->clearNotificationFlag()V

    .line 161
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->findCardRoot(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 164
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->refreshParent()V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$3;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private findCardRoot(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090159

    if-eq v0, v1, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 146
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 147
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

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;->reloadContent()V

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 223
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->AdapterID:Ljava/util/UUID;

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
    .locals 2

    if-nez p2, :cond_0

    .line 67
    new-instance p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V

    .line 68
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    const p3, 0x7f0c007a

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09028a

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->title:Landroid/widget/TextView;

    const p3, 0x7f0900ba

    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->description:Landroid/widget/TextView;

    const p3, 0x7f0901ac

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->TBDismiss:Landroid/widget/TextView;

    const p3, 0x7f09006d

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->cardFace:Landroid/view/View;

    .line 73
    iput-object p2, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->cardRoot:Landroid/view/View;

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;

    .line 83
    iget p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_CardType:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    .line 94
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->cardFace:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    const v1, 0x7f06008a

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->cardFace:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    const v1, 0x7f060089

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->cardFace:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    const v1, 0x7f06008b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    :goto_0
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/notifications/Message;->formattedMessage(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->TBDismiss:Landroid/widget/TextView;

    const v0, 0x7f100255

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object p3, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->TBDismiss:Landroid/widget/TextView;

    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$Holder;->description:Landroid/widget/TextView;

    new-instance p3, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
