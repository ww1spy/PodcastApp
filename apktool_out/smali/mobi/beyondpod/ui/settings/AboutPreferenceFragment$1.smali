.class Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;
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

.field final synthetic val$_contextMenu:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;->this$0:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;->val$_contextMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowDeveloperSettings()V

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$1;->val$_contextMenu:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
