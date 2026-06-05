.class public Lmobi/beyondpod/rsscore/helpers/DetectEncoding;
.super Ljava/lang/Object;
.source "DetectEncoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetectEncoding"

.field private static encoding_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bomLength:I

.field private defaultEncoding:Ljava/lang/String;

.field private error:Z

.field private isJson:Z

.field final magics:[Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->getEncodingMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->encoding_map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xf

    .line 85
    new-array v1, v1, [Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    new-instance v9, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v3, "utf-32be"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, -0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v11, "utf-32le"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "USC-4odd"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v7, "USC-4odder"

    const/4 v8, 0x1

    const/4 v9, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v5, "utf-16be"

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v5, v4, v7, v6}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBB)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v5, "utf-16le"

    invoke-direct {v3, v5, v4, v6, v7}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBB)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "utf-8"

    const/4 v7, 0x1

    const/16 v8, -0x11

    const/16 v9, -0x45

    const/16 v10, -0x41

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBB)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "utf-32be"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "utf-32le"

    const/16 v8, 0x3c

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "USC-4 ASCII 2143"

    const/4 v8, 0x0

    const/16 v10, 0x3c

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "USC-4 ASCII 3412"

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "utf-16be"

    const/16 v11, 0x3f

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "utf-16le"

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "UTF-8"

    const/16 v9, 0x3f

    const/16 v10, 0x78

    const/16 v11, 0x6d

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-instance v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const-string v6, "EBCDIC"

    const/16 v8, 0x4c

    const/16 v9, 0x6f

    const/16 v10, -0x59

    const/16 v11, -0x6c

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;-><init>(Ljava/lang/String;ZBBBB)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    iput-object v1, v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->magics:[Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    .line 152
    iput-boolean v2, v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->error:Z

    .line 154
    iput v2, v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->bomLength:I

    .line 155
    iput-boolean v2, v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->isJson:Z

    move-object/from16 v1, p1

    .line 159
    iput-object v1, v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->defaultEncoding:Ljava/lang/String;

    return-void
.end method

.method private asciiToEbcdic([B)[B
    .locals 4

    const/16 v0, 0x100

    .line 497
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 510
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 512
    aget-byte v3, p1, v2

    if-lez v3, :cond_0

    aget-byte v3, p1, v2

    goto :goto_1

    :cond_0
    aget-byte v3, p1, v2

    add-int/2addr v3, v0

    :goto_1
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9c
        0x9
        0x86
        0x7f
        0x97
        0x8d
        0x8e
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x9d
        0x85
        0x8
        0x87
        0x18
        0x19
        0x92
        0x8f
        0x1c
        0x1d
        0x1e
        0x1f
        0x80
        0x81
        0x82
        0x83
        0x84
        0xa
        0x17
        0x1b
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x5
        0x6
        0x7
        0x90
        0x91
        0x16
        0x93
        0x94
        0x95
        0x96
        0x4
        0x98
        0x99
        0x9a
        0x9b
        0x14
        0x15
        0x9e
        0x1a
        0x20
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0x5b
        0x2e
        0x3c
        0x28
        0x2b
        0x21
        0x26
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xae
        0xaf
        0xb0
        0xb1
        0x5d
        0x24
        0x2a
        0x29
        0x3b
        0x5e
        0x2d
        0x2f
        0xb2
        0xb3
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0x7c
        0x2c
        0x25
        0x5f
        0x3e
        0x3f
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0x60
        0x3a
        0x23
        0x40
        0x27
        0x3d
        0x22
        0xc3
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xcb
        0xcc
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0x7e
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe6
        0xe7
        0x7b
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0x7d
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0xee
        0xef
        0xf0
        0xf1
        0xf2
        0xf3
        0x5c
        0x9f
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0xf4
        0xf5
        0xf6
        0xf7
        0xf8
        0xf9
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
    .end array-data
.end method

.method private checkArray([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 484
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 486
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private checkIfJson([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 411
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x14

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 412
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{"

    .line 418
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    return v0
.end method

.method private detect([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 346
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detectUsingXML([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detectUsingMagic([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EBCDIC"

    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detectEBCDIC([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 359
    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->alias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 363
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->defaultEncoding:Ljava/lang/String;

    .line 368
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Using default"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->defaultEncoding:Ljava/lang/String;

    .line 374
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->error:Z

    .line 377
    :goto_1
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected feed encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private detectEBCDIC([B)Ljava/lang/String;
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->asciiToEbcdic([B)[B

    move-result-object p1

    .line 384
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detectUsingXML([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private detectUsingMagic([B)Ljava/lang/String;
    .locals 5

    .line 465
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->magics:[Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 467
    iget-object v4, v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    invoke-direct {p0, p1, v4}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->checkArray([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    iget-object p1, v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->name:Ljava/lang/String;

    .line 470
    iget-boolean v0, v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->hasBOM:Z

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, v3, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    array-length v0, v0

    iput v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->bomLength:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private detectUsingXML([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 434
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x64

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 436
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".*encoding=\"([^\"]*)\".*"

    .line 438
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 439
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 440
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    const-string v1, ".*encoding=\'([^\']*)\'.*"

    .line 446
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 447
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getEncodingMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "windows_1250"

    const-string v2, "windows-1250"

    .line 203
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1251"

    const-string v2, "windows-1251"

    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1252"

    const-string v2, "windows-1252"

    .line 205
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1253"

    const-string v2, "windows-1253"

    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1254"

    const-string v2, "windows-1254"

    .line 207
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1255"

    const-string v2, "windows-1255"

    .line 208
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1256"

    const-string v2, "windows-1256"

    .line 209
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1257"

    const-string v2, "windows-1257"

    .line 210
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "windows_1258"

    const-string v2, "windows-1258"

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-ee"

    const-string v2, "windows-1250"

    .line 212
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-cyrl"

    const-string v2, "windows-1251"

    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-ansi"

    const-string v2, "windows-1252"

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-greek"

    const-string v2, "windows-1253"

    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-turk"

    const-string v2, "windows-1254"

    .line 216
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-hebr"

    const-string v2, "windows-1255"

    .line 217
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ms-arab"

    const-string v2, "windows-1256"

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "winbaltrim"

    const-string v2, "windows-1257"

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maclatin2"

    const-string v2, "x-MacRoman"

    .line 220
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "macintosh"

    const-string v2, "x-MacRoman"

    .line 221
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "csmacintosh"

    const-string v2, "x-MacRoman"

    .line 222
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    const-string v2, "x-MacRoman"

    .line 223
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac-cyrillic"

    const-string v2, "x-MacCyrillic"

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "us-ascii"

    const-string v2, "US-ASCII"

    .line 225
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cspc775baltic"

    const-string v2, "IBM775"

    .line 227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iso-10646-ucs-2"

    const-string v2, "utf-16be"

    .line 228
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_be"

    const-string v2, "CP500"

    .line 230
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_us"

    const-string v2, "IBM037"

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_ca"

    const-string v2, "IBM037"

    .line 232
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_nl"

    const-string v2, "IBM037"

    .line 233
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_wt"

    const-string v2, "IBM037"

    .line 234
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_dk"

    const-string v2, "CP277"

    .line 235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_no"

    const-string v2, "CP277"

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_fi"

    const-string v2, "CP278"

    .line 237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_se"

    const-string v2, "CP278"

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_it"

    const-string v2, "CP280"

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_es"

    const-string v2, "CP284"

    .line 240
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_gb"

    const-string v2, "CP285"

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_fr"

    const-string v2, "CP297"

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic_cp_ch"

    const-string v2, "CP500"

    .line 243
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-be"

    const-string v2, "CP500"

    .line 245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-us"

    const-string v2, "IBM037"

    .line 246
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-ca"

    const-string v2, "IBM037"

    .line 247
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-nl"

    const-string v2, "IBM037"

    .line 248
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-wt"

    const-string v2, "IBM037"

    .line 249
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-dk"

    const-string v2, "CP277"

    .line 250
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-no"

    const-string v2, "CP277"

    .line 251
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-fi"

    const-string v2, "CP278"

    .line 252
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-se"

    const-string v2, "CP278"

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-it"

    const-string v2, "CP280"

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-es"

    const-string v2, "CP284"

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-gb"

    const-string v2, "CP285"

    .line 256
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-fr"

    const-string v2, "CP297"

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-ch"

    const-string v2, "CP500"

    .line 258
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ibm039"

    const-string v2, "IBM037"

    .line 259
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ibm1140"

    const-string v2, "IBM037"

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dbcs"

    const-string v2, "CP1252"

    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cp1125"

    const-string v2, "CP866"

    .line 265
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cp_is"

    const-string v2, "cp861"

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM277"

    const-string v2, "CP277"

    .line 268
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP277"

    const-string v2, "CP277"

    .line 269
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM277"

    const-string v2, "CP277"

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM278"

    const-string v2, "CP278"

    .line 272
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP278"

    const-string v2, "CP278"

    .line 273
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM278"

    const-string v2, "CP278"

    .line 274
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM280"

    const-string v2, "CP280"

    .line 276
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP280"

    const-string v2, "CP280"

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM280"

    const-string v2, "CP280"

    .line 278
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM284"

    const-string v2, "CP284"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP284"

    const-string v2, "CP284"

    .line 281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM284"

    const-string v2, "CP284"

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM285"

    const-string v2, "CP285"

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP285"

    const-string v2, "CP285"

    .line 285
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM285"

    const-string v2, "CP285"

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM297"

    const-string v2, "CP297"

    .line 288
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP297"

    const-string v2, "CP297"

    .line 289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM297"

    const-string v2, "CP297"

    .line 290
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM420"

    const-string v2, "CP420"

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP420"

    const-string v2, "CP420"

    .line 293
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM420"

    const-string v2, "CP420"

    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-ar1"

    const-string v2, "CP420"

    .line 295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-he"

    const-string v2, "CP424"

    .line 296
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM424"

    const-string v2, "CP424"

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP424"

    const-string v2, "CP424"

    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM424"

    const-string v2, "CP424"

    .line 300
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM500"

    const-string v2, "CP500"

    .line 302
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP500"

    const-string v2, "CP500"

    .line 303
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM500"

    const-string v2, "CP500"

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "csibm855"

    const-string v2, "CP855"

    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM868"

    const-string v2, "CP868"

    .line 308
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP868"

    const-string v2, "CP868"

    .line 309
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM868"

    const-string v2, "CP868"

    .line 310
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP-AR"

    const-string v2, "CP868"

    .line 311
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM869"

    const-string v2, "CP869"

    .line 312
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP869"

    const-string v2, "CP869"

    .line 313
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM869"

    const-string v2, "CP869"

    .line 314
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP-GR"

    const-string v2, "CP869"

    .line 315
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM870"

    const-string v2, "CP870"

    .line 316
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP870"

    const-string v2, "CP870"

    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM870"

    const-string v2, "CP870"

    .line 318
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM871"

    const-string v2, "CP871"

    .line 320
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP871"

    const-string v2, "CP871"

    .line 321
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM871"

    const-string v2, "CP871"

    .line 322
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-is"

    const-string v2, "CP871"

    .line 323
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IBM918"

    const-string v2, "CP918"

    .line 324
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CP918"

    const-string v2, "CP918"

    .line 325
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSIBM918"

    const-string v2, "CP918"

    .line 326
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ebcdic-cp-ar2"

    const-string v2, "CP918"

    .line 327
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EUC-JP"

    const-string v2, "EUCJIS"

    .line 328
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSEUCPkdFmtJapanese"

    const-string v2, "EUCJIS"

    .line 329
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EUC-KR"

    const-string v2, "KSC5601"

    .line 330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    .line 331
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSGB2312"

    const-string v2, "GB2312"

    .line 332
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISO-2022-JP"

    const-string v2, "JIS"

    .line 333
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSISO2022JP"

    const-string v2, "JIS"

    .line 334
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    .line 335
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSISO2022KR"

    const-string v2, "ISO2022KR"

    .line 336
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    .line 337
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public alias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 394
    :try_start_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->encoding_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->encoding_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    .line 401
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->defaultEncoding:Ljava/lang/String;

    return-object p1
.end method

.method public detect(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x64

    .line 163
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 168
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 171
    :try_start_1
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 172
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, p1

    goto :goto_1

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 183
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 177
    :goto_1
    :try_start_3
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->TAG:Ljava/lang/String;

    const-string v3, "Unable to check XML feed encoding"

    invoke-static {p1, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 183
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :catch_2
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->checkIfJson([B)Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->isJson:Z

    .line 192
    invoke-direct {p0, v1}, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->detect([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    if-eqz v2, :cond_2

    .line 183
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :catch_3
    :cond_2
    throw v0
.end method

.method public isError()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->error:Z

    return v0
.end method

.method public isJson()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->isJson:Z

    return v0
.end method

.method public stripBOM(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 519
    :goto_0
    iget v1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding;->bomLength:I

    if-ge v0, v1, :cond_0

    .line 521
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
