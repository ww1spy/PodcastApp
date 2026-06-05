.class Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;
.super Ljava/lang/Object;
.source "FeedAdvancedSection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 372
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->access$000(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 376
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    .line 377
    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 378
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection$1;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;->access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedAdvancedSection;)Landroid/widget/EditText;

    move-result-object p1

    .line 379
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumGReaderItemsToGet()I

    move-result p2

    .line 378
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
