.class public Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DownloadProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/DownloadProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    new-instance v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState$1;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 314
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mProgress:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mMax:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmobi/beyondpod/ui/views/base/DownloadProgressButton$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I
    .locals 0

    .line 301
    iget p0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mMax:I

    return p0
.end method

.method static synthetic access$102(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I
    .locals 0

    .line 301
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mMax:I

    return p1
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I
    .locals 0

    .line 301
    iget p0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mProgress:I

    return p0
.end method

.method static synthetic access$202(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I
    .locals 0

    .line 301
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mProgress:I

    return p1
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;)I
    .locals 0

    .line 301
    iget p0, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mState:I

    return p0
.end method

.method static synthetic access$302(Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;I)I
    .locals 0

    .line 301
    iput p1, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mState:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    iget p2, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget p2, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget p2, p0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton$SavedState;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
