.class final Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$1;
.super Ljava/lang/Object;
.source "SmartPlaylistManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    check-cast p2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$1;->compare(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)I

    move-result p1

    return p1
.end method

.method public compare(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
