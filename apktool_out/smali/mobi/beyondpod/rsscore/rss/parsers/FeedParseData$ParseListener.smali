.class public interface abstract Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;
.super Ljava/lang/Object;
.source "FeedParseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseListener"
.end annotation


# virtual methods
.method public abstract onItemParsed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
.end method

.method public abstract onParseCompleted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
.end method

.method public abstract onParseStarted(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)V
.end method
