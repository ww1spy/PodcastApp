.class public Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;
.super Landroid/app/Activity;
.source "WidgetActionPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;
    }
.end annotation


# static fields
.field private static final OPEN_BEYOND_POD:Ljava/lang/String;

.field private static final START_SMART_PLAY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WidgetActionPicker"

.field private static final UPDATE_SMART_PLAY_FEEDS:Ljava/lang/String;


# instance fields
.field private mImages:[I

.field private mStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100425

    .line 54
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->UPDATE_SMART_PLAY_FEEDS:Ljava/lang/String;

    const v0, 0x7f100424

    .line 55
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->START_SMART_PLAY:Ljava/lang/String;

    const v0, 0x7f100423

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->OPEN_BEYOND_POD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    .line 60
    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->OPEN_BEYOND_POD:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->START_SMART_PLAY:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->UPDATE_SMART_PLAY_FEEDS:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->mStrings:[Ljava/lang/String;

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->mImages:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800c2
        0x7f0800d2
        0x7f0800cf
    .end array-data
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->openBeyondPodUI()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->startSmartPlay()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->mStrings:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->mImages:[I

    return-object p0
.end method

.method private openBeyondPodUI()V
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.ui.dialogs.WidgetActionPicker"

    .line 122
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSmartPlay()V
    .locals 3

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->requestWindowFeature(I)Z

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->TAG:Ljava/lang/String;

    const-string v0, "WidgetActionPicker started with no storage card. Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/ui/views/Splash;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->finish()V

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->openBeyondPodUI()V

    .line 81
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->finish()V

    return-void

    :cond_1
    const p1, 0x7f0c00d3

    .line 85
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->setContentView(I)V

    const p1, 0x7f0902b2

    .line 87
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 89
    new-instance v0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;

    invoke-direct {v0, p0, p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;-><init>(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;-><init>(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
