.class public Lmobi/beyondpod/ui/dialogs/WidgetPreferences;
.super Landroid/app/Activity;
.source "WidgetPreferences.java"


# instance fields
.field _AppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->setResult(I)V

    const v0, 0x7f0c00d5

    .line 49
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->_AppWidgetId:I

    .line 56
    :cond_0
    iget p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->_AppWidgetId:I

    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->finish()V

    :cond_1
    const p1, 0x7f0902b2

    .line 59
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    const v2, 0x1020014

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    new-instance v0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;-><init>(Lmobi/beyondpod/ui/dialogs/WidgetPreferences;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
