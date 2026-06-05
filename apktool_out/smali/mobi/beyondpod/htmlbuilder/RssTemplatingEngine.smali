.class public Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;
.super Ljava/lang/Object;
.source "RssTemplatingEngine.java"


# static fields
.field private static final DOWNLOAD_ENCODE_KEY:Ljava/lang/String; = ""

.field private static final STREAM_ENCODE_KEY:Ljava/lang/String; = ""

.field public static lastTransformationDuration:J

.field private static final m_ErrorTmpl:Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

.field private static final m_InfoTmpl:Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

    sget v1, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_RSS:I

    invoke-direct {v0, v1}, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;-><init>(I)V

    sput-object v0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_ErrorTmpl:Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

    .line 37
    new-instance v0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;

    sget v1, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_RSS:I

    invoke-direct {v0, v1}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;-><init>(I)V

    sput-object v0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_InfoTmpl:Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDownloadEnclosureUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    .line 81
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStreamEnclosureUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeDownloadEnclosureUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeStreamEnclosureUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDownloadEncodedEnclosureUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isStreamEncodedEnclosureUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reloadAllTemplates()V
    .locals 0

    .line 101
    invoke-static {}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->refreshTemplate()V

    return-void
.end method

.method public static transformFeedLoadError(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 43
    sget-object v0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_ErrorTmpl:Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->setFeedName(Ljava/lang/String;)V

    .line 44
    sget-object p0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_ErrorTmpl:Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->setMessage(Ljava/lang/String;)V

    .line 47
    :try_start_0
    sget-object p0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_ErrorTmpl:Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;

    invoke-virtual {p0, p2}, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->saveAsHtml(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 51
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance p2, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {p1, p2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return v0
.end method

.method public static transformNoCachedFeedInfo(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 58
    sget-object v0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_InfoTmpl:Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->setFeedName(Ljava/lang/String;)V

    .line 61
    :try_start_0
    sget-object p0, Lmobi/beyondpod/htmlbuilder/RssTemplatingEngine;->m_InfoTmpl:Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->saveAsHtml(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEventAsync(Ljava/util/EventObject;)V

    return v1
.end method
