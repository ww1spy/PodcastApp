.class Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;
.super Ljava/lang/Object;
.source "FeedCommonSection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 181
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const p2, 0x7f090113

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const p3, 0x7f090123

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 189
    iget-object p3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p3}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$500(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eq p3, p5, :cond_3

    const/4 p5, 0x2

    if-ne p3, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 p5, 0x5

    const/16 v0, 0x8

    if-eq p3, p5, :cond_2

    const/4 p5, 0x4

    if-ne p3, p5, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 194
    :cond_3
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const p1, 0x7f100220

    const p4, 0x7f100225

    packed-switch p3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const p1, 0x7f1001fc

    .line 235
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$700(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_1
    const p3, 0x7f1001f4

    .line 230
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$700(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_2
    const p1, 0x7f1001f8

    .line 226
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_3
    const p1, 0x7f1001fe

    .line 221
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$700(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_4
    const p3, 0x7f1001f6

    .line 216
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;->access$700(Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_5
    const p1, 0x7f1001fa

    .line 212
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
