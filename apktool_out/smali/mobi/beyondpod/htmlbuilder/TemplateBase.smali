.class public abstract Lmobi/beyondpod/htmlbuilder/TemplateBase;
.super Ljava/lang/Object;
.source "TemplateBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TemplateBase"

.field public static TemplateTypes_RSS:I = 0x1


# instance fields
.field public TemplateTypes_TTS:I

.field protected _Parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _TemplateResourceId:I

.field protected _TemplateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_TTS:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    .line 56
    sget v0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_RSS:I

    iput v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateType:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_TTS:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    .line 56
    sget v0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TemplateTypes_RSS:I

    iput v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateType:I

    .line 60
    iput p1, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateType:I

    return-void
.end method

.method private static parseTemplate(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\x23[A-Z_]*\\x23"

    const/16 v2, 0xa

    .line 106
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;

    invoke-direct {v4, v2, v3}, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 117
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected applyParameters(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->template()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "template file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->template()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;

    .line 136
    iget-object v2, v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    iget-object v2, v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v2, v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    iget-object v3, v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    iget-object v1, v1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected loadTemplate()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 91
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateResourceId:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResToString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->parseTemplate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lmobi/beyondpod/htmlbuilder/TemplateBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "template "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public templateType()I
    .locals 1

    .line 70
    iget v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_TemplateType:I

    return v0
.end method

.method public toHtml(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->applyParameters(Ljava/io/Writer;)V

    return-void
.end method

.method protected writeContentFor(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected writeContentFor(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 160
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase;->_Parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method protected writeTemplateFor(Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object p1, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->writeContentFor(Ljava/lang/String;Ljava/io/Writer;)V

    :cond_1
    return-void
.end method

.method protected writeTemplateFor(Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 151
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object p1, p1, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/htmlbuilder/TemplateBase;->writeContentFor(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1
    return-void
.end method
