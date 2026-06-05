.class Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase$1;
.super Ljava/lang/Object;
.source "MediaAppWidgetProviderBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase$1;->this$0:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase$1;->this$0:Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;

    invoke-static {v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->access$000(Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;)V

    return-void
.end method
