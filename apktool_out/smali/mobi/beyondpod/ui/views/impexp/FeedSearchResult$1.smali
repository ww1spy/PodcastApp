.class final Lmobi/beyondpod/ui/views/impexp/FeedSearchResult$1;
.super Ljava/lang/Object;
.source "FeedSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;
    .locals 1

    .line 185
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult$1;->newArray(I)[Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;
    .locals 0

    .line 191
    new-array p1, p1, [Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    return-object p1
.end method
