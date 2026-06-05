.class public Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CopyListener"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p2, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1120
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$CopyListener;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
