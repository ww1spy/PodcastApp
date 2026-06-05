.class Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;
.super Ljava/lang/Object;
.source "CategoryPropertiesActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 129
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 132
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/dialogs/CategoryPropertiesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method
