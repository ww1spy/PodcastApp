.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;
.super Ljava/lang/Object;
.source "FeedSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private static _DateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private _Description:Ljava/lang/String;

.field private _EpisodeUrl:Ljava/lang/String;

.field private _ImageUrl:Ljava/lang/String;

.field private _Language:Ljava/lang/String;

.field private _Link:Ljava/lang/String;

.field private _OriginatingFeed:Ljava/lang/String;

.field private _PubDate:Ljava/lang/String;

.field private _Title:Ljava/lang/String;

.field private _TotalTime:Ljava/lang/String;

.field private _Type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_DateFormat:Ljava/text/SimpleDateFormat;

    .line 180
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult$1;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Title:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Type:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Link:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_ImageUrl:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Description:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_OriginatingFeed:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_EpisodeUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Language:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_TotalTime:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Title:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Type:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Link:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_ImageUrl:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Description:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_OriginatingFeed:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_EpisodeUrl:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Language:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_TotalTime:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Description:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeUrl()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_EpisodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_ImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Language:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Link:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingFeed()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_OriginatingFeed:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDateAsDate()Ljava/util/Date;
    .locals 2

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_TotalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Description:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeUrl(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_EpisodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_ImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Language:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Link:Ljava/lang/String;

    return-void
.end method

.method public setOriginatingFeed(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_OriginatingFeed:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Title:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_TotalTime:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 168
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_OriginatingFeed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_Language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_TotalTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->_PubDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
