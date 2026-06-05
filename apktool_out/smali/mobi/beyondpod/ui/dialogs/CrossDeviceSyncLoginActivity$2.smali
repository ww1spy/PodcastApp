.class Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;
.super Ljava/lang/Object;
.source "CrossDeviceSyncLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 214
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 216
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$400(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$500(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 218
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$600(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 221
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$400(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$302(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$500(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$702(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    .line 225
    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 234
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2

    goto/16 :goto_1

    .line 243
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$800(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$600(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v4}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$600(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 251
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f10010a

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 256
    :cond_3
    new-instance v4, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {v4, v5, v3}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v5}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v4, v3}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 258
    :cond_4
    new-instance p1, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-direct {p1, v4, v3}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;-><init>(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$1;)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    .line 236
    :cond_5
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$500(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$700(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$500(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 238
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000f8

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 227
    :cond_6
    :goto_2
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$400(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$300(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;->access$400(Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity$2;->this$0:Lmobi/beyondpod/ui/dialogs/CrossDeviceSyncLoginActivity;

    const v1, 0x7f1000f7

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
