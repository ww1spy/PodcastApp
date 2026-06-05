.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$6;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Lmobi/beyondpod/ui/dialogs/FontBackgroundSettingsPopUp$FontBackgroundSettingsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$6;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharmPopupDismissed()V
    .locals 0

    return-void
.end method

.method public onCharmPopupShown()V
    .locals 0

    return-void
.end method

.method public onFontSizeBackgroundColorChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 801
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setContentTheme(Ljava/lang/String;)V

    .line 802
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultDocFontSize(Ljava/lang/String;)V

    .line 803
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$6;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$800(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V

    return-void
.end method
