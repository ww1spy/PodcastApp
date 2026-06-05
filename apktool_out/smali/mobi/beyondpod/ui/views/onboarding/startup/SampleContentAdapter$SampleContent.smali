.class public Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;
.super Ljava/lang/Object;
.source "SampleContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleContent"
.end annotation


# instance fields
.field public categoryColor:I

.field public categoryId:Ljava/lang/String;

.field public isChecked:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->isChecked:Z

    .line 182
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->categoryId:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->name:Ljava/lang/String;

    .line 184
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->categoryColor:I

    return-void
.end method
