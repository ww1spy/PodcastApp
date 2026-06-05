.class Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;
.super Ljava/lang/Object;
.source "FontBackgroundSettingsPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 40
    check-cast p1, Landroid/widget/Button;

    .line 41
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$000(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {p1, v2}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$102(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;I)I

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$000(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {p1, v2}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$102(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;I)I

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$000(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$102(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;I)I

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$200(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$200(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$300(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$1;->this$0:Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;

    invoke-static {v2}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;->access$100(Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p1, v0, v1}, Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;->onFontSizeBackgroundColorChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
