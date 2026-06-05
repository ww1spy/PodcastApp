.class Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->onViewCreatedInternal(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Luk/co/chrisjenx/calligraphy/CalligraphyFactory;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .line 182
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->this$0:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 186
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->this$0:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    return-void
.end method
