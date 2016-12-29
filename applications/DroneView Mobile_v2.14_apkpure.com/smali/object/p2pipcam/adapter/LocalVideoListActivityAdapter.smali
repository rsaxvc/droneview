.class public Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocalVideoListActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private childMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

.field private inflator:Landroid/view/LayoutInflater;

.field private isOver:Z

.field private mapBmp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "wh"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mode:I

    .line 36
    iput-object v1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    .line 37
    iput-boolean v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->isOver:Z

    .line 38
    iput-object v1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mapBmp:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;-><init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V

    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->handler:Landroid/os/Handler;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->childMap:Ljava/util/Map;

    .line 59
    iput p4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->width:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mapBmp:Ljava/util/HashMap;

    .line 61
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->initBmp()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->isOver:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->childMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mapBmp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 253
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 254
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 255
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 256
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 257
    shl-int/lit8 v3, v3, 0x10

    .line 258
    shl-int/lit8 v2, v2, 0x8

    .line 259
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 260
    return v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 42
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v22, "file":Ljava/io/File;
    const/16 v26, 0x0

    .line 136
    .local v26, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v26    # "in":Ljava/io/FileInputStream;
    .local v27, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x4

    :try_start_1
    new-array v0, v5, [B

    move-object/from16 v24, v0

    .line 139
    .local v24, "header":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 140
    invoke-static/range {v24 .. v24}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v21

    .line 141
    .local v21, "fType":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fType:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    packed-switch v21, :pswitch_data_0

    .line 210
    if-eqz v27, :cond_5

    .line 212
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 213
    const/16 v26, 0x0

    .line 204
    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    :goto_0
    const/4 v5, 0x0

    .line 220
    .end local v21    # "fType":I
    .end local v24    # "header":[B
    :goto_1
    return-object v5

    .line 144
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v21    # "fType":I
    .restart local v24    # "header":[B
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :pswitch_0
    const/4 v5, 0x4

    :try_start_3
    new-array v0, v5, [B

    move-object/from16 v34, v0

    .line 145
    .local v34, "sizebyte":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v38, v0

    .line 146
    .local v38, "typebyte":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v37, v0

    .line 147
    .local v37, "timebyte":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 148
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 149
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 150
    invoke-static/range {v34 .. v34}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v28

    .line 151
    .local v28, "length":I
    invoke-static/range {v38 .. v38}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v17

    .line 152
    .local v17, "bIFrame":I
    invoke-static/range {v37 .. v37}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v35

    .line 153
    .local v35, "time":I
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 154
    .local v23, "h264byte":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 155
    const v5, 0x151800

    new-array v0, v5, [B

    move-object/from16 v41, v0

    .line 156
    .local v41, "yuvbuff":[B
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v39, v0

    .line 157
    .local v39, "wAndh":[I
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move/from16 v2, v28

    move-object/from16 v3, v39

    invoke-static {v0, v5, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->DecodeH264Frame([BI[BI[I)I

    move-result v30

    .line 159
    .local v30, "result":I
    if-lez v30, :cond_1

    .line 160
    const-string v5, "tag"

    const-string v6, "h264\u89e3\u6790\u6210\u529f"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v5, 0x0

    aget v40, v39, v5

    .line 162
    .local v40, "width":I
    const/4 v5, 0x1

    aget v25, v39, v5

    .line 163
    .local v25, "height":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    mul-int v5, v40, v25

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    move-object/from16 v31, v0

    .line 165
    .local v31, "rgb":[B
    move-object/from16 v0, v41

    move-object/from16 v1, v31

    move/from16 v2, v40

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 166
    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 168
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 167
    move/from16 v0, v40

    move/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 169
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 170
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v40

    int-to-float v5, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v32, v5, v6

    .line 172
    .local v32, "scaleX":F
    move/from16 v0, v40

    int-to-float v5, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v33, v5, v6

    .line 173
    .local v33, "scaleY":F
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 174
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 175
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    .line 174
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 210
    if-eqz v27, :cond_0

    .line 212
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 213
    const/16 v26, 0x0

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 214
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v20

    .line 215
    .local v20, "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "bIFrame":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "e":Ljava/io/IOException;
    .end local v23    # "h264byte":[B
    .end local v25    # "height":I
    .end local v30    # "result":I
    .end local v31    # "rgb":[B
    .end local v34    # "sizebyte":[B
    .end local v37    # "timebyte":[B
    .end local v38    # "typebyte":[B
    .end local v39    # "wAndh":[I
    .end local v40    # "width":I
    .end local v41    # "yuvbuff":[B
    :cond_0
    :goto_2
    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 177
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v26    # "in":Ljava/io/FileInputStream;
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    .restart local v17    # "bIFrame":I
    .restart local v23    # "h264byte":[B
    .restart local v27    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "result":I
    .restart local v34    # "sizebyte":[B
    .restart local v37    # "timebyte":[B
    .restart local v38    # "typebyte":[B
    .restart local v39    # "wAndh":[I
    .restart local v41    # "yuvbuff":[B
    :cond_1
    :try_start_5
    const-string v5, "tag"

    const-string v6, "h264\u89e3\u6790\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    if-eqz v27, :cond_2

    .line 212
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 213
    const/16 v26, 0x0

    .line 178
    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 214
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .end local v20    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 182
    .end local v17    # "bIFrame":I
    .end local v23    # "h264byte":[B
    .end local v26    # "in":Ljava/io/FileInputStream;
    .end local v28    # "length":I
    .end local v30    # "result":I
    .end local v34    # "sizebyte":[B
    .end local v35    # "time":I
    .end local v37    # "timebyte":[B
    .end local v38    # "typebyte":[B
    .end local v39    # "wAndh":[I
    .end local v41    # "yuvbuff":[B
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :pswitch_1
    const/4 v5, 0x4

    :try_start_7
    new-array v0, v5, [B

    move-object/from16 v29, v0

    .line 183
    .local v29, "lengthBytes":[B
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v36, v0

    .line 184
    .local v36, "timeBytes":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 185
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 186
    invoke-static/range {v36 .. v36}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v35

    .line 187
    .restart local v35    # "time":I
    invoke-static/range {v29 .. v29}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->byteToInt([B)I

    move-result v28

    .line 188
    .restart local v28    # "length":I
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 189
    .local v19, "contentBytes":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 190
    const/4 v5, 0x0

    .line 191
    move-object/from16 v0, v19

    array-length v6, v0

    .line 190
    move-object/from16 v0, v19

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 192
    .local v10, "btp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 193
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v5, v0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->width:I

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v32, v5, v6

    .line 195
    .restart local v32    # "scaleX":F
    move-object/from16 v0, p0

    iget v5, v0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->width:I

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v33, v5, v6

    .line 196
    .restart local v33    # "scaleY":F
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 197
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 198
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v15, v9

    .line 197
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v5

    .line 210
    if-eqz v27, :cond_0

    .line 212
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 213
    const/16 v26, 0x0

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 214
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 210
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "e":Ljava/io/IOException;
    .end local v32    # "scaleX":F
    .end local v33    # "scaleY":F
    :cond_3
    if-eqz v27, :cond_4

    .line 212
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 213
    const/16 v26, 0x0

    .line 200
    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 214
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .end local v20    # "e":Ljava/io/IOException;
    :cond_4
    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 214
    .end local v10    # "btp":Landroid/graphics/Bitmap;
    .end local v19    # "contentBytes":[B
    .end local v26    # "in":Ljava/io/FileInputStream;
    .end local v28    # "length":I
    .end local v29    # "lengthBytes":[B
    .end local v35    # "time":I
    .end local v36    # "timeBytes":[B
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    .end local v20    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 207
    .end local v21    # "fType":I
    .end local v24    # "header":[B
    :catch_5
    move-exception v5

    .line 210
    :goto_5
    if-eqz v26, :cond_6

    .line 212
    :try_start_a
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 213
    const/16 v26, 0x0

    .line 220
    :cond_6
    :goto_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 214
    :catch_6
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 209
    .end local v20    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 210
    :goto_7
    if-eqz v26, :cond_7

    .line 212
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 213
    const/16 v26, 0x0

    .line 218
    :cond_7
    :goto_8
    throw v5

    .line 214
    :catch_7
    move-exception v20

    .line 215
    .restart local v20    # "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 209
    .end local v20    # "e":Ljava/io/IOException;
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 207
    .end local v26    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object/from16 v26, v27

    .end local v27    # "in":Ljava/io/FileInputStream;
    .restart local v26    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 240
    move v2, p0

    .line 241
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 242
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 246
    return-object v0

    .line 243
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 244
    shr-int/lit8 v2, v2, 0x8

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 98
    if-nez p2, :cond_1

    .line 99
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 100
    const v5, 0x7f030032

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    invoke-direct {v4, p0, v6}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;)V

    iput-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    .line 102
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    const v4, 0x7f080078

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 103
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    const v4, 0x7f08014d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->sum:Landroid/widget/TextView;

    .line 104
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    const v4, 0x7f08014c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 105
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    .line 106
    const v4, 0x7f08014b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 105
    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->playvideo:Landroid/widget/ImageView;

    .line 107
    iget-object v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    .line 108
    const v4, 0x7f080034

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 107
    iput-object v4, v5, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    .line 109
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->playvideo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->width:I

    iget v5, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->width:I

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 119
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->sum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mapBmp:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 123
    iget-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iget-object v4, v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_0
    return-object p2

    .line 111
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "time":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    iput-object v4, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->holder:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;

    goto :goto_0
.end method

.method public initBmp()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;-><init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V

    .line 77
    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$2;->start()V

    .line 78
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 129
    iput p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->mode:I

    .line 130
    return-void
.end method

.method public updateChild(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "childMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->childMap:Ljava/util/Map;

    .line 237
    return-void
.end method

.method public updateGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->groupList:Ljava/util/List;

    .line 233
    return-void
.end method
