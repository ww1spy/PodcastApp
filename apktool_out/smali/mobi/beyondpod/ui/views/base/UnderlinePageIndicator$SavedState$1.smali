.class final Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;
    .locals 2

    .line 437
    new-instance v0, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState$1;->newArray(I)[Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;
    .locals 0

    .line 442
    new-array p1, p1, [Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator$SavedState;

    return-object p1
.end method
