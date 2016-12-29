.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;
.super Ljava/lang/Thread;
.source "ShowLocalVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->firstPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    .line 416
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 418
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v6, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 422
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    .end local v9    # "in":Ljava/io/FileInputStream;
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 425
    .local v7, "fileSumLength":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 426
    .local v8, "header":[B
    invoke-virtual {v10, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .line 427
    .local v15, "read":I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v5

    .line 428
    .local v5, "fType":I
    const-string v19, "tag"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "fType:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    packed-switch v5, :pswitch_data_0

    .line 472
    :goto_0
    if-eqz v10, :cond_2

    .line 474
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 475
    const/4 v9, 0x0

    .line 481
    .end local v5    # "fType":I
    .end local v7    # "fileSumLength":I
    .end local v8    # "header":[B
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v15    # "read":I
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-void

    .line 431
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "fType":I
    .restart local v7    # "fileSumLength":I
    .restart local v8    # "header":[B
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v15    # "read":I
    :pswitch_0
    add-int/lit8 v19, v7, -0x8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :try_start_3
    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 432
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 433
    .local v16, "sumB":[B
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 435
    const-string v19, "tag"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u64ad\u653e\u603b\u65f6\u95f4  videoSumTime:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v21, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I
    invoke-static/range {v21 .. v21}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 469
    .end local v5    # "fType":I
    .end local v7    # "fileSumLength":I
    .end local v8    # "header":[B
    .end local v15    # "read":I
    .end local v16    # "sumB":[B
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 470
    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    const-string v19, "tag"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u83b7\u53d6\u7b2c\u4e00\u5e27\u5f02\u5e38\uff1a"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 472
    if-eqz v9, :cond_0

    .line 474
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 475
    const/4 v9, 0x0

    goto :goto_1

    .line 440
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "fType":I
    .restart local v7    # "fileSumLength":I
    .restart local v8    # "header":[B
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v15    # "read":I
    :pswitch_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$30(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 441
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 442
    .local v12, "lengthBytes":[B
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 443
    .local v18, "timeBytes":[B
    invoke-virtual {v10, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 444
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 445
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v11

    .line 446
    .local v11, "length":I
    invoke-static/range {v18 .. v18}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v17

    .line 448
    .local v17, "time":I
    new-array v3, v11, [B

    .line 449
    .local v3, "contentBytes":[B
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 451
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    .line 450
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 452
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 453
    .local v13, "message":Landroid/os/Message;
    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    add-int/lit8 v19, v11, 0x10

    sub-int v14, v7, v19

    .line 458
    .local v14, "need":I
    int-to-long v0, v14

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 459
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 460
    .restart local v16    # "sumB":[B
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->byteToInt([B)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V

    .line 463
    const-string v19, "tag"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u64ad\u653e\u603b\u65f6\u95f4  videoSumTime:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v21, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I
    invoke-static/range {v21 .. v21}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    move-object/from16 v19, v0

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 471
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "contentBytes":[B
    .end local v5    # "fType":I
    .end local v7    # "fileSumLength":I
    .end local v8    # "header":[B
    .end local v11    # "length":I
    .end local v12    # "lengthBytes":[B
    .end local v13    # "message":Landroid/os/Message;
    .end local v14    # "need":I
    .end local v15    # "read":I
    .end local v16    # "sumB":[B
    .end local v17    # "time":I
    .end local v18    # "timeBytes":[B
    :catchall_0
    move-exception v19

    move-object v9, v10

    .line 472
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v9, :cond_1

    .line 474
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 475
    const/4 v9, 0x0

    .line 480
    :cond_1
    :goto_4
    throw v19

    .line 476
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 477
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 476
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 477
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 476
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "fType":I
    .restart local v7    # "fileSumLength":I
    .restart local v8    # "header":[B
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v15    # "read":I
    :catch_3
    move-exception v4

    .line 477
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 471
    .end local v5    # "fType":I
    .end local v7    # "fileSumLength":I
    .end local v8    # "header":[B
    .end local v15    # "read":I
    :catchall_1
    move-exception v19

    goto :goto_3

    .line 469
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
