.class Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$rb:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/view/LayoutInflater;Landroid/widget/Button;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->this$0:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->val$rb:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->refreshTagManager()V

    .line 78
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->val$inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Refreshing..."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;->val$rb:Landroid/widget/Button;

    new-instance v0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3$1;-><init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$3;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
