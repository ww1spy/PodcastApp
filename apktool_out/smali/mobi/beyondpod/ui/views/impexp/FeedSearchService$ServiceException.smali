.class public Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;
.super Ljava/lang/Exception;
.source "FeedSearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/FeedSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 60
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 65
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchService$ServiceException;->statusCode:I

    return-void
.end method
