.class public Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;
.super Landroid/app/Activity;
.source "ExternalPlayerStarterActivity.java"


# static fields
.field public static REQUEST_CODE_CmdOpenExternalPlayer:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExternalPlayerStarterActivity"


# instance fields
.field _Handler:Landroid/os/Handler;

.field _RepoLoadingDlg:Landroid/app/ProgressDialog;

.field _UpdateTrackWhenRepositoryLoadsRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Ljava/lang/String;JJLjava/lang/Float;J)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p8}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->updateTrackWhenRepositoryLoads(Ljava/lang/String;JJLjava/lang/Float;J)V

    return-void
.end method

.method private updateTrackWhenRepositoryLoads(Ljava/lang/String;JJLjava/lang/Float;J)V
    .locals 13

    move-object v10, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v8, p7

    .line 187
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 189
    iget v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_UpdateTrackWhenRepositoryLoadsRetryCount:I

    if-lez v0, :cond_1

    .line 191
    iget v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_UpdateTrackWhenRepositoryLoadsRetryCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_UpdateTrackWhenRepositoryLoadsRetryCount:I

    .line 193
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update the last plying track from external Player, Waiting for repository to load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_UpdateTrackWhenRepositoryLoadsRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    .line 200
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 201
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 202
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1003de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 206
    :cond_0
    iget-object v11, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_Handler:Landroid/os/Handler;

    new-instance v12, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;

    move-object v0, v12

    move-object v1, v10

    move-wide v3, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$2;-><init>(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Ljava/lang/String;JJLjava/lang/Float;J)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v11, v12, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    const-string v1, "Trying to update the last plying track from external Player, but repository is taking too long to load. Giving up."

    .line 218
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_2
    invoke-virtual {v10}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->finish()V

    :goto_0
    return-void

    .line 230
    :cond_3
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-nez v0, :cond_4

    .line 232
    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_a

    .line 236
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const-wide/16 v3, 0x0

    if-ltz v1, :cond_6

    .line 238
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_5

    .line 239
    invoke-virtual {v0, v8, v9}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    .line 241
    :cond_5
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    long-to-float v1, v5

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v1, v5

    float-to-long v5, v1

    .line 242
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "External Player finished playing track: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") at position: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Toatl Time: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Pct:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v5, v3

    if-ltz v1, :cond_b

    .line 247
    invoke-virtual {v0, v5, v6}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    goto/16 :goto_1

    :cond_6
    cmp-long v1, v5, v3

    if-ltz v1, :cond_8

    .line 254
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v11

    cmp-long v1, v11, v3

    if-nez v1, :cond_7

    .line 255
    invoke-virtual {v0, v8, v9}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    .line 257
    :cond_7
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External Player finished playing track: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") at position: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Toatl Time: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v5, v6}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    goto :goto_1

    .line 265
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v5, v1, p2

    const-wide/16 v1, 0x2710

    cmp-long v3, v5, v1

    if-lez v3, :cond_9

    .line 267
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Player finished playing track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". track marlked as Played!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    .line 272
    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->markTracksItemAsRead(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_1

    .line 275
    :cond_9
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Player finished playing track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Playback was too short. Ignoring"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_a
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Player finished playing, but track: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_b
    :goto_1
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 287
    iget-object v0, v10, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    :cond_c
    invoke-virtual {v10}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Activity Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->REQUEST_CODE_CmdOpenExternalPlayer:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0xa

    .line 131
    iput p1, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_UpdateTrackWhenRepositoryLoadsRetryCount:I

    const-string p1, ""

    const/high16 v0, -0x40800000    # -1.0f

    const-wide/16 v1, -0x1

    if-eqz p3, :cond_7

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-nez p2, :cond_7

    :cond_0
    const-string p2, "filePath"

    .line 144
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v4, "file"

    invoke-static {p2, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 156
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v4, "com.mxtech.intent.result.VIEW"

    .line 158
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "position"

    .line 160
    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v1

    const-wide/16 v6, 0x3e8

    if-lez v5, :cond_4

    .line 162
    div-long/2addr v3, v6

    :cond_4
    const-string v5, "duration"

    cmp-long v8, v3, v1

    if-lez v8, :cond_5

    const-wide/16 v1, 0x2

    mul-long v6, v3, v1

    :cond_5
    long-to-int v1, v6

    .line 164
    invoke-virtual {p3, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    int-to-long v1, p3

    .line 167
    sget-object p3, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received MXPlayer return result! File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Position: "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", duration: "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v1

    move-wide v7, v3

    move-object v4, p1

    goto :goto_1

    :cond_6
    const-string p2, "position"

    .line 173
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const-string p2, "duration"

    const/16 v3, 0x3e8

    .line 174
    invoke-virtual {p3, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-long p2, p2

    move-object v4, p1

    move-wide v10, p2

    move-wide v7, v1

    goto :goto_1

    :cond_7
    move-object v4, p1

    move-wide v7, v1

    move-wide v10, v7

    :goto_1
    const-wide/16 v5, 0x0

    .line 180
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v3, p0

    .line 178
    invoke-direct/range {v3 .. v11}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->updateTrackWhenRepositoryLoads(Ljava/lang/String;JJLjava/lang/Float;J)V

    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_Handler:Landroid/os/Handler;

    .line 55
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object p1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    const-string v0, "ExternalPlayerStarterActivity started with no storage card. Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->finish()V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Player Starter received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.VIEW"

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    sget-object v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting playback in external player for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->setIntent(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity$1;-><init>(Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 100
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    const-string v1, "On Destroy()!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->_RepoLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AAA"

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    const-string v1, "On Start()!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 110
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ExternalPlayerStarterActivity;->TAG:Ljava/lang/String;

    const-string v1, "On stop()!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
