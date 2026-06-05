.class public Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;
.super Lmobi/beyondpod/htmlbuilder/TemplateBase;
.source "InfoMessageTemplate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoMessageTemplate"

.field private static _Template:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lmobi/beyondpod/htmlbuilder/TemplateBase;-><init>(I)V

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v0, "#SYS_COLOR_A#"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getContentViewColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v0, "#IMAGE_FOLDER#"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssTemplatesImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static refreshTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    sput-object v0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Template:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFeedName()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v1, "#FEED_NAME#"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public saveAsHtml(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {p0, v2}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->toHtml(Ljava/io/Writer;)V

    .line 81
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 88
    :goto_0
    :try_start_2
    sget-object v2, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "! reason: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_2
    throw p1
.end method

.method public setFeedName(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v1, "#FEED_NAME#"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public template()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Template:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    sget v0, Lmobi/beyondpod/R$raw;->info_message:I

    iput v0, p0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_TemplateResourceId:I

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->loadTemplate()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Template:Ljava/util/List;

    .line 55
    :cond_0
    sget-object v0, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;->_Template:Ljava/util/List;

    return-object v0
.end method
