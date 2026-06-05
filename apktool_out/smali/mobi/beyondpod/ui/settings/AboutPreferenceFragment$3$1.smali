.class Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3$1;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3$1;->this$1:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3$1;->this$1:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->val$inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->tagManagerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
