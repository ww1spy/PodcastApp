.class public Lmobi/beyondpod/rsscore/helpers/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field _Build:I

.field _IsDebug:Z

.field _Major:I

.field _Minor:I

.field _Revision:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    .line 60
    iput p2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    .line 61
    iput p3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    .line 62
    iput p4, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "debug"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 36
    iput-boolean v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_IsDebug:Z

    const-string v0, "debug"

    const-string v2, ""

    .line 37
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "\\."

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 43
    array-length v0, p1

    if-le v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    const/4 v0, 0x0

    .line 45
    array-length v2, p1

    if-lez v2, :cond_1

    .line 46
    aget-object v2, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    .line 47
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_2

    .line 48
    aget-object v1, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    :cond_2
    const/4 v1, 0x2

    .line 49
    array-length v2, p1

    if-le v2, v1, :cond_3

    .line 50
    aget-object v1, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    :cond_3
    const/4 v1, 0x3

    .line 51
    array-length v2, p1

    if-le v2, v1, :cond_4

    .line 52
    aget-object p1, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    :cond_4
    return-void
.end method

.method public static compare(Lmobi/beyondpod/rsscore/helpers/Version;Lmobi/beyondpod/rsscore/helpers/Version;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    return v2

    .line 107
    :cond_2
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    if-le v3, v4, :cond_3

    return v1

    .line 109
    :cond_3
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    if-ge v3, v4, :cond_4

    return v2

    .line 111
    :cond_4
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    if-le v3, v4, :cond_5

    return v1

    .line 114
    :cond_5
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    if-ge v3, v4, :cond_6

    return v2

    .line 116
    :cond_6
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    if-le v3, v4, :cond_7

    return v1

    .line 118
    :cond_7
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    if-ge v3, v4, :cond_8

    return v2

    .line 120
    :cond_8
    iget v3, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    iget v4, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    if-le v3, v4, :cond_9

    return v1

    .line 122
    :cond_9
    iget p0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    iget p1, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    if-ge p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 84
    :cond_1
    instance-of v2, p1, Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v2, :cond_2

    return v1

    .line 86
    :cond_2
    check-cast p1, Lmobi/beyondpod/rsscore/helpers/Version;

    .line 87
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    iget v3, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    if-eq v2, v3, :cond_3

    return v1

    .line 89
    :cond_3
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    iget v3, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    if-eq v2, v3, :cond_4

    return v1

    .line 91
    :cond_4
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    iget v3, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    if-eq v2, v3, :cond_5

    return v1

    .line 93
    :cond_5
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    iget p1, p1, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 71
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 72
    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 73
    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isZero()Z
    .locals 1

    .line 137
    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    if-nez v0, :cond_0

    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    if-nez v0, :cond_0

    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    if-nez v0, :cond_0

    iget v0, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Build:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmobi/beyondpod/rsscore/helpers/Version;->_Revision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
