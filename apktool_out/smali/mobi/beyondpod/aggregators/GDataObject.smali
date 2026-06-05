.class public Lmobi/beyondpod/aggregators/GDataObject;
.super Ljava/lang/Object;
.source "GDataObject.java"


# instance fields
.field public id:Ljava/lang/String;

.field public list:Lmobi/beyondpod/aggregators/GDataObjectList;

.field public string:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIDAsUrl()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/aggregators/GDataObject;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lmobi/beyondpod/aggregators/GDataObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
