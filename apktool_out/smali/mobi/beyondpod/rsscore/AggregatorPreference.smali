.class public Lmobi/beyondpod/rsscore/AggregatorPreference;
.super Landroid/preference/Preference;
.source "AggregatorPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "DisconnectAggregatorFeeds"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .line 45
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDisconnectAggregatorDialog()V

    return-void
.end method
