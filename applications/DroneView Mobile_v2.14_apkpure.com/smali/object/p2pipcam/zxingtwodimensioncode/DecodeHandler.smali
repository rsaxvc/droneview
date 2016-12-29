.class final Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 47
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 48
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    .line 49
    return-void
.end method

.method private decode([BII)V
    .locals 19
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 78
    .local v10, "start":J
    const/4 v7, 0x0

    .line 81
    .local v7, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v8, v15, [B

    .line 82
    .local v8, "rotatedData":[B
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    move/from16 v0, p3

    if-lt v14, v0, :cond_0

    .line 86
    move/from16 v12, p2

    .line 87
    .local v12, "tmp":I
    move/from16 p2, p3

    .line 88
    move/from16 p3, v12

    .line 90
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v15

    .line 91
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v8, v0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->buildLuminanceSource([BII)Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;

    move-result-object v9

    .line 92
    .local v9, "source":Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;
    if-nez v9, :cond_2

    .line 93
    const-string v15, "tag"

    const-string v16, "source===nul========"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0601a8

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 97
    const/16 v17, 0x0

    .line 94
    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 97
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v15}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->finish()V

    .line 127
    :goto_1
    return-void

    .line 83
    .end local v9    # "source":Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;
    .end local v12    # "tmp":I
    :cond_0
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_2
    move/from16 v0, p2

    if-lt v13, v0, :cond_1

    .line 82
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    :cond_1
    mul-int v15, v13, p3

    add-int v15, v15, p3

    sub-int/2addr v15, v14

    add-int/lit8 v15, v15, -0x1

    mul-int v16, v14, p2

    add-int v16, v16, v13

    aget-byte v16, p1, v16

    aput-byte v16, v8, v15

    .line 83
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 101
    .end local v13    # "x":I
    .restart local v9    # "source":Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;
    .restart local v12    # "tmp":I
    :cond_2
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v15, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v15, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v15}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 103
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 110
    :goto_3
    if-eqz v7, :cond_3

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 112
    .local v4, "end":J
    sget-object v15, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Found barcode ("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v4, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ms):\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 113
    invoke-virtual {v7}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 112
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v15}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v15

    .line 115
    const v16, 0x7f080006

    .line 114
    move/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 116
    .local v6, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v15, "barcode_bitmap"

    .line 118
    invoke-virtual {v9}, Lobject/p2pipcam/zxingtwodimensioncode/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 117
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v6, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 104
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "end":J
    .end local v6    # "message":Landroid/os/Message;
    :catch_0
    move-exception v15

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_3

    .line 106
    :catchall_0
    move-exception v15

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 108
    throw v15

    .line 123
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->activity:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v15}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v15

    .line 124
    const v16, 0x7f080005

    .line 123
    invoke-static/range {v15 .. v16}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 125
    .restart local v6    # "message":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 56
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x7f080004 -> :sswitch_0
        0x7f08000a -> :sswitch_1
    .end sparse-switch
.end method
