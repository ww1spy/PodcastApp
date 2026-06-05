.class Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;
.super Ljava/lang/Object;
.source "CategoryPropertiesActivity.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->loadColors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->setColor(I)V

    .line 154
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->access$000(Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;)V

    return-void
.end method
