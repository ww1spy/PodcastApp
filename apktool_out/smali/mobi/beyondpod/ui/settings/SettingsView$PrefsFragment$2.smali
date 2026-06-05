.class Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->askToApplySettings(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;Ljava/lang/String;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;->this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 594
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;->this$0:Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    iget-object p2, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;->val$key:Ljava/lang/String;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->access$000(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;Ljava/lang/String;)V

    return-void
.end method
