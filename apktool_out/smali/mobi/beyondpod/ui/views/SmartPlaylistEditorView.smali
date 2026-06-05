.class public Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SmartPlaylistEditorView.java"


# static fields
.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_OK:I = 0x0

.field private static final START_WITH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartPlaylistEditorView"

.field private static final THEN_PLAY:Ljava/lang/String;


# instance fields
.field _AllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _ListHolder:Landroid/widget/LinearLayout;

.field _NumEpisodes:[Ljava/lang/String;

.field _PlaylistName:Landroid/widget/EditText;

.field _RuleColors:[I

.field private _ScrollView:Landroid/widget/ScrollView;

.field _Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

.field _TipInfoCard:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1003e2

    .line 71
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->THEN_PLAY:Ljava/lang/String;

    const v0, 0x7f1003e1

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->START_WITH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->saveChanges()V

    return-void
.end method

.method private addOkCancelButtons()V
    .locals 4

    .line 193
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001b

    const/4 v2, 0x0

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090028

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$2;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090027

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$3;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x1a

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 220
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private saveChanges()V
    .locals 2

    .line 228
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_PlaylistName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getNextPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->renameTo(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->updateSmartplayTo(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    .line 235
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    .line 237
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->finish()V

    return-void
.end method

.method private showHowToUseSmartPlay()V
    .locals 7

    const/16 v0, 0xd

    .line 543
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v3, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v3}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 547
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 550
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/16 v4, 0xd

    const/4 v5, 0x2

    new-instance v6, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;

    invoke-direct {v6, p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$10;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    const v1, 0x7f090243

    .line 567
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 569
    invoke-virtual {v0, v3, v2, v2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    .line 570
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 571
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_TipInfoCard:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private usesUncategorized()Z
    .locals 3

    .line 477
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 479
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method BuildItem(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;I)Landroid/view/View;
    .locals 11

    .line 300
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c8

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090248

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p2, :cond_0

    .line 306
    sget-object v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->START_WITH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->THEN_PLAY:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090200

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    array-length v3, v3

    if-ge p2, v3, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    array-length v3, v3

    rem-int v3, p2, v3

    :goto_1
    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f090242

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 315
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$4;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$4;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090244

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 329
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 330
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getEntriesForAssignment()Ljava/util/ArrayList;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    .line 331
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 332
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 335
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v7, v6

    goto :goto_4

    .line 337
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getEntriesForAssignment()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 339
    invoke-virtual {v8}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v9

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v10

    if-ne v9, v10, :cond_4

    invoke-virtual {v8}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v8

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v9

    if-ne v8, v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 345
    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v7, v2, :cond_6

    .line 346
    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 348
    :cond_6
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$5;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$5;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f09024a

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f030048

    .line 367
    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 370
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 372
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getEpisodeSortOrder()I

    move-result v2

    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getPosFromSortOrder(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 374
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$6;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f090247

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f030046

    .line 392
    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 395
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 397
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getNumTracks()I

    move-result v2

    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getEpisodesPositionFromNumEpisodes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 399
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$7;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$7;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f09005e

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 416
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$8;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    if-ne p2, v2, :cond_7

    move v2, v3

    goto :goto_5

    :cond_7
    move v2, v6

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f09005f

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 431
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$9;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$9;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    move v3, v6

    .line 442
    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method bindTemplates()V
    .locals 4

    .line 285
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 289
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isMarkedForDeletion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->BuildItem(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;I)Landroid/view/View;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ListHolder:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getEntriesForAssignment()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_AllEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 451
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->usesUncategorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilter()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    .line 454
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_AllEntries:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 458
    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_AllEntries:Ljava/util/ArrayList;

    new-instance v4, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v5, v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    new-instance v1, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    .line 463
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 467
    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_AllEntries:Ljava/util/ArrayList;

    new-instance v4, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 471
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_AllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method getEpisodesPositionFromNumEpisodes(I)I
    .locals 6

    .line 528
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 531
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_NumEpisodes:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 533
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method getNumEpisodesFromPosition(I)I
    .locals 1

    .line 523
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_NumEpisodes:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method getPosFromSortOrder(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method getSortOrderFromPos(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x3

    return p1

    :pswitch_0
    const/16 p1, 0x64

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object p1, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0c00c7

    .line 102
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_1

    .line 106
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->addOkCancelButtons()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 110
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_NumEpisodes:[Ljava/lang/String;

    const v1, 0x7f090249

    .line 116
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f090245

    .line 117
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ListHolder:Landroid/widget/LinearLayout;

    const v1, 0x7f090246

    .line 118
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_PlaylistName:Landroid/widget/EditText;

    const v1, 0x7f09003a

    .line 120
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 124
    invoke-static {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v2

    if-nez v2, :cond_3

    .line 128
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->addSmartPlaylist()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v2

    .line 138
    :cond_3
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->cloneSmartPlaylist()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v2

    iput-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 139
    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 140
    iget-object v2, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_PlaylistName:Landroid/widget/EditText;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_Template:Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_4
    new-instance v2, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView$1;-><init>(Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    array-length v3, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    move v3, v2

    .line 163
    :goto_1
    array-length v4, v1

    if-eq v3, v4, :cond_5

    .line 167
    :try_start_0
    iget-object v4, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    aget-object v5, v1, v3

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 171
    :catch_0
    iget-object v4, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_RuleColors:[I

    const v5, -0xffff01

    aput v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->bindTemplates()V

    .line 177
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->showHowToUseSmartPlay()V

    if-eqz p1, :cond_6

    const-string v1, "ScrollPos"

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 182
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_6
    if-eqz v0, :cond_7

    .line 186
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 243
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f100094

    .line 246
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0800d7

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x6

    .line 247
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f10008a

    const/4 v3, 0x1

    .line 248
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0800b5

    .line 249
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 250
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->finish()V

    return v2

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->saveChanges()V

    return v2

    .line 260
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 489
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ScrollPos"

    .line 491
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method reBindTemplates()V
    .locals 3

    .line 277
    iget-object v0, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 278
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ListHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 279
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->bindTemplates()V

    .line 280
    iget-object v1, p0, Lmobi/beyondpod/ui/views/SmartPlaylistEditorView;->_ScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
