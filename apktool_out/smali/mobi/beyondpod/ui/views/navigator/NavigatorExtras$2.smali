.class Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$2;
.super Ljava/lang/Object;
.source "NavigatorExtras.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$2;->this$0:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowGlobalSettings()V

    return-void
.end method
