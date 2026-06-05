.class public Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;
.super Ljava/lang/Object;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field protected _AccountName:Ljava/lang/String;

.field protected _AccountType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Email/password"

    .line 125
    iput-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 126
    iput v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountType:I

    .line 136
    iput-object p2, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountName:Ljava/lang/String;

    .line 137
    iput p1, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 142
    iget v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v1, "Use   "

    goto :goto_0

    :cond_0
    const-string v1, "Enter "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
