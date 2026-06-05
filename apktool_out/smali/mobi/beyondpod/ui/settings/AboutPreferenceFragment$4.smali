.class Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$_contextMenu:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;->this$0:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;->val$_contextMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 118
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$4;->val$_contextMenu:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method
