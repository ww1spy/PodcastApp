.class Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$2;
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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment$2;->this$0:Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdExit()V

    return-void
.end method
