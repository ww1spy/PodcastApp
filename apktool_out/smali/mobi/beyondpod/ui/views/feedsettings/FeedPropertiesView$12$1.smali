.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 677
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->val$patched:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->patchFeedUrl(Ljava/lang/String;)V

    .line 678
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    return-void
.end method
