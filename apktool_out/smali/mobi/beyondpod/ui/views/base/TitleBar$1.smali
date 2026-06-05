.class Lmobi/beyondpod/ui/views/base/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/base/TitleBar;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/TitleBar;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/TitleBar$1;->this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/base/TitleBar$1;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/TitleBar$1;->val$inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/TitleBar$1;->this$0:Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/base/TitleBar;->access$000(Lmobi/beyondpod/ui/views/base/TitleBar;)Landroid/widget/TextSwitcher;

    move-result-object v1

    const v2, 0x7f0c001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
