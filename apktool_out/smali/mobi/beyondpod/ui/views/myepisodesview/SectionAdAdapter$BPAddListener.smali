.class Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "SectionAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BPAddListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "No fill"

    goto :goto_0

    :pswitch_1
    const-string v0, "Network Error"

    goto :goto_0

    :pswitch_2
    const-string v0, "Invalid request"

    goto :goto_0

    :pswitch_3
    const-string v0, "Internal error"

    .line 112
    :goto_0
    invoke-static {}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "___________Ad Lister Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter$BPAddListener;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
