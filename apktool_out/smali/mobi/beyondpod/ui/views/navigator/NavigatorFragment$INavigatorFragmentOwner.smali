.class public interface abstract Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;
.super Ljava/lang/Object;
.source "NavigatorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INavigatorFragmentOwner"
.end annotation


# virtual methods
.method public abstract autoExpandPlayerOnNextPlay()V
.end method

.method public abstract openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
.end method

.method public abstract requestDrawersClose()V
.end method

.method public abstract selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
.end method

.method public abstract startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V
.end method
