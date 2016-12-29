.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;
.super Ljava/lang/Thread;
.source "MediaViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# instance fields
.field private avi:Lobject/p2pipcam/nativecaller/Avi;

.field private decoder:Landroid/media/MediaCodec;

.field private is_seek:Z

.field seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Landroid/view/Surface;)V
    .locals 1
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 147
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->is_seek:Z

    .line 368
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$1;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 148
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->surface:Landroid/view/Surface;

    .line 149
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->is_seek:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pipcam/nativecaller/Avi;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->is_seek:Z

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaViewerActivity;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    return-object v0
.end method


# virtual methods
.method public play()V
    .locals 38
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 153
    const-string v25, "video/avc"

    .line 154
    .local v25, "mime":Ljava/lang/String;
    new-instance v3, Lobject/p2pipcam/nativecaller/Avi;

    invoke-direct {v3}, Lobject/p2pipcam/nativecaller/Avi;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lobject/p2pipcam/nativecaller/Avi;->Open(Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getWidth()I

    move-result v33

    .line 157
    .local v33, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getHeight()I

    move-result v19

    .line 158
    .local v19, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getBitRate()I

    move-result v10

    .line 159
    .local v10, "bitrate":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getFrameRate()I

    move-result v18

    .line 160
    .local v18, "framerate":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v32

    .line 161
    .local v32, "total":I
    if-nez v32, :cond_0

    .line 163
    const-string v3, "Media"

    const-string v5, "avi file error:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    move-object/from16 v35, v0

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v9, v34

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    new-instance v5, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$2;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;)V

    invoke-virtual {v3, v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->Close()V

    .line 177
    const-wide/16 v34, 0x3e8

    :try_start_0
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v16

    .line 180
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v3, "Media"

    const-string v5, "avi (%d,%d) fr:%d total:%sS"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v34, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v9, v34

    const/16 v34, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v9, v34

    const/16 v34, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v9, v34

    const/16 v34, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v9, v34

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, v25

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v24

    .line 186
    .local v24, "mediaFormat":Landroid/media/MediaFormat;
    const-string v3, "file-format"

    const-string v5, "video/avi"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "use-arbitrary-mode"

    const-wide/16 v34, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v34

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 189
    const-string v3, "max-input-size"

    const-wide/32 v34, 0x7a120

    move-object/from16 v0, v24

    move-wide/from16 v1, v34

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 190
    const/16 v3, 0x780

    move/from16 v0, v33

    if-ne v0, v3, :cond_1

    .line 192
    const/16 v3, 0x17

    new-array v12, v3, [B

    const/4 v3, 0x3

    const/4 v5, 0x1

    aput-byte v5, v12, v3

    const/4 v3, 0x4

    const/16 v5, 0x67

    aput-byte v5, v12, v3

    const/4 v3, 0x5

    const/16 v5, 0x4d

    aput-byte v5, v12, v3

    const/4 v3, 0x7

    const/16 v5, 0x2a

    aput-byte v5, v12, v3

    const/16 v3, 0x8

    const/16 v5, -0x6b

    aput-byte v5, v12, v3

    const/16 v3, 0x9

    const/16 v5, -0x48

    aput-byte v5, v12, v3

    const/16 v3, 0xa

    const/16 v5, 0x1e

    aput-byte v5, v12, v3

    const/16 v3, 0xc

    const/16 v5, -0x77

    aput-byte v5, v12, v3

    const/16 v3, 0xd

    .line 193
    const/4 v5, -0x7

    aput-byte v5, v12, v3

    const/16 v3, 0xe

    const/16 v5, 0x50

    aput-byte v5, v12, v3

    const/16 v3, 0x12

    const/4 v5, 0x1

    aput-byte v5, v12, v3

    const/16 v3, 0x13

    const/16 v5, 0x68

    aput-byte v5, v12, v3

    const/16 v3, 0x14

    const/16 v5, -0x12

    aput-byte v5, v12, v3

    const/16 v3, 0x15

    const/16 v5, 0x3c

    aput-byte v5, v12, v3

    const/16 v3, 0x16

    const/16 v5, -0x80

    aput-byte v5, v12, v3

    .line 194
    .local v12, "csd_info_1920":[B
    const-string v3, "csd-0"

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 203
    .end local v12    # "csd_info_1920":[B
    :goto_1
    move/from16 v0, v32

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v14, v3

    .line 204
    .local v14, "duration":J
    move/from16 v28, v32

    .line 205
    .local v28, "sec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    new-instance v5, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v5, v0, v14, v15, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$3;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;JI)V

    invoke-virtual {v3, v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    :try_start_1
    invoke-static/range {v25 .. v25}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->surface:Landroid/view/Surface;

    const/4 v9, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v3, v0, v5, v9, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    if-nez v3, :cond_2

    .line 222
    const-string v3, "Media"

    const-string v5, "Can\'t find video info!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    .end local v14    # "duration":J
    .end local v28    # "sec":I
    :cond_1
    const/16 v3, 0x16

    new-array v3, v3, [B

    const/4 v5, 0x3

    const/4 v9, 0x1

    aput-byte v9, v3, v5

    const/4 v5, 0x4

    const/16 v9, 0x67

    aput-byte v9, v3, v5

    const/4 v5, 0x5

    const/16 v9, 0x4d

    aput-byte v9, v3, v5

    const/4 v5, 0x7

    const/16 v9, 0x1f

    aput-byte v9, v3, v5

    const/16 v5, 0x8

    const/16 v9, -0x6b

    aput-byte v9, v3, v5

    const/16 v5, 0x9

    const/16 v9, -0x48

    aput-byte v9, v3, v5

    const/16 v5, 0xa

    const/16 v9, 0x14

    aput-byte v9, v3, v5

    const/16 v5, 0xb

    const/4 v9, 0x1

    aput-byte v9, v3, v5

    const/16 v5, 0xc

    .line 198
    const/16 v9, 0x6e

    aput-byte v9, v3, v5

    const/16 v5, 0xd

    const/16 v9, 0x40

    aput-byte v9, v3, v5

    const/16 v5, 0x11

    const/4 v9, 0x1

    aput-byte v9, v3, v5

    const/16 v5, 0x12

    const/16 v9, 0x68

    aput-byte v9, v3, v5

    const/16 v5, 0x13

    const/16 v9, -0x12

    aput-byte v9, v3, v5

    const/16 v5, 0x14

    const/16 v9, 0x3c

    aput-byte v9, v3, v5

    const/16 v5, 0x15

    const/16 v9, -0x80

    aput-byte v9, v3, v5

    goto/16 :goto_1

    .line 215
    .restart local v14    # "duration":J
    .restart local v28    # "sec":I
    :catch_1
    move-exception v17

    .line 217
    .local v17, "e1":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 226
    .end local v17    # "e1":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 230
    .local v21, "inputBuffers":[Ljava/nio/ByteBuffer;
    const-string v3, "Media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "inputBuffers:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    array-length v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 233
    .local v27, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v20, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 234
    .local v20, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v23, 0x0

    .line 235
    .local v23, "isEOS":Z
    const/16 v22, 0x0

    .line 236
    .local v22, "isAbort":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 237
    .local v30, "startMs":J
    const/4 v4, -0x1

    .line 238
    .local v4, "inIndex":I
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->Close()V

    .line 360
    :cond_4
    const-string v3, "Media"

    const-string v5, "Play Finish"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    const-wide/16 v34, 0x3e8

    :try_start_2
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 242
    :catch_2
    move-exception v16

    .line 244
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 248
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :cond_6
    if-nez v23, :cond_9

    .line 249
    if-gez v4, :cond_7

    if-nez v22, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v34, 0x2710

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 252
    const-string v3, "Media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "inIndex:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_7
    if-ltz v4, :cond_9

    .line 265
    aget-object v11, v21, v4

    .line 266
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->Frame()[B

    move-result-object v13

    .line 267
    .local v13, "data":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->frameSize()I

    move-result v6

    .line 268
    .local v6, "sampleSize":I
    if-lez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 269
    :cond_8
    const-string v3, "Media"

    const-string v5, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 271
    .end local v6    # "sampleSize":I
    const/4 v4, -0x1

    .line 272
    const/16 v23, 0x1

    .line 308
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "data":[B
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v34, 0x2710

    move-object/from16 v0, v20

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v26

    .line 309
    .local v26, "outIndex":I
    const-string v3, "Media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "outIndex:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    packed-switch v26, :pswitch_data_0

    .line 322
    aget-object v11, v27, v26

    .line 331
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    :goto_6
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 331
    sub-long v36, v36, v30

    cmp-long v3, v34, v36

    if-gtz v3, :cond_d

    .line 340
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 347
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    :goto_8
    :pswitch_0
    move-object/from16 v0, v20

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    .line 348
    const-string v3, "Media"

    const-string v5, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 274
    .end local v26    # "outIndex":I
    .restart local v6    # "sampleSize":I
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "data":[B
    :cond_a
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_b

    .line 279
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 281
    aput-object v11, v21, v4

    .line 283
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v11, v13, v3, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->isAudioFrame()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/media/AudioTrack;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v5, v6}, Landroid/media/AudioTrack;->write([BII)I

    goto/16 :goto_5

    .line 288
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->Duration()I

    move-result v3

    int-to-long v7, v3

    .line 289
    .local v7, "ts":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 290
    const-wide/16 v34, 0x3e8

    div-long v34, v7, v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v29, v0

    .line 291
    .local v29, "second":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    new-instance v5, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$4;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v5, v0, v7, v8, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread$4;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;JI)V

    invoke-virtual {v3, v5}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    const/4 v4, -0x1

    goto/16 :goto_5

    .line 312
    .end local v6    # "sampleSize":I
    .end local v7    # "ts":J
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "data":[B
    .end local v29    # "second":I
    .restart local v26    # "outIndex":I
    :pswitch_1
    const-string v3, "Media"

    const-string v5, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 314
    goto :goto_8

    .line 316
    :pswitch_2
    const-string v3, "Media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "New format "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 334
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d
    const-wide/16 v34, 0xa

    :try_start_3
    invoke-static/range {v34 .. v35}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_6

    .line 335
    :catch_3
    move-exception v16

    .line 336
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 310
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->sb_progress:Landroid/widget/SeekBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 365
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->play()V

    .line 366
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaViewerActivity;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->access$8(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method
