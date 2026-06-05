.class public interface abstract Lmobi/beyondpod/downloadengine/EnclosureDownloader$EnclosureDownloadListener;
.super Ljava/lang/Object;
.source "EnclosureDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnclosureDownloadListener"
.end annotation


# virtual methods
.method public abstract onEnclosureDownloadCompleted(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadError(Lmobi/beyondpod/rsscore/Track;Ljava/lang/Exception;)V
.end method

.method public abstract onEnclosureDownloadProgress(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadStarted(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract onEnclosureDownloadTerminated(Lmobi/beyondpod/rsscore/Track;)V
.end method
