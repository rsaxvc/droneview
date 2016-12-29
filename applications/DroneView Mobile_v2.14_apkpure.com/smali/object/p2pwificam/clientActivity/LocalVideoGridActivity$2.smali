.class Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;
.super Ljava/lang/Thread;
.source "LocalVideoGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->initBmp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 91
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$1(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-lt v0, v5, :cond_0

    .line 205
    return-void

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->arrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$1(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map;

    .line 93
    .local v32, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "path"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 94
    .local v33, "path":Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v23, "file":Ljava/io/File;
    const/16 v28, 0x0

    .line 98
    .local v28, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    .end local v28    # "in":Ljava/io/FileInputStream;
    .local v29, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x4

    :try_start_1
    new-array v0, v5, [B

    move-object/from16 v25, v0

    .line 101
    .local v25, "header":[B
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 102
    invoke-static/range {v25 .. v25}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v22

    .line 103
    .local v22, "fType":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fType:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    packed-switch v22, :pswitch_data_0

    .line 195
    :goto_1
    if-eqz v29, :cond_5

    .line 197
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 198
    const/16 v28, 0x0

    .line 91
    .end local v22    # "fType":I
    .end local v25    # "header":[B
    .end local v29    # "in":Ljava/io/FileInputStream;
    .restart local v28    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 106
    .end local v28    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "fType":I
    .restart local v25    # "header":[B
    .restart local v29    # "in":Ljava/io/FileInputStream;
    :pswitch_0
    :try_start_3
    const-string v5, "tag"

    const-string v6, "h264"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v38, v0

    .line 108
    .local v38, "sizebyte":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v42, v0

    .line 109
    .local v42, "typebyte":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v41, v0

    .line 110
    .local v41, "timebyte":[B
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 111
    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 112
    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 113
    invoke-static/range {v38 .. v38}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v30

    .line 114
    .local v30, "length":I
    invoke-static/range {v42 .. v42}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v18

    .line 115
    .local v18, "bIFrame":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bIFrame:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {v41 .. v41}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v39

    .line 117
    .local v39, "time":I
    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 118
    .local v24, "h264byte":[B
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 119
    const v5, 0x151800

    new-array v0, v5, [B

    move-object/from16 v45, v0

    .line 120
    .local v45, "yuvbuff":[B
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v43, v0

    .line 122
    .local v43, "wAndh":[I
    const/4 v5, 0x1

    .line 121
    move-object/from16 v0, v24

    move-object/from16 v1, v45

    move/from16 v2, v30

    move-object/from16 v3, v43

    invoke-static {v0, v5, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->DecodeH264Frame([BI[BI[I)I

    move-result v34

    .line 123
    .local v34, "result":I
    if-lez v34, :cond_2

    .line 124
    const-string v5, "tag"

    const-string v6, "h264\u89e3\u6790\u6210\u529f."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v5, 0x0

    aget v44, v43, v5

    .line 126
    .local v44, "width":I
    const/4 v5, 0x1

    aget v26, v43, v5

    .line 127
    .local v26, "height":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 128
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    mul-int v5, v44, v26

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    move-object/from16 v35, v0

    .line 130
    .local v35, "rgb":[B
    move-object/from16 v0, v45

    move-object/from16 v1, v35

    move/from16 v2, v44

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 132
    invoke-static/range {v35 .. v35}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 134
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 133
    move/from16 v0, v44

    move/from16 v1, v26

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 136
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/high16 v5, 0x430c0000    # 140.0f

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 137
    div-float v36, v5, v6

    .line 139
    .local v36, "scaleX":F
    const/high16 v5, 0x42f00000    # 120.0f

    .line 140
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 139
    div-float v37, v5, v6

    .line 141
    .local v37, "scaleY":F
    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 142
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 144
    const/4 v10, 0x1

    .line 142
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 145
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v5, v4, v0, v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$2(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 191
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "bIFrame":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v22    # "fType":I
    .end local v24    # "h264byte":[B
    .end local v25    # "header":[B
    .end local v26    # "height":I
    .end local v30    # "length":I
    .end local v34    # "result":I
    .end local v35    # "rgb":[B
    .end local v36    # "scaleX":F
    .end local v37    # "scaleY":F
    .end local v38    # "sizebyte":[B
    .end local v39    # "time":I
    .end local v41    # "timebyte":[B
    .end local v42    # "typebyte":[B
    .end local v43    # "wAndh":[I
    .end local v44    # "width":I
    .end local v45    # "yuvbuff":[B
    :catch_0
    move-exception v21

    move-object/from16 v28, v29

    .line 192
    .end local v29    # "in":Ljava/io/FileInputStream;
    .local v21, "e":Ljava/lang/Exception;
    .restart local v28    # "in":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v5, "tag"

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LocalViewGrid  initBmp\u5f02\u5e38:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    if-eqz v28, :cond_1

    .line 197
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 198
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 148
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v28    # "in":Ljava/io/FileInputStream;
    .restart local v18    # "bIFrame":I
    .restart local v22    # "fType":I
    .restart local v24    # "h264byte":[B
    .restart local v25    # "header":[B
    .restart local v29    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "length":I
    .restart local v34    # "result":I
    .restart local v38    # "sizebyte":[B
    .restart local v39    # "time":I
    .restart local v41    # "timebyte":[B
    .restart local v42    # "typebyte":[B
    .restart local v43    # "wAndh":[I
    .restart local v45    # "yuvbuff":[B
    :cond_2
    :try_start_6
    const-string v5, "tag"

    const-string v6, "h264\u89e3\u6790\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 194
    .end local v18    # "bIFrame":I
    .end local v22    # "fType":I
    .end local v24    # "h264byte":[B
    .end local v25    # "header":[B
    .end local v30    # "length":I
    .end local v34    # "result":I
    .end local v38    # "sizebyte":[B
    .end local v39    # "time":I
    .end local v41    # "timebyte":[B
    .end local v42    # "typebyte":[B
    .end local v43    # "wAndh":[I
    .end local v45    # "yuvbuff":[B
    :catchall_0
    move-exception v5

    move-object/from16 v28, v29

    .line 195
    .end local v29    # "in":Ljava/io/FileInputStream;
    .restart local v28    # "in":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v28, :cond_3

    .line 197
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 198
    const/16 v28, 0x0

    .line 203
    :cond_3
    :goto_5
    throw v5

    .line 153
    .end local v28    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "fType":I
    .restart local v25    # "header":[B
    .restart local v29    # "in":Ljava/io/FileInputStream;
    :pswitch_1
    const/4 v5, 0x4

    :try_start_8
    new-array v0, v5, [B

    move-object/from16 v31, v0

    .line 154
    .local v31, "lengthBytes":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v40, v0

    .line 155
    .local v40, "timeBytes":[B
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 156
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 157
    invoke-static/range {v40 .. v40}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v39

    .line 158
    .restart local v39    # "time":I
    invoke-static/range {v31 .. v31}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->byteToInt([B)I

    move-result v30

    .line 159
    .restart local v30    # "length":I
    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 160
    .local v20, "contentBytes":[B
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 162
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    .line 161
    move-object/from16 v0, v20

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 163
    .local v10, "btp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    .line 164
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    const/high16 v5, 0x430c0000    # 140.0f

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v36, v5, v6

    .line 166
    .restart local v36    # "scaleX":F
    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v37, v5, v6

    .line 167
    .restart local v37    # "scaleY":F
    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 168
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 169
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 170
    const/16 v16, 0x1

    move-object v15, v9

    .line 168
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 171
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v5, v4, v0, v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$2(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 175
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v36    # "scaleX":F
    .end local v37    # "scaleY":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020020

    .line 174
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 176
    .local v11, "bmp":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    const/high16 v5, 0x430c0000    # 140.0f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v36, v5, v6

    .line 178
    .restart local v36    # "scaleX":F
    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v37, v5, v6

    .line 179
    .restart local v37    # "scaleY":F
    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 180
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 181
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 182
    const/16 v17, 0x1

    move-object/from16 v16, v9

    .line 180
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 183
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v5, v4, v0, v6}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$2;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$2(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 199
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "btp":Landroid/graphics/Bitmap;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v20    # "contentBytes":[B
    .end local v22    # "fType":I
    .end local v25    # "header":[B
    .end local v29    # "in":Ljava/io/FileInputStream;
    .end local v30    # "length":I
    .end local v31    # "lengthBytes":[B
    .end local v36    # "scaleX":F
    .end local v37    # "scaleY":F
    .end local v39    # "time":I
    .end local v40    # "timeBytes":[B
    .restart local v21    # "e":Ljava/lang/Exception;
    .restart local v28    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v21

    .line 200
    .local v21, "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 199
    .end local v21    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v21

    .line 200
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 199
    .end local v21    # "e":Ljava/io/IOException;
    .end local v28    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "fType":I
    .restart local v25    # "header":[B
    .restart local v29    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v21

    .line 200
    .restart local v21    # "e":Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    .end local v21    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v28, v29

    .end local v29    # "in":Ljava/io/FileInputStream;
    .restart local v28    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 194
    .end local v22    # "fType":I
    .end local v25    # "header":[B
    :catchall_1
    move-exception v5

    goto/16 :goto_4

    .line 191
    :catch_4
    move-exception v21

    goto/16 :goto_3

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
