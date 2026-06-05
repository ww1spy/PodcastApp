.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;
.super Ljava/lang/Thread;
.source "MoveFilesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveThread"
.end annotation


# instance fields
.field volatile _Cancel:Z

.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private buildDestinationFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$400(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 145
    invoke-static {v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$500(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 144
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->_Cancel:Z

    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 19

    move-object/from16 v1, p0

    .line 156
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, -0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to create destination folder "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MoveFilesDialog"

    .line 163
    invoke-static {v6, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v6, v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v6, v2, v5, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    return v4

    :cond_1
    :goto_0
    return v5

    .line 170
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    .line 174
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 175
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v9, p2

    :try_start_3
    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 177
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v11, 0x0

    .line 179
    :try_start_6
    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v10, v15

    move-object v2, v13

    move-wide/from16 v13, v16

    move-object v4, v15

    move-object v15, v2

    :try_start_7
    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v10

    .line 180
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v3, v10, v12

    if-nez v3, :cond_3

    move/from16 v18, v5

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 197
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v6, :cond_5

    .line 200
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :cond_5
    if-eqz v2, :cond_6

    .line 210
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v8, :cond_7

    .line 213
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :cond_7
    return v18

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v13

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v13

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_2
    move-object v4, v15

    :goto_3
    move-object v10, v8

    move-object v8, v6

    move-object v6, v2

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_4
    move-object v4, v15

    :goto_5
    move-object v10, v8

    move-object v8, v6

    move-object v6, v2

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v4, v2

    move-object v10, v8

    move-object v2, v0

    move-object v8, v6

    move-object v6, v4

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object v4, v2

    move-object v10, v8

    move-object v2, v0

    move-object v8, v6

    move-object v6, v4

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v4, v2

    move-object v10, v4

    move-object v8, v6

    move-object v2, v0

    move-object v6, v10

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v9, p2

    :goto_6
    move-object v4, v2

    move-object v10, v4

    move-object v8, v6

    move-object v2, v0

    move-object v6, v10

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v2

    move-object v6, v4

    move-object v8, v6

    move-object v10, v8

    :goto_7
    move-object v2, v0

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v7, p1

    :goto_8
    move-object/from16 v9, p2

    move-object v4, v2

    move-object v6, v4

    move-object v8, v6

    move-object v10, v8

    :goto_9
    move-object v2, v0

    .line 184
    :goto_a
    :try_start_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to copy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "MoveFilesDialog"

    .line 187
    invoke-static {v9, v7, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    iget-object v9, v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "! reason: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v5, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v4, :cond_8

    .line 197
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    if-eqz v8, :cond_9

    .line 200
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :cond_9
    if-eqz v6, :cond_a

    .line 210
    :try_start_c
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_a
    if-eqz v10, :cond_b

    .line 213
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    :cond_b
    const/4 v2, 0x0

    return v2

    :catchall_6
    move-exception v0

    goto :goto_7

    :goto_b
    if-eqz v4, :cond_c

    .line 197
    :try_start_d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    if-eqz v8, :cond_d

    .line 200
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :cond_d
    if-eqz v6, :cond_e

    .line 210
    :try_start_e
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_e
    if-eqz v10, :cond_f

    .line 213
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 218
    :catch_d
    :cond_f
    throw v2
.end method

.method moveFiles()V
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MoveFilesDialog"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 97
    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 98
    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 102
    invoke-direct {p0, v8}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->buildDestinationFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 103
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long v13, v4, v11

    .line 105
    invoke-virtual {p0, v8, v10}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    iput-boolean v9, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->_Cancel:Z

    .line 108
    :cond_0
    iget-boolean v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->_Cancel:Z

    if-eqz v4, :cond_1

    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long v10, v6, v4

    const-wide/32 v4, 0xfa000

    cmp-long v6, v13, v4

    if-lez v6, :cond_2

    .line 118
    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v6, 0x7f10026f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 119
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    iget-object v8, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 120
    invoke-static {v8}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 119
    invoke-virtual {v5, v6, v7}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    long-to-float v6, v10

    iget-object v7, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 121
    invoke-static {v7}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 118
    invoke-static {v4, v5, v6, v9}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    move-wide v4, v2

    goto :goto_1

    :cond_2
    move-wide v4, v13

    :goto_1
    move-wide v6, v10

    goto :goto_0

    .line 125
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->_Cancel:Z

    if-eqz v1, :cond_4

    const-string v1, "MoveFilesDialog"

    const-string v2, "Copy canceled!"

    .line 127
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1, v9}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$300(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;I)V

    goto :goto_3

    :cond_4
    const-string v1, "MoveFilesDialog"

    const-string v2, "Copy completed!"

    .line 132
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$300(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 138
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x2

    invoke-static {v2, v1, v0, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    :goto_3
    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->_Cancel:Z

    const/4 v1, 0x1

    .line 83
    sput-boolean v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_isRunning:Z

    .line 84
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->moveFiles()V

    .line 85
    sput-boolean v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_isRunning:Z

    return-void
.end method
