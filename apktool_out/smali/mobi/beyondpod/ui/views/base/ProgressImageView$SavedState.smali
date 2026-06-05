.class public Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/ProgressImageView;
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
            "Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;",
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

    .line 238
    new-instance v0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState$1;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 263
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mProgress:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mMax:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmobi/beyondpod/ui/views/base/ProgressImageView$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;)I
    .locals 0

    .line 236
    iget p0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mMax:I

    return p0
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;I)I
    .locals 0

    .line 236
    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mMax:I

    return p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;)I
    .locals 0

    .line 236
    iget p0, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mProgress:I

    return p0
.end method

.method static synthetic access$102(Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;I)I
    .locals 0

    .line 236
    iput p1, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mProgress:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 272
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    iget p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget p2, p0, Lmobi/beyondpod/ui/views/base/ProgressImageView$SavedState;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
