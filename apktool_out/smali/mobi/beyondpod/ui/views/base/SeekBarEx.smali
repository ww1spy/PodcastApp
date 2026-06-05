.class public Lmobi/beyondpod/ui/views/base/SeekBarEx;
.super Landroid/widget/SeekBar;
.source "SeekBarEx.java"


# instance fields
.field _WasDragged:Z

.field private mScaledTouchSlop:I

.field mTouchDownX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/SeekBarEx;->_WasDragged:Z

    .line 36
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/SeekBarEx;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/SeekBarEx;->_WasDragged:Z

    .line 42
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/SeekBarEx;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/SeekBarEx;->_WasDragged:Z

    .line 48
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/SeekBarEx;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/SeekBarEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/SeekBarEx;->mScaledTouchSlop:I

    return-void
.end method


# virtual methods
.method public wasDragged()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/SeekBarEx;->_WasDragged:Z

    return v0
.end method
