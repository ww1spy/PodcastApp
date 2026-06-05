.class final Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;
.super Ljava/lang/Object;
.source "CoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "%s: %s (%s) - %s\r\n"

    const/4 v1, 0x4

    .line 459
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->toShortString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;->val$tag:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 460
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;->val$data:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 459
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 466
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 471
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to write to the log file. reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$1;->val$tag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
