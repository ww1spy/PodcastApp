.class public Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;
.super Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;
.source "ErrorMessageTemplate.java"


# static fields
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
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lmobi/beyondpod/htmlbuilder/InfoMessageTemplate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v1, "#MESSAGE#"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_Parameters:Ljava/util/HashMap;

    const-string v1, "#MESSAGE#"

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

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

    .line 38
    sget-object v0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_Template:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    sget v0, Lmobi/beyondpod/R$raw;->error_message:I

    iput v0, p0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_TemplateResourceId:I

    .line 41
    invoke-virtual {p0}, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->loadTemplate()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_Template:Ljava/util/List;

    .line 43
    :cond_0
    sget-object v0, Lmobi/beyondpod/htmlbuilder/ErrorMessageTemplate;->_Template:Ljava/util/List;

    return-object v0
.end method
