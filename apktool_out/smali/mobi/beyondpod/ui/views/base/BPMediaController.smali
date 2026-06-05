.class public Lmobi/beyondpod/ui/views/base/BPMediaController;
.super Landroid/widget/RelativeLayout;
.source "BPMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;
    }
.end annotation


# static fields
.field private static final SHOW_PROGRESS:I = 0x2

.field public static final TOOLBAR_TIMEOUT_LONG:I = 0x36ee80

.field public static final TOOLBAR_TIMEOUT_SHORT:J = 0xbb8L


# instance fields
.field private _CurrentTime:Landroid/widget/TextView;

.field protected _LastSeekEventTime:J

.field private _MediaController:Landroid/view/ViewGroup;

.field final _NavigationHandler:Landroid/os/Handler;

.field _NavigationRunnable:Ljava/lang/Runnable;

.field private _Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

.field private _PlayIconOpticalPadding:I

.field private _PlayPause:Landroid/widget/ImageButton;

.field private _PlayPauseListener:Landroid/view/View$OnClickListener;

.field private _RamainingTime:Landroid/widget/TextView;

.field private _SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

.field private _SkipBackDuration:Landroid/widget/TextView;

.field private _SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

.field private _SkipBackwardClickListener:Landroid/view/View$OnClickListener;

.field private _SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

.field private _SkipForwardClickListener:Landroid/view/View$OnClickListener;

.field private _SkipForwardDuration:Landroid/widget/TextView;

.field private _SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

.field private _SkipToEnd:Landroid/widget/ImageView;

.field private _SkipToEndClickListener:Landroid/view/View$OnClickListener;

.field private _SkipToEndLOngClickListener:Landroid/view/View$OnLongClickListener;

.field private _StartSeekPos:I

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mPlayer:Landroid/widget/VideoView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$1;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationRunnable:Ljava/lang/Runnable;

    .line 296
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$2;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    .line 399
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$3;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 446
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$4;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$5;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackwardClickListener:Landroid/view/View$OnClickListener;

    .line 462
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$6;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$6;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    .line 471
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$7;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$7;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndLOngClickListener:Landroid/view/View$OnLongClickListener;

    .line 483
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$8;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 491
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$9;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$9;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    .line 597
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$10;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$1;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationRunnable:Ljava/lang/Runnable;

    .line 296
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$2;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    .line 399
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$3;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 446
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$4;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$5;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackwardClickListener:Landroid/view/View$OnClickListener;

    .line 462
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$6;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$6;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    .line 471
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$7;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$7;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndLOngClickListener:Landroid/view/View$OnLongClickListener;

    .line 483
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$8;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 491
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$9;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$9;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    .line 597
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$10;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$1;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationRunnable:Ljava/lang/Runnable;

    .line 296
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$2;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    .line 399
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$3;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 446
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$4;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$5;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackwardClickListener:Landroid/view/View$OnClickListener;

    .line 462
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$6;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$6;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    .line 471
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$7;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$7;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndLOngClickListener:Landroid/view/View$OnLongClickListener;

    .line 483
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$8;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 491
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$9;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$9;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    const/4 p1, 0x0

    .line 541
    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    .line 597
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPMediaController$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController$10;-><init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/view/ViewGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/BPMediaController;)Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    return-object p0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/ui/views/base/BPMediaController;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->scanForward(II)V

    return-void
.end method

