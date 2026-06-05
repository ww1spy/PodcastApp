.class Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;
.super Ljava/lang/Object;
.source "TemplateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/htmlbuilder/TemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyValuePair"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->key:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lmobi/beyondpod/htmlbuilder/TemplateBase$KeyValuePair;->value:Ljava/lang/String;

    return-void
.end method
