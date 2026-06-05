.class public Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;
.super Ljava/lang/Object;
.source "SectionedListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemLocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;
    }
.end annotation


# instance fields
.field public item:Ljava/lang/Object;

.field public sectionIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;
    .locals 3

    .line 209
    new-instance v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;-><init>()V

    .line 211
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;->mapFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public serialize(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Ljava/lang/String;
    .locals 4

    const-string v0, "%03d|%s"

    const/4 v1, 0x2

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;->mapToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Section: %s, item: %s"

    const/4 v1, 0x2

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
