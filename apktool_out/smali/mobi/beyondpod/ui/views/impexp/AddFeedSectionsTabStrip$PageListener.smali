.class Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;
.super Ljava/lang/Object;
.source "AddFeedSectionsTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$200(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$600(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;II)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 177
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {p3, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$302(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;I)I

    .line 178
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {p3, p2}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$402(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;F)F

    .line 179
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$500(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p3, p1, p2}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$600(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;II)V

    .line 180
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xf

    .line 215
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xe

    .line 211
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd

    .line 207
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xc

    .line 203
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xb

    .line 199
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xa

    .line 195
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    :goto_0
    return-void

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
