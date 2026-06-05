.class public Lmobi/beyondpod/rsscore/categories/HomeCategory;
.super Lmobi/beyondpod/rsscore/categories/FeedCategory;
.source "HomeCategory.java"


# static fields
.field private static final HOME:Ljava/lang/String;

.field private static final HOME_VALUE:Ljava/lang/String; = "#Home#"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lmobi/beyondpod/R$string;->category_home_page:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/categories/HomeCategory;->HOME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lmobi/beyondpod/rsscore/categories/HomeCategory;->HOME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    const-string v0, "#Home#"

    .line 34
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/HomeCategory;->_Value:Ljava/lang/String;

    return-void
.end method
