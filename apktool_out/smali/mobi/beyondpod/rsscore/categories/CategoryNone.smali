.class public Lmobi/beyondpod/rsscore/categories/CategoryNone;
.super Lmobi/beyondpod/rsscore/categories/FeedCategory;
.source "CategoryNone.java"


# static fields
.field private static final UNCATEGORIZED_NAME:Ljava/lang/String;

.field private static final UNCATEGORIZED_VALUE:Ljava/lang/String; = "Uncategorized"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget v0, Lmobi/beyondpod/R$string;->category_uncategorized:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/categories/CategoryNone;->UNCATEGORIZED_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryNone;->UNCATEGORIZED_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;-><init>(Ljava/lang/String;)V

    const-string v0, "Uncategorized"

    .line 33
    iput-object v0, p0, Lmobi/beyondpod/rsscore/categories/CategoryNone;->_Value:Ljava/lang/String;

    return-void
.end method
