.class public Lmobi/beyondpod/ui/dialogs/PreviewPlayer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PreviewPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewPlayer"


# instance fields
.field private mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

.field private mControlResumed:Z

.field mCurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private mFinishOnCompletion:Z

.field private mFocused:Z

.field private mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mResumed:Z

    .line 49
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFocused:Z

    .line 50
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayer;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFinishOnCompletion:Z

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v0, 0x9

    .line 57
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->supportRequestWindowFeature(I)Z

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    const p1, 0x7f0c00b4

    .line 62
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->setContentView(I)V

    const p1, 0x7f0901ff

    .line 63
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.album"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->findFeedByIdInTempOrRepository(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mCurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    :cond_0
    const-string v0, "output"

    const/4 v7, -0x1

    .line 74
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v7, :cond_4

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "video"

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "image"

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v0

    .line 88
    :goto_2
    sget-object v0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting preview of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", feed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mCurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdPauseAudioPlayback()V

    .line 94
    new-instance v9, Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mCurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;-><init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayer;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Lmobi/beyondpod/rsscore/Feed;I)V

    iput-object v9, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    const-string v0, "android.intent.extra.screenOrientation"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.screenOrientation"

    .line 108
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->getRequestedOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 112
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->setRequestedOrientation(I)V

    :cond_5
    const-string v0, "android.intent.extra.finishOnCompletion"

    .line 121
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFinishOnCompletion:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mResumed:Z

    .line 129
    iget-boolean v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->onPause()V

    .line 132
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mResumed:Z

    .line 141
    iget-boolean v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFocused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->onResume()V

    .line 144
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFocused:Z

    .line 159
    iget-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mFocused:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mResumed:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControl:Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;->onResume()V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->mControlResumed:Z

    :cond_0
    return-void
.end method
