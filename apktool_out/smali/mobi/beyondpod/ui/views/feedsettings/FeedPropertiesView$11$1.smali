.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 638
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$202(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Z)Z

    .line 639
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    return-void
.end method
