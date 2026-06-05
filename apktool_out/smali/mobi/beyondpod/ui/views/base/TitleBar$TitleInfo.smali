.class public Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
.super Ljava/lang/Object;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleInfo"
.end annotation


# static fields
.field public static final SELECTOR_TYPE_ALL_PUBLISHED:I = 0x1

.field public static final SELECTOR_TYPE_DISABLED:I = -0x1

.field public static final SELECTOR_TYPE_MY_EPISODES:I


# instance fields
.field public primaryTitle:Ljava/lang/String;

.field public selectorType:I

.field public subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    return-void
.end method
