.class public Lmobi/beyondpod/rsscore/helpers/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_EXTERNAL_DATA:I = 0x64

.field public static final FILE_TYPE_FLV:I = 0x1a

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x7

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1a

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static sExtensionTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sExtensionTypeMap:Ljava/util/HashMap;

    const-string v0, "MP3"

    const-string v1, "audio/mpeg"

    const/4 v2, 0x1

    .line 107
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M4A"

    const-string v1, "audio/mp4"

    const/4 v2, 0x2

    .line 108
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WAV"

    const-string v1, "audio/x-wav"

    const/4 v2, 0x3

    .line 109
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AMR"

    const-string v1, "audio/amr"

    const/4 v2, 0x4

    .line 110
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const-string v1, "audio/amr-wb"

    const/4 v2, 0x5

    .line 111
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMA"

    const-string v1, "audio/x-ms-wma"

    const/4 v2, 0x6

    .line 112
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGA"

    const-string v1, "application/ogg"

    const/4 v2, 0x7

    .line 113
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGG"

    const-string v1, "application/ogg"

    .line 114
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const-string v1, "audio/midi"

    const/16 v2, 0xb

    .line 116
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    .line 117
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    const-string v1, "audio/midi"

    .line 118
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    .line 119
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const-string v1, "audio/sp-midi"

    const/16 v3, 0xc

    .line 120
    invoke-static {v0, v3, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const-string v1, "audio/imelody"

    const/16 v3, 0xd

    .line 121
    invoke-static {v0, v3, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    const-string v1, "audio/midi"

    .line 122
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    const-string v1, "audio/midi"

    .line 123
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MP4"

    const-string v1, "video/mp4"

    const/16 v2, 0x15

    .line 125
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M4V"

    const-string v1, "video/mp4"

    const/16 v2, 0x16

    .line 126
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M4V"

    const-string v1, "video/quicktime"

    .line 127
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GP"

    const-string v1, "video/3gpp"

    const/16 v2, 0x17

    .line 128
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GPP"

    const-string v1, "video/3gpp"

    .line 129
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3G2"

    const-string v1, "video/3gpp2"

    const/16 v2, 0x18

    .line 130
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GPP2"

    const-string v1, "video/3gpp2"

    .line 131
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMV"

    const-string v1, "video/x-ms-wmv"

    const/16 v2, 0x19

    .line 132
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLV"

    const-string v1, "application/x-shockwave-flash"

    const/16 v2, 0x1a

    .line 133
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SWF"

    const-string v1, "application/x-shockwave-flash"

    .line 134
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPG"

    const-string v1, "image/jpeg"

    const/16 v2, 0x1f

    .line 136
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPEG"

    const-string v1, "image/jpeg"

    .line 137
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "GIF"

    const-string v1, "image/gif"

    const/16 v2, 0x20

    .line 138
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PNG"

    const-string v1, "image/png"

    const/16 v2, 0x21

    .line 139
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "BMP"

    const-string v1, "image/x-ms-bmp"

    const/16 v2, 0x22

    .line 140
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WBMP"

    const-string v1, "image/vnd.wap.wbmp"

    const/16 v2, 0x23

    .line 141
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U"

    const-string v1, "audio/x-mpegurl"

    const/16 v2, 0x29

    .line 143
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PLS"

    const-string v1, "audio/x-scpls"

    const/16 v2, 0x2a

    .line 144
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WPL"

    const-string v1, "application/vnd.ms-wpl"

    const/16 v2, 0x2b

    .line 145
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PDF"

    const-string v1, "application/pdf"

    const/16 v2, 0x64

    .line 147
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DOC"

    const-string v1, "application/msword"

    .line 148
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XLS"

    const-string v1, "application/vnd.ms-excel"

    .line 149
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PPT"

    const-string v1, "application/vnd.ms-powerpoint"

    .line 150
    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileExtensions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object p2, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sExtensionTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static convertToStreamableMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 274
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isStreamableMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 279
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->guessMimeTypeOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 285
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->guessMimeTypeOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_2
    :goto_0
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "audio/*"

    return-object p0

    :cond_3
    return-object p0
.end method

.method public static getFileExtensionForType(I)Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sExtensionTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;
    .locals 2

    const-string v0, "."

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 211
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    const-string v2, "video"

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p0, 0x15

    return p0

    :cond_1
    const-string v2, "audio"

    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 199
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileType(Ljava/lang/String;)Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 201
    sget-object p0, Lmobi/beyondpod/rsscore/helpers/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    const-string v0, "MP3"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    .line 203
    :cond_0
    iget-object p0, p0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static guessMimeTypeOfUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {p0, v0, v0}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStreamableMimeType(Ljava/lang/String;)Z
    .locals 2

    .line 265
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "audio"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mapMediaRssMediumToMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "image/jpeg"

    return-object p0

    :cond_0
    const-string v0, "audio"

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "audio/mpeg"

    return-object p0

    :cond_1
    const-string v0, "video"

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/mp4"

    return-object p0

    :cond_2
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method public static mapMimeToContentType(Ljava/lang/String;)I
    .locals 1

    .line 296
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "audio"

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/x-ogg"

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "image"

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
