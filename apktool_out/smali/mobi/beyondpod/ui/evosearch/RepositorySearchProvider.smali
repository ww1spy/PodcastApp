.class public Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;
.super Landroid/content/ContentProvider;
.source "RepositorySearchProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String; = "mobi.beyondpod.ui.evosearch.RepositorySearchProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final GET_ITEM:I = 0x1

.field public static PATH:Ljava/lang/String; = "/repository"

.field private static final REFRESH_SHORTCUT:I = 0x3

.field public static final RESULTS_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/mobi.beyondpod.ui.evosearch"

.field public static final RESULT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/mobi.beyondpod.ui.evosearch"

.field private static final SEARCH_REPO:I = 0x0

.field private static final SEARCH_SUGGEST:I = 0x2

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field TAG:Ljava/lang/String;

.field private mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 53
    invoke-static {}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "RepositorySearchProvider"

    .line 34
    iput-object v0, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .line 61
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 63
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "repository"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "repository/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v1, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_icon_1"

    const-string v4, "suggest_intent_data_id"

    .line 128
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;->getFeedTrackMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getWord(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 3

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "suggest_text_1"

    const-string v1, "suggest_text_2"

    const-string v2, "suggest_icon_1"

    .line 151
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;->getWord(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private refreshShortcut(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_icon_1"

    const-string v4, "suggest_shortcut_id"

    const-string v5, "suggest_intent_data_id"

    .line 169
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;->getWord(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_icon_1"

    .line 142
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;->getFeedTrackMatches(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 183
    sget-object v0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "vnd.android.cursor.item/vnd.android.search.suggest"

    return-object p1

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1

    :pswitch_2
    const-string p1, "vnd.android.cursor.item/mobi.beyondpod.ui.evosearch"

    return-object p1

    :pswitch_3
    const-string p1, "vnd.android.cursor.dir/mobi.beyondpod.ui.evosearch"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 2

    .line 85
    new-instance v0, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->mDictionary:Lmobi/beyondpod/ui/evosearch/RepositorySearchDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 102
    sget-object p2, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    .line 121
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 119
    :pswitch_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->refreshShortcut(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_1
    if-nez p4, :cond_0

    .line 107
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectionArgs must be provided for the Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 109
    :cond_0
    aget-object p1, p4, p3

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_2
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->getWord(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_3
    if-nez p4, :cond_1

    .line 113
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectionArgs must be provided for the Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 115
    :cond_1
    aget-object p1, p4, p3

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->search(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 215
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
