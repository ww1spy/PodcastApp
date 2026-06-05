.class Lmobi/beyondpod/ui/views/Splash$3;
.super Ljava/lang/Object;
.source "Splash.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/Splash;
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

    .line 273
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Splash$3;->this$0:Lmobi/beyondpod/ui/views/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 278
    invoke-static {}, Lmobi/beyondpod/ui/views/Splash;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Splash is exiting."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->shutdown()V

    .line 280
    iget-object p1, p0, Lmobi/beyondpod/ui/views/Splash$3;->this$0:Lmobi/beyondpod/ui/views/Splash;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Splash;->finish()V

    return-void
.end method
