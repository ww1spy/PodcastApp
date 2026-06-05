.class Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;
.super Ljava/lang/Object;
.source "AddFeedSectionsTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->addTab(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$100(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    move-result-object v0

    iget v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->val$position:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->onCategoryChanged(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->access$200(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
