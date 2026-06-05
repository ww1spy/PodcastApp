.class Lmobi/beyondpod/ui/core/GenericImageCache$1;
.super Ljava/util/LinkedHashMap;
.source "GenericImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/GenericImageCache;-><init>(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TT;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/GenericImageCache;

.field final synthetic val$hardCapacity:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/GenericImageCache;IFZI)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmobi/beyondpod/ui/core/GenericImageCache$1;->this$0:Lmobi/beyondpod/ui/core/GenericImageCache;

    iput p5, p0, Lmobi/beyondpod/ui/core/GenericImageCache$1;->val$hardCapacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/GenericImageCache$1;->size()I

    move-result v0

    iget v1, p0, Lmobi/beyondpod/ui/core/GenericImageCache$1;->val$hardCapacity:I

    if-le v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/ui/core/GenericImageCache$1;->this$0:Lmobi/beyondpod/ui/core/GenericImageCache;

    invoke-static {v0}, Lmobi/beyondpod/ui/core/GenericImageCache;->access$000(Lmobi/beyondpod/ui/core/GenericImageCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
