.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 309
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->hide()V

    .line 312
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$900(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1001ce

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$1000(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800b0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->show()V

    .line 317
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$900(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f10020d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$1000(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->isDataLoaded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 321
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$800(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 324
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v0, 0x7f090222

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 325
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$6;Landroid/widget/ScrollView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
