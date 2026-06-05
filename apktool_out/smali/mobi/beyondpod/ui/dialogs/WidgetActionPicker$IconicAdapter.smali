.class Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WidgetActionPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconicAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final NOW_PLAYING:Ljava/lang/String;

.field context:Landroid/app/Activity;

.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;Landroid/app/Activity;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    .line 145
    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$200(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0c00d4

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x7f100422

    .line 140
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->NOW_PLAYING:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 151
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c00d4

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0902bb

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0902ba

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-lez p1, :cond_0

    .line 158
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$200(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {p3}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$300(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[I

    move-result-object p3

    aget p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->NOW_PLAYING:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800c8

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$200(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p3, p0, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker$IconicAdapter;->this$0:Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-static {p3}, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;->access$300(Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;)[I

    move-result-object p3

    aget p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2
.end method