.method static synthetic access$1100(Lmobi/beyondpod/ui/views/base/BPMediaController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mShowing:Z

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/base/BPMediaController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mDragging:Z

    return p0
.end method

.method static synthetic access$202(Lmobi/beyondpod/ui/views/base/BPMediaController;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/VideoView;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_RamainingTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_CurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/base/BPMediaController;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/base/BPMediaController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/base/BPMediaController;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->scanBackward(II)V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .line 388
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->doPause()V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->doStart()V

    .line 396
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updatePausePlay()V

    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0901cc

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090232

    .line 135
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setRepeatListener(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;J)V

    const v0, 0x7f09022f

    .line 139
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEnd:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEnd:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEnd:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEndLOngClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f090233

    .line 143
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardDuration:Landroid/widget/TextView;

    const v0, 0x7f090231

    .line 144
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackDuration:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipToEnd:Landroid/widget/ImageView;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f090230

    .line 151
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackwardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setRepeatListener(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;J)V

    const v0, 0x102000d

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 161
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    const v0, 0x7f090295

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_RamainingTime:Landroid/widget/TextView;

    const v0, 0x7f0900b3

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_CurrentTime:Landroid/widget/TextView;

    return-void
.end method

.method private scanBackward(II)V
    .locals 7

    .line 501
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 506
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    const-wide/16 p1, 0x0

    .line 507
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    if-ge p2, v0, :cond_2

    mul-int/lit8 p2, p2, 0xa

    goto :goto_0

    :cond_2
    const v1, 0xc350

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x28

    add-int/2addr p2, v1

    .line 522
    :goto_0
    iget v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    sub-int/2addr v0, p2

    if-gez v0, :cond_3

    const/4 v1, 0x0

    .line 525
    iput v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    .line 526
    iget v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    add-int/2addr v0, v1

    :cond_3
    int-to-long v1, p2

    .line 529
    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0xfa

    cmp-long p2, v5, v3

    if-gtz p2, :cond_4

    if-gez p1, :cond_5

    .line 531
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 532
    iput-wide v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    .line 535
    :cond_5
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setProgress()I

    :goto_1
    const-wide/16 p1, 0xbb8

    .line 538
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    return-void
.end method

.method private scanForward(II)V
    .locals 7

    .line 546
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 551
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    const-wide/16 p1, 0x0

    .line 552
    iput-wide p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    if-ge p2, v0, :cond_2

    mul-int/lit8 p2, p2, 0xa

    goto :goto_0

    :cond_2
    const v1, 0xc350

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x28

    add-int/2addr p2, v1

    .line 567
    :goto_0
    iget v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    add-int/2addr v0, p2

    .line 568
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_3

    add-int/lit16 v1, v1, -0x3e8

    .line 572
    iput v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    .line 573
    iget v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_StartSeekPos:I

    :cond_3
    int-to-long v1, p2

    .line 576
    iget-wide v3, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    sub-long v5, v1, v3

    const-wide/16 v3, 0xfa

    cmp-long p2, v5, v3

    if-gtz p2, :cond_4

    if-gez p1, :cond_5

    .line 578
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 579
    iput-wide v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_LastSeekEventTime:J

    .line 582
    :cond_5
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setProgress()I

    :goto_1
    const-wide/16 p1, 0xbb8

    .line 585
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    return-void
.end method

.method private setProgress()I
    .locals 8

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mDragging:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 178
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    .line 179
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    if-eqz v2, :cond_3

    if-lez v1, :cond_1

    const-wide/16 v4, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    int-to-long v6, v1

    .line 184
    div-long/2addr v4, v6

    .line 185
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    :cond_1
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v2

    .line 188
    iget-object v4, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0xa

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 191
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_RamainingTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v0

    div-int/2addr v1, v3

    int-to-long v5, v1

    const/4 v1, 0x1

    invoke-static {v5, v6, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_CurrentTime:Landroid/widget/TextView;

    div-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private showAndAutoHideNavigation(J)V
    .locals 2

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->showNavigation()V

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->hideNavigationDelayed(J)V

    return-void
.end method

.method private updatePausePlay()V
    .locals 3

    .line 371
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0801df

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0801e0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 382
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayIconOpticalPadding:I

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 201
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    goto :goto_1

    .line 221
    :pswitch_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->doPause()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->doStart()V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v5, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v5, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v5, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_SkipBackwardClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v5, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 250
    :pswitch_4
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->goToPreviousTrack()V

    goto :goto_0

    .line 245
    :pswitch_5
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->goToNextTrack()V

    goto :goto_0

    .line 229
    :pswitch_6
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->doPause()V

    .line 232
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updatePausePlay()V

    goto :goto_0

    .line 217
    :cond_0
    :pswitch_7
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doPauseResume()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->skipToEnd()V

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    .line 265
    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    .line 266
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updatePausePlay()V

    return v4

    :cond_3
    const/16 v1, 0x19

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 281
    :cond_4
    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    :cond_5
    const/16 v1, 0x55

    if-eq v0, v1, :cond_7

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_7

    const/16 v1, 0x57

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x59

    if-eq v0, v1, :cond_7

    const/16 v1, 0x82

    if-eq v0, v1, :cond_7

    const/16 v2, 0x80

    if-eq v0, v2, :cond_7

    const/16 v2, 0x81

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 293
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v4

    .line 274
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doPlayNextTrack()V
    .locals 2

    .line 363
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->goToNextTrack()V

    :cond_0
    return-void
.end method

.method public doPlayPause()V
    .locals 2

    .line 306
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doPauseResume()V

    const-wide/16 v0, 0xbb8

    .line 307
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    return-void
.end method

.method public doSkipBack()V
    .locals 2

    .line 333
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 337
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    add-int/lit16 v1, v1, -0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 348
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setProgress()I

    const-wide/16 v0, 0xbb8

    .line 349
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    return-void
.end method

.method public doSkipForward()V
    .locals 2

    .line 312
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    .line 316
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    add-int/lit16 v1, v1, -0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 327
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->setProgress()I

    const-wide/16 v0, 0xbb8

    .line 328
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    return-void
.end method

.method public doSkipToEnd()V
    .locals 2

    .line 354
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 357
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public hideNavigationDelayed(J)V
    .locals 2

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_NavigationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public initialize(Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_Owner:Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    const p1, 0x7f090275

    .line 83
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mPlayer:Landroid/widget/VideoView;

    const p1, 0x7f090178

    .line 85
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    .line 87
    invoke-direct {p0, p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->initControllerView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    const/high16 v0, 0x40000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 91
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 93
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070111

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayIconOpticalPadding:I

    .line 94
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updateTimeAndPosition()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_MediaController:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(J)V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 593
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updateTimeAndPosition()V

    .line 594
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->showAndAutoHideNavigation(J)V

    return-void
.end method

.method public updateTimeAndPosition()V
    .locals 2

    .line 619
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->updatePausePlay()V

    .line 620
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
