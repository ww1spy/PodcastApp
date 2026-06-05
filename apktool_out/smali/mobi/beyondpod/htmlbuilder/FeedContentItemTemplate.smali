.class public Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;
.super Lmobi/beyondpod/htmlbuilder/TemplateBase;
.source "FeedContentItemTemplate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeedContentItemTemplate"

.field private static m_Template:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemContent:Ljava/lang/String;

.field public itemLink:Ljava/lang/String;

.field public itemPubDate:Ljava/lang/String;

.field public itemTitle:Ljava/lang/CharSequence;

.field public originatingFeed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmobi/beyondpod/htmlbuilder/TemplateBase;-><init>()V

    return-void
.end method

.method public static refreshTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    sput-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public saveAsHtml(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->TAG:Ljava/lang/String;

    const-string v1, "Generating feed HTML..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->template()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;

    .line 84
    invoke-virtual {p0, v2, p1}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->writeTemplateFor(Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;Ljava/io/Writer;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 88
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 101
    :cond_1
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->TAG:Ljava/lang/String;

    const-string v1, "DONE Generating feed HTML!"

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 94
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading feed Content! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 101
    :cond_2
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->TAG:Ljava/lang/String;

    const-string v1, "DONE Generating feed HTML!"

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public switchTemplateResourceTo(I)V
    .locals 1

    .line 62
    iget v0, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->_TemplateResourceId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 65
    :cond_0
    iput p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->_TemplateResourceId:I

    .line 67
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 68
    sget-object p1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 70
    sput-object p1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

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
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    if-nez v0, :cond_1

    .line 52
    iget v0, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->_TemplateResourceId:I

    if-nez v0, :cond_0

    .line 53
    sget v0, Lmobi/beyondpod/R$raw;->rss_feed_content_item:I

    iput v0, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->_TemplateResourceId:I

    .line 55
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->loadTemplate()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    .line 57
    :cond_1
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->m_Template:Ljava/util/List;

    return-object v0
.end method

.method public toHtml()Ljava/lang/String;
    .locals 3

    .line 188
    sget-object v0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->TAG:Ljava/lang/String;

    const-string v1, "Generating Post HTML..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->template()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;

    .line 193
    invoke-virtual {p0, v2, v0}, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->writeTemplateFor(Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 196
    :cond_1
    sget-object v1, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->TAG:Ljava/lang/String;

    const-string v2, "DONE Generating Post HTML!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeContentFor(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "#DOCUMENT_THEME#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "#ITEM_ORIG_FEED#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "#ITEM_LINK#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "#V_MARGIN#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "#ITEM_TITLE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "#H_MARGIN#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "#FEEDITEM_DESCRIPTION#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "#ITEM_PUB_DATE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "#DOCUMENT_FONT_SIZE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 138
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmobi/beyondpod/R$integer;->FeedContentItemTemplate_V_Margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 135
    :pswitch_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmobi/beyondpod/R$integer;->FeedContentItemTemplate_V_Margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemLink:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->originatingFeed:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemPubDate:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :pswitch_5
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :pswitch_6
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :pswitch_7
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentTheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :pswitch_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultDocFontSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "medium"

    .line 111
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultDocFontSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77af730d -> :sswitch_8
        -0x6c5c38f6 -> :sswitch_7
        -0x4f3978ae -> :sswitch_6
        0x2a9127b -> :sswitch_5
        0x14b93794 -> :sswitch_4
        0x1e672489 -> :sswitch_3
        0x3a08c3a0 -> :sswitch_2
        0x3fa388f0 -> :sswitch_1
        0x7b2164bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected writeContentFor(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "#DOCUMENT_THEME#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "#ITEM_ORIG_FEED#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "#ITEM_LINK#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "#V_MARGIN#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "#ITEM_TITLE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "#H_MARGIN#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "#FEEDITEM_DESCRIPTION#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "#ITEM_PUB_DATE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "#DOCUMENT_FONT_SIZE#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 176
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmobi/beyondpod/R$integer;->FeedContentItemTemplate_V_Margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    :pswitch_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmobi/beyondpod/R$integer;->FeedContentItemTemplate_V_Margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 170
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemLink:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 167
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->originatingFeed:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 164
    :pswitch_4
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemPubDate:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 161
    :pswitch_5
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    :pswitch_6
    iget-object p1, p0, Lmobi/beyondpod/htmlbuilder/FeedContentItemTemplate;->itemContent:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 155
    :pswitch_7
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentTheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 148
    :pswitch_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultDocFontSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "medium"

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getDefaultDocFontSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77af730d -> :sswitch_8
        -0x6c5c38f6 -> :sswitch_7
        -0x4f3978ae -> :sswitch_6
        0x2a9127b -> :sswitch_5
        0x14b93794 -> :sswitch_4
        0x1e672489 -> :sswitch_3
        0x3a08c3a0 -> :sswitch_2
        0x3fa388f0 -> :sswitch_1
        0x7b2164bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
