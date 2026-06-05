.class Lmobi/beyondpod/ui/views/Splash$1;
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

    .line 132
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Splash$1;->this$0:Lmobi/beyondpod/ui/views/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 136
    invoke-static {}, Lmobi/beyondpod/ui/views/Splash;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid SD card root while using a cached root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Trying to fix by autodetecting the SD Card root..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 138
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setPreferLastSDCardRoot(Z)V

    const/4 p1, 0x0

    .line 139
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setLastSDCardRootPath(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash$1;->this$0:Lmobi/beyondpod/ui/views/Splash;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/Splash;->access$100(Lmobi/beyondpod/ui/views/Splash;)V

    return-void
.end method
