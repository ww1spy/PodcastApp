.class public Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;
.super Ljava/lang/Object;
.source "DeletePodcastDialog.java"


# static fields
.field private static _ContentFormat:Ljava/lang/String;

.field private static _TitleFormat:Ljava/lang/String;

.field private static _onDismissed:Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _DeleteLocked:Z

.field private _OnOK:Landroid/content/DialogInterface$OnClickListener;

.field private _Tracks:Lmobi/beyondpod/rsscore/TrackList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_DeleteLocked:Z

    .line 126
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    .line 58
    sget-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_ContentFormat:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 60
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x15

    const v1, 0x7f100153

    if-lt p1, v0, :cond_0

    const-string p1, "%s"

    .line 62
    sput-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_ContentFormat:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_TitleFormat:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_ContentFormat:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    sput-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_TitleFormat:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_DeleteLocked:Z

    return p0
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_DeleteLocked:Z

    return p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Z)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->getFormattedTracks(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)Lmobi/beyondpod/rsscore/TrackList;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    return-object p0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 7

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c003c

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900c5

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x800003

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_DeleteLocked:Z

    .line 95
    iget-boolean v3, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_DeleteLocked:Z

    xor-int/2addr v3, v5

    invoke-direct {p0, v3}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->getFormattedTracks(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900c4

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 98
    iget-object v6, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->hasLockedTracks()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v6, 0x7f100159

    .line 99
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 100
    new-instance v6, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;

    invoke-direct {v6, p0, v2}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100092

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10008a

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    sget-object v1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_onDismissed:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_2

    .line 117
    sget-object v1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_onDismissed:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    :cond_2
    sget-object v1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_TitleFormat:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    sget-object v1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_TitleFormat:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedTracks(Z)Ljava/lang/String;
    .locals 5

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    if-nez v0, :cond_0

    .line 145
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10014d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 151
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    const-string v3, "\n\n"

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "\u2022 "

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f10014e

    goto :goto_1

    :cond_3
    const v2, 0x7f10014f

    :goto_1
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :cond_5
    sget-object p1, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_ContentFormat:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hasLockedTracks()Z
    .locals 3

    .line 167
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 172
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 75
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, v0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_Tracks:Lmobi/beyondpod/rsscore/TrackList;

    .line 77
    invoke-direct {v0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 81
    sput-object p2, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->_onDismissed:Landroid/content/DialogInterface$OnDismissListener;

    .line 82
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method
