.class final Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState$1;
.super Ljava/lang/Object;
.source "PlaybackSpeedPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;
    .locals 1

    .line 128
    new-instance v0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState$1;->newArray(I)[Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;
    .locals 0

    .line 133
    new-array p1, p1, [Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    return-object p1
.end method
