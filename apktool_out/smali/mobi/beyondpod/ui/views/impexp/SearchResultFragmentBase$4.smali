.class Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;
.super Ljava/lang/Object;
.source "SearchResultFragmentBase.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 258
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->setIsSearching(Z)V

    .line 259
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$000(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;Z)V

    .line 261
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$100(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v0

    const v1, 0x7f10030c

    if-eqz v0, :cond_2

    .line 269
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error performing search: Http Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v3, :cond_1

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$200(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 274
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$200(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f10030e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 275
    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$300()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 277
    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->access$302(Z)Z

    .line 278
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10030d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f100092

    .line 281
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4$1;-><init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$4;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
