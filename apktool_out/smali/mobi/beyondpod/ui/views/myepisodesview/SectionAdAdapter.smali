.class public Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;
.super Ljava/lang/Object;
.source "SectionAdAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "SectionAdAdapter"


# instance fields
.field private _AdLoaded:Z

.field private _AdView:Lcom/google/android/gms/ads/AdView;

.field private _Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000007"

    .line 22
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdLoaded:Z

    .line 31
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_Context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 20
    iget-object p0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private reloadAd()V
    .locals 2

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdLoaded:Z

    .line 82
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 140
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

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

    .line 41
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_Context:Landroid/content/Context;

    const p2, 0x7f0c00bc

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance p1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    const-string p3, "ca-app-pub-1319643115400669/9972134087"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    invoke-static {}, Lmobi/beyondpod/ui/core/AdManager;->getAdSizeForCurrentDevice()Lcom/google/android/gms/ads/AdSize;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 46
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    new-instance p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 47
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 49
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/4 v0, -0x1

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 50
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->reloadAd()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    if-nez p1, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    :cond_1
    :goto_0
    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->TAG:Ljava/lang/String;

    const-string v1, "SectionAdAdapter - destroying"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->_AdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
