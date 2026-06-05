.class public Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;
.super Landroid/os/AsyncTask;
.source "LogcatSnapshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _LastException:Ljava/lang/Exception;

.field private _NumRecoredsToGet:I

.field private _ProgressDialog:Landroid/app/ProgressDialog;

.field private _SavePath:Ljava/lang/String;

.field private _callback:Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput p2, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_NumRecoredsToGet:I

    .line 55
    iput-object p3, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_SavePath:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_callback:Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;

    .line 58
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 60
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    const-string p2, "Reading Android Log..."

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 7

    const/4 p1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_SavePath:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    .line 74
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_SavePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "logcat -t %d -b main -v time"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_NumRecoredsToGet:I

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 85
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 97
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    if-eqz v2, :cond_3

    .line 100
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v0, p1

    move-object v2, v0

    .line 90
    :goto_2
    :try_start_4
    iput-object v1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_LastException:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    .line 97
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :catch_3
    :cond_3
    :goto_3
    return-object p1

    :catchall_2
    move-exception p1

    move-object v1, p1

    move-object p1, v2

    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 100
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 104
    :catch_4
    :cond_5
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_callback:Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;

    if-eqz p1, :cond_3

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_LastException:Ljava/lang/Exception;

    if-nez p1, :cond_1

    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_SavePath:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_callback:Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;

    invoke-interface {p1}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;->snapshotPrepared()V

    goto :goto_1

    .line 127
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_callback:Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;

    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_LastException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    const-string v0, "N/A"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_LastException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;->snapshotFailed(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 113
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
