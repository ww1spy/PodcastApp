.class public interface abstract Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
.super Ljava/lang/Object;
.source "SectionedListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISectionedAdapter"
.end annotation


# virtual methods
.method public abstract getAdapterId()Ljava/util/UUID;
.end method

.method public abstract getFirstItemAtRow(I)Ljava/lang/Object;
.end method

.method public abstract getItemAtPosition(I)Ljava/lang/Object;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemRow(Ljava/lang/Object;)I
.end method

.method public abstract getRowCount()I
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
