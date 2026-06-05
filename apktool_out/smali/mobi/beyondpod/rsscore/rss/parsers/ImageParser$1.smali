.class final Lmobi/beyondpod/rsscore/rss/parsers/ImageParser$1;
.super Ljava/lang/Object;
.source "ImageParser.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->parseImagesFromStringWithParser(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$images:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser$1;->val$images:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 41
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser$1;->val$images:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/rss/parsers/ImageParser;->checkAndAddImageUrl(Ljava/util/ArrayList;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
