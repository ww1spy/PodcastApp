.class Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;
.super Ljava/lang/Object;
.source "WidgetPreferences.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/WidgetPreferences;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/WidgetPreferences;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    .line 80
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setWidgetBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 76
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setWidgetBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 72
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setWidgetBackgroundColor(I)V

    .line 84
    :goto_0
    invoke-static {}, Lmobi/beyondpod/evo/BeyondPodApplicationEvo;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->refreshWidgets()V

    .line 86
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "appWidgetId"

    .line 87
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetPreferences;

    iget p3, p3, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->_AppWidgetId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetPreferences;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetPreferences$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetPreferences;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/WidgetPreferences;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
