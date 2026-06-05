.class Lmobi/beyondpod/ui/views/Splash$2;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Splash;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Splash;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Splash$2;->this$0:Lmobi/beyondpod/ui/views/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 187
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 188
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash$2;->this$0:Lmobi/beyondpod/ui/views/Splash;

    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f5

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/Splash;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
