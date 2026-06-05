.class public Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;


# instance fields
.field private final mAttrId:I

.field private final mClassStyleAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomViewCreation:Z

.field private final mFontPath:Ljava/lang/String;

.field private final mIsFontSet:Z

.field private final mReflection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    .line 32
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/TextView;

    const v2, 0x1010084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    const v2, 0x1010048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/EditText;

    const v2, 0x101006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/AutoCompleteTextView;

    const v2, 0x101006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x101006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/RadioButton;

    const v2, 0x101007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    const-class v1, Landroid/widget/ToggleButton;

    const v2, 0x101004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$000(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    .line 92
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$100(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$200(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    .line 94
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$300(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mReflection:Z

    .line 95
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$400(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mCustomViewCreation:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->DEFAULT_STYLES:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 97
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->access$500(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    return-void
.end method

.method public static get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .locals 2

    .line 60
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    invoke-direct {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .line 62
    :cond_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    return-object v0
.end method

.method public static initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V
    .locals 0

    .line 52
    sput-object p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->sInstance:Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    return-void
.end method


# virtual methods
.method public getAttrId()I
    .locals 1

    .line 131
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mAttrId:I

    return v0
.end method

.method getClassStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mClassStyleAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mFontPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomViewCreation()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mCustomViewCreation:Z

    return v0
.end method

.method isFontSet()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mIsFontSet:Z

    return v0
.end method

.method public isReflection()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->mReflection:Z

    return v0
.end method
