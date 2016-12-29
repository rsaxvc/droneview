.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;
.super Ljava/lang/Thread;
.source "ShowLocalVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_1

    .line 247
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v11, "file":Ljava/io/File;
    const/16 v16, 0x0

    .line 250
    .local v16, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    .end local v16    # "in":Ljava/io/FileInputStream;
    .local v17, "in":Ljava/io/FileInputStream;
    :try_start_1
    const-string v34, "tag"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "\u6587\u4ef6\u603b\u957f:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v13, v0, [B

    .line 253
    .local v13, "header":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    .line 254
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v10

    .line 255
    .local v10, "fType":I
    const-string v34, "tag"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "fType:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v35, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myProRunnable:Ljava/lang/Runnable;
    invoke-static/range {v35 .. v35}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/Runnable;

    move-result-object v35

    const-wide/16 v36, 0x0

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$20(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Z

    move-result v34

    if-nez v34, :cond_2

    .line 385
    :cond_0
    const-string v34, "tag"

    const-string v35, "\u64ad\u653e\u7ebf\u7a0b\u7ed3\u675f"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 389
    if-eqz v17, :cond_1

    .line 391
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 392
    const/16 v16, 0x0

    .line 399
    .end local v10    # "fType":I
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "header":[B
    .end local v17    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 262
    .restart local v10    # "fType":I
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "header":[B
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v35, v0

    monitor-enter v35
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 263
    :try_start_4
    const-string v34, "tag"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "flag="

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v37, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z
    invoke-static/range {v37 .. v37}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$20(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Z

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$21(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->frameCout:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$22(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 267
    const-string v34, "tag"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "\u5171\u64ad\u653e\u4e86: "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v37, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->frameCout:I
    invoke-static/range {v37 .. v37}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$22(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " \u5e27"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    packed-switch v10, :pswitch_data_0

    .line 262
    :cond_3
    :goto_2
    monitor-exit v35

    goto/16 :goto_0

    :catchall_0
    move-exception v34

    monitor-exit v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v34
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 386
    .end local v10    # "fType":I
    .end local v13    # "header":[B
    :catch_0
    move-exception v9

    move-object/from16 v16, v17

    .line 387
    .end local v17    # "in":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    const-string v34, "tag"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "\u64ad\u653e\u5f02\u5e38\uff1a"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 389
    if-eqz v16, :cond_1

    .line 391
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 392
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 270
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "fType":I
    .restart local v13    # "header":[B
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :pswitch_0
    :try_start_8
    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    .line 271
    .local v25, "startTiem":J
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 272
    .local v23, "sizebyte":[B
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 273
    .local v30, "typebyte":[B
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 274
    .local v29, "timebyte":[B
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 275
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 276
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 277
    invoke-static/range {v23 .. v23}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v18

    .line 278
    .local v18, "length":I
    if-nez v18, :cond_5

    .line 279
    if-nez v18, :cond_5

    .line 280
    const-string v34, "tag"

    const-string v36, "\u64ad\u653e\u7ed3\u675f"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$23(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    .line 285
    const/16 v36, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    monitor-exit v35
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 389
    if-eqz v17, :cond_4

    .line 391
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 392
    const/16 v16, 0x0

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 393
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 394
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .end local v9    # "e":Ljava/io/IOException;
    .end local v23    # "sizebyte":[B
    .end local v29    # "timebyte":[B
    .end local v30    # "typebyte":[B
    :cond_4
    :goto_4
    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 289
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "sizebyte":[B
    .restart local v29    # "timebyte":[B
    .restart local v30    # "typebyte":[B
    :cond_5
    :try_start_a
    invoke-static/range {v30 .. v30}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v4

    .line 290
    .local v4, "bIFrame":I
    invoke-static/range {v29 .. v29}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v27

    .line 291
    .local v27, "time":I
    move/from16 v0, v18

    new-array v12, v0, [B

    .line 292
    .local v12, "h264byte":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 293
    const v34, 0x151800

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v33, v0

    .line 294
    .local v33, "yuvbuff":[B
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 296
    .local v31, "wAndh":[I
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    move/from16 v2, v18

    move-object/from16 v3, v31

    invoke-static {v12, v0, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->DecodeH264Frame([BI[BI[I)I

    move-result v22

    .line 299
    .local v22, "result":I
    if-lez v22, :cond_3

    .line 300
    const/16 v34, 0x0

    aget v32, v31, v34

    .line 301
    .local v32, "width":I
    const/16 v34, 0x1

    aget v14, v31, v34

    .line 302
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$25(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v14}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 304
    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    .line 305
    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    .line 304
    sub-long v36, v36, v25

    move-wide/from16 v0, v36

    long-to-int v6, v0

    .line 306
    .local v6, "comsumeTime":I
    sub-int v24, v27, v6

    .line 307
    .local v24, "sleepTime":I
    if-lez v24, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v6

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 309
    div-int/lit8 v8, v24, 0xa

    .line 310
    .local v8, "count":I
    rem-int/lit8 v21, v24, 0xa

    .line 311
    .local v21, "remainTime":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-lt v15, v8, :cond_6

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v21

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 316
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 312
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int/lit8 v36, v36, 0xa

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 313
    const-wide/16 v36, 0xa

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V

    .line 311
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 318
    .end local v8    # "count":I
    .end local v15    # "i":I
    .end local v21    # "remainTime":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v27

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    goto/16 :goto_2

    .line 324
    .end local v4    # "bIFrame":I
    .end local v6    # "comsumeTime":I
    .end local v12    # "h264byte":[B
    .end local v14    # "height":I
    .end local v18    # "length":I
    .end local v22    # "result":I
    .end local v23    # "sizebyte":[B
    .end local v24    # "sleepTime":I
    .end local v25    # "startTiem":J
    .end local v27    # "time":I
    .end local v29    # "timebyte":[B
    .end local v30    # "typebyte":[B
    .end local v31    # "wAndh":[I
    .end local v32    # "width":I
    .end local v33    # "yuvbuff":[B
    :pswitch_1
    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    .line 325
    .restart local v25    # "startTiem":J
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 326
    .local v19, "lengthBytes":[B
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 327
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v18

    .line 328
    .restart local v18    # "length":I
    if-nez v18, :cond_8

    .line 329
    const-string v34, "tag"

    const-string v36, "\u64ad\u653e\u7ed3\u675f"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$23(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    const/16 v36, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    monitor-exit v35
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 389
    if-eqz v17, :cond_4

    .line 391
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 392
    const/16 v16, 0x0

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 393
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    .line 394
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 336
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    const/16 v34, 0x4

    :try_start_c
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 337
    .local v28, "timeBytes":[B
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 338
    invoke-static/range {v28 .. v28}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v27

    .line 339
    .restart local v27    # "time":I
    const-string v34, "tag"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "\u64ad\u653e\u4e24\u5e27\u65f6\u95f4\u5deetime:"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move/from16 v0, v18

    new-array v7, v0, [B

    .line 341
    .local v7, "contentBytes":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 343
    const/16 v34, 0x0

    .line 344
    array-length v0, v7

    move/from16 v36, v0

    .line 342
    move/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 346
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    .line 348
    invoke-virtual/range {v34 .. v34}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v20

    .line 349
    .local v20, "message":Landroid/os/Message;
    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    .end local v20    # "message":Landroid/os/Message;
    :cond_9
    new-instance v34, Ljava/util/Date;

    invoke-direct/range {v34 .. v34}, Ljava/util/Date;-><init>()V

    .line 354
    invoke-virtual/range {v34 .. v34}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    .line 353
    sub-long v36, v36, v25

    move-wide/from16 v0, v36

    long-to-int v6, v0

    .line 355
    .restart local v6    # "comsumeTime":I
    sub-int v24, v27, v6

    .line 356
    .restart local v24    # "sleepTime":I
    if-lez v24, :cond_b

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v6

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 358
    div-int/lit8 v8, v24, 0xa

    .line 359
    .restart local v8    # "count":I
    rem-int/lit8 v21, v24, 0xa

    .line 360
    .restart local v21    # "remainTime":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    if-lt v15, v8, :cond_a

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v21

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 365
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 361
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int/lit8 v36, v36, 0xa

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 362
    const-wide/16 v36, 0xa

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V

    .line 360
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 367
    .end local v8    # "count":I
    .end local v15    # "i":I
    .end local v21    # "remainTime":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v36

    add-int v36, v36, v27

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    goto/16 :goto_2

    .line 376
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "comsumeTime":I
    .end local v7    # "contentBytes":[B
    .end local v18    # "length":I
    .end local v19    # "lengthBytes":[B
    .end local v24    # "sleepTime":I
    .end local v25    # "startTiem":J
    .end local v27    # "time":I
    .end local v28    # "timeBytes":[B
    :cond_c
    const-string v34, "tag"

    const-string v36, "wait 1"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->wait()V

    .line 379
    const-string v34, "tag"

    const-string v36, "wait 2"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v34, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;
    invoke-static/range {v34 .. v34}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v36, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myProRunnable:Ljava/lang/Runnable;
    invoke-static/range {v36 .. v36}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/Runnable;

    move-result-object v36

    const-wide/16 v37, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 393
    .end local v10    # "fType":I
    .end local v13    # "header":[B
    .end local v17    # "in":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 394
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 388
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v34

    .line 389
    :goto_7
    if-eqz v16, :cond_d

    .line 391
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 392
    const/16 v16, 0x0

    .line 397
    :cond_d
    :goto_8
    throw v34

    .line 393
    :catch_4
    move-exception v9

    .line 394
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 393
    .end local v9    # "e":Ljava/io/IOException;
    .end local v16    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "fType":I
    .restart local v13    # "header":[B
    .restart local v17    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    .line 394
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 388
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fType":I
    .end local v13    # "header":[B
    :catchall_2
    move-exception v34

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/FileInputStream;
    .restart local v16    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 386
    :catch_6
    move-exception v9

    goto/16 :goto_3

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
