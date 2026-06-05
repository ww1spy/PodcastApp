.class public abstract Lmobi/beyondpod/rsscore/ConfigWriteHelper;
.super Ljava/lang/Object;
.source "ConfigWriteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;,
        Lmobi/beyondpod/rsscore/ConfigWriteHelper$CommitWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;
    .locals 1

    .line 15
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter$Holder;->access$000()Lmobi/beyondpod/rsscore/ConfigWriteHelper$ApplyWriter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
.end method

.method abstract putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
.end method

.method abstract putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
.end method

.method abstract putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
.end method
