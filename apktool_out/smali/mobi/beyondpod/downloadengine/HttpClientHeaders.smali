.class public Lmobi/beyondpod/downloadengine/HttpClientHeaders;
.super Ljava/lang/Object;
.source "HttpClientHeaders.java"


# static fields
.field public static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "HttpClientBase"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentDisposition(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 112
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentEncodingFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Encoding"

    .line 96
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentLengthFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/Long;
    .locals 4

    const-string v0, "Content-Length"

    .line 91
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLastModifiedFrom(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;
    .locals 1

    const-string v0, "Last-Modified"

    .line 100
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseCookie(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/lang/String;
    .locals 1

    const-string v0, "Set-Cookie"

    .line 104
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseDate(Lmobi/beyondpod/downloadengine/IHttpClient;)Ljava/util/Date;
    .locals 1

    const-string v0, "Date"

    .line 108
    invoke-interface {p0, v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseRFC822Time(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    :try_start_0
    sget-object v0, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setAcceptEncodingTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Accept-Encoding"

    .line 28
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAcceptTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Accept"

    .line 53
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAuthenticationHeaderTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p1, p2}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    .line 76
    invoke-interface {p0, p2, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAuthorizationTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Authorization"

    .line 87
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBeyondpodClientVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "beyondpod-client-version"

    .line 33
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBeyondpodSoftwareVersionTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "beyondpod-software-version"

    .line 38
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBeyondpodTokenTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "beyondpod-token"

    .line 48
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setContentTypeTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-type"

    .line 43
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setIfModifiedSinceTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/util/Date;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "If-Modified-Since"

    .line 82
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toRFC822UTCString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRangeTo(Lmobi/beyondpod/downloadengine/IHttpClient;ILjava/lang/Long;)V
    .locals 5

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v1, 0x1

    sub-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "Range"

    .line 18
    invoke-interface {p0, p2, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRequestCookie(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cookie"

    .line 23
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUserAgentTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "User-Agent"

    .line 58
    invoke-interface {p0, v0, p1}, Lmobi/beyondpod/downloadengine/IHttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUserInfoTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 67
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lmobi/beyondpod/downloadengine/HttpClientHeaders;->setAuthenticationHeaderTo(Lmobi/beyondpod/downloadengine/IHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
