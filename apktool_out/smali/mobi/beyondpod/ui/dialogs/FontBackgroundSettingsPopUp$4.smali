.class Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;
.super Ljava/lang/Object;
.source "FontBackgroundSettingsPopUp.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;Landroid/content/Context;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .line 107
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method
