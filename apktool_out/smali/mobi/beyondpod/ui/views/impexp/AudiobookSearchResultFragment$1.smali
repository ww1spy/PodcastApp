.class Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;
.super Ljava/lang/Object;
.source "AudiobookSearchResultFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

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

    .line 60
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    iget-object p4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p4, p4, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    .line 63
    iget-object p5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    invoke-static {p5}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;)Landroid/widget/Spinner;

    move-result-object p5

    if-ne p1, p5, :cond_1

    if-nez p3, :cond_0

    .line 66
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    const-string p3, "*"

    iput-object p3, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    invoke-virtual {p5}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f030007

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p5

    aget-object p3, p5, p3

    iput-object p3, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    const-string p3, "*"

    iput-object p3, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p5, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    invoke-virtual {p5}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f030008

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p5

    aget-object p3, p5, p3

    iput-object p3, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    .line 77
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_GenreFilter:Ljava/lang/String;

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_LanguageFilter:Ljava/lang/String;

    invoke-static {p4, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 78
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->_Query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultFragment;->DoSearch(Ljava/lang/String;)V

    :cond_4
    return-void
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
