.class public Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;
.super Lmobi/beyondpod/rsscore/categories/FeedCategory;
.source "AllFeedsCategory.java"


# static fields
.field private static final ALL_FEEDS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lmobi/beyondpod/R$string;->category_all_feeds:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;->ALL_FEEDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;->ALL_FEEDS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/AllFeedsCategory;->_Value:Ljava/lang/String;

    return-void
.end method
