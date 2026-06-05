.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$4;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$4;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/ui/settings/SettingsView;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "StartScreen"

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
