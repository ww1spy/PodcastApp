.class public Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;
.super Ljava/lang/Exception;
.source "AuthenticationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput p1, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 13
    iget v0, p0, Lmobi/beyondpod/sync/trackers/bp/AuthenticationException;->statusCode:I

    return v0
.end method
