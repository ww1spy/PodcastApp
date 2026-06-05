.class Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;
.super Ljava/lang/Object;
.source "WidgetActionPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

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

    .line 108
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->checkAndNotifyIfInDownloadRestrictedMode()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "#$DEF$#"

    .line 109
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateSmartPlayList(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$100(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$000(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)V

    .line 113
    :cond_0
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$1;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
