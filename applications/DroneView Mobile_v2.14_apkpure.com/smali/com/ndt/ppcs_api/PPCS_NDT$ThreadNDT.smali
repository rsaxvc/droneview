.class Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;
.super Ljava/lang/Thread;
.source "PPCS_NDT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ndt/ppcs_api/PPCS_NDT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadNDT"
.end annotation


# instance fields
.field private AES128Key:Ljava/lang/String;

.field private DeviceHandle:I

.field private InitString:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private netMode:I

.field private noAckCount:I

.field running:Z

.field private sub_ms:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 243
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->InitString:Ljava/lang/String;

    .line 244
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    .line 248
    iput v1, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    .line 249
    iput v1, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->netMode:I

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->sub_ms:J

    .line 252
    iput-object p1, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    .line 253
    const-string v0, "PPCS-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->InitString:Ljava/lang/String;

    .line 256
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 258
    :cond_0
    const-string v0, "JASCH-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "EBGDEJBJKDJMGAJPEMGIFKEDHDNJHONEHEFOBLDEANJMLFKBDBAECPPHGILKIKLBBJNMKGDMPANPBMCNIF"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->InitString:Ljava/lang/String;

    .line 261
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 263
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 275
    new-instance v21, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 276
    .local v21, "packer":Lstruct/StructPacker;
    new-instance v17, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;

    invoke-direct/range {v17 .. v17}, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;-><init>()V

    .line 277
    .local v17, "header":Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;
    const/16 v2, 0x444e

    move-object/from16 v0, v17

    iput-short v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->symbol:S

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-byte v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->size:B

    .line 279
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-byte v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->type:B

    .line 280
    new-instance v25, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;

    invoke-direct/range {v25 .. v25}, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;-><init>()V

    .line 281
    .local v25, "subData":Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTSubData;->ClientName:Lstruct/CString;

    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 283
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 284
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getSaveLogFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/ndt/LogUtil;->writeLogToFile(Ljava/lang/Boolean;)V

    .line 294
    :cond_0
    const-string v2, "NDT"

    const-string v5, "---start--- %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v9, 0x6

    const/16 v10, 0xb

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {v21 .. v21}, Lstruct/StructPacker;->toArray()[B

    move-result-object v3

    .line 300
    .local v3, "data":[B
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->running:Z

    .line 301
    const/16 v2, 0x100

    new-array v11, v2, [B

    .line 302
    .local v11, "Buf1":[B
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 303
    .local v13, "Size1":[I
    const/4 v2, 0x0

    array-length v5, v11

    aput v5, v13, v2

    .line 304
    const/4 v14, 0x0

    .line 305
    .local v14, "count":I
    const/16 v22, 0x0

    .line 306
    .local v22, "recv_count":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->running:Z

    if-nez v2, :cond_2

    .line 465
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ThreadNDT run finish"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 285
    .end local v3    # "data":[B
    .end local v11    # "Buf1":[B
    .end local v13    # "Size1":[I
    .end local v14    # "count":I
    .end local v22    # "recv_count":I
    :catch_0
    move-exception v15

    .line 287
    .local v15, "e":Lstruct/StructException;
    invoke-virtual {v15}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v15    # "e":Lstruct/StructException;
    .restart local v3    # "data":[B
    .restart local v11    # "Buf1":[B
    .restart local v13    # "Size1":[I
    .restart local v14    # "count":I
    .restart local v22    # "recv_count":I
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-gez v2, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->InitString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_SendToByServer(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    .line 310
    const-string v2, "NDT"

    const-string v5, "SendTo:%s h:%d %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v9, 0x5

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-gez v2, :cond_5

    .line 313
    new-instance v18, Lcom/ndt/ppcs_api/st_NDT_NetInfo;

    invoke-direct/range {v18 .. v18}, Lcom/ndt/ppcs_api/st_NDT_NetInfo;-><init>()V

    .line 314
    .local v18, "info":Lcom/ndt/ppcs_api/st_NDT_NetInfo;
    const/16 v2, 0x7d0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_NetworkDetect(Lcom/ndt/ppcs_api/st_NDT_NetInfo;I)I

    move-result v24

    .line 315
    .local v24, "ret":I
    const-string v2, "NDT"

    const-string v5, "init detect ret:%d ack:%d wan:%s:%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v18

    iget-byte v8, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->bServerHelloAck:B

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanIP:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, v18

    iget v8, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanPort:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "www.baidu.com"

    invoke-static {v2}, Lcom/ndt/ppcs_api/PPCS_NDT;->pingWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 317
    .local v23, "result":Ljava/lang/String;
    const-string v2, "NDT"

    const-string v5, "ping:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "www.qq.com"

    invoke-static {v2}, Lcom/ndt/ppcs_api/PPCS_NDT;->pingWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 319
    const-string v2, "NDT"

    const-string v5, "ping:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v27, 0x7530

    .line 321
    .local v27, "wait_ms":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    const/16 v5, -0x19

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    const/16 v5, -0x1a

    if-ne v2, v5, :cond_4

    .line 323
    :cond_3
    const/16 v27, 0x3e8

    .line 326
    :cond_4
    move/from16 v0, v27

    int-to-long v5, v0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 327
    :catch_1
    move-exception v15

    .line 329
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 334
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "info":Lcom/ndt/ppcs_api/st_NDT_NetInfo;
    .end local v23    # "result":Ljava/lang/String;
    .end local v24    # "ret":I
    .end local v27    # "wait_ms":I
    :cond_5
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NDT_PPCS_SendTo OK did:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    .line 336
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$2()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->netMode:I

    .line 337
    const/16 v22, 0x0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->sub_ms:J

    .line 355
    :cond_6
    const/16 v24, 0x0

    .line 356
    .restart local v24    # "ret":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    const/16 v5, 0x7530

    invoke-static {v2, v11, v13, v5}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_RecvFrom(I[B[II)I

    move-result v24

    .line 361
    const-string v2, "NDT"

    const-string v5, "ret:%d h:%d %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v9, 0x6

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NDT_PPCS_RecvFrom() ret = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez v24, :cond_e

    .line 365
    new-instance v26, Lstruct/StructUnpacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v26

    invoke-direct {v0, v11, v2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 367
    .local v26, "up":Lstruct/StructUnpacker;
    :try_start_2
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 368
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recv NDT:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-byte v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->type:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-byte v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->size:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v4

    check-cast v4, Lcom/easyview/camera/EVBaseCamera;

    .line 372
    .local v4, "camera":Lcom/easyview/camera/EVBaseCamera;
    if-eqz v4, :cond_9

    .line 373
    const/4 v2, 0x0

    sput v2, Lcom/ndt/ppcs_api/PPCS_NDT;->lowFlowCount:I

    .line 374
    new-instance v16, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;

    invoke-direct/range {v16 .. v16}, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;-><init>()V

    .line 375
    .local v16, "evn":Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    .line 376
    move-object/from16 v0, v17

    iget-byte v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTCommHeader;->size:B

    const/16 v5, 0x10

    if-lt v2, v5, :cond_9

    .line 378
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 379
    move-object/from16 v0, v16

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_index:I

    if-ltz v2, :cond_7

    move-object/from16 v0, v16

    iget v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_index:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_time:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_time:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_value:I

    invoke-virtual/range {v4 .. v9}, Lcom/easyview/camera/EVBaseCamera;->OnEventNotify(IIIII)V

    .line 380
    :cond_7
    move-object/from16 v0, v16

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    const/16 v5, 0x22

    if-eq v2, v5, :cond_8

    move-object/from16 v0, v16

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    const/16 v5, 0x28

    if-ne v2, v5, :cond_d

    .line 382
    :cond_8
    const-string v2, "NDT"

    const-string v5, "start camera %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v9, 0x6

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v4}, Lcom/easyview/camera/EVBaseCamera;->Start()V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_2

    .line 405
    .end local v4    # "camera":Lcom/easyview/camera/EVBaseCamera;
    .end local v16    # "evn":Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;
    :cond_9
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    .line 439
    .end local v26    # "up":Lstruct/StructUnpacker;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->netMode:I

    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->netMode:I
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$2()I

    move-result v5

    if-eq v2, v5, :cond_b

    .line 441
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-ltz v2, :cond_b

    .line 443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 444
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    .line 447
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-ltz v2, :cond_1

    .line 449
    add-int/lit8 v22, v22, 0x1

    .line 450
    const/16 v2, 0x3c

    move/from16 v0, v22

    if-le v0, v2, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    array-length v7, v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->InitString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->AES128Key:Ljava/lang/String;

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_SendToByServer(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 454
    .local v12, "Handle":I
    const-string v2, "NDT"

    const-string v5, "Send:%s h:%d->%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v9, 0x5

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    rem-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    rem-int/lit16 v8, v12, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-eq v12, v2, :cond_c

    .line 457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 458
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    .line 459
    move-object/from16 v0, p0

    iput v12, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    .line 461
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 387
    .end local v12    # "Handle":I
    .restart local v4    # "camera":Lcom/easyview/camera/EVBaseCamera;
    .restart local v16    # "evn":Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;
    .restart local v26    # "up":Lstruct/StructUnpacker;
    :cond_d
    :try_start_3
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->get_event_notification(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 389
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recv event:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_time:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    iget v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_type:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_value:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;->event_time:I

    invoke-static {v2, v4, v5, v6, v7}, Lobject/p2pipcam/utils/Pub;->showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 401
    .end local v4    # "camera":Lcom/easyview/camera/EVBaseCamera;
    .end local v16    # "evn":Lcom/ndt/ppcs_api/PPCS_NDT$NDTEvent;
    :catch_2
    move-exception v15

    .line 403
    .local v15, "e":Lstruct/StructException;
    invoke-virtual {v15}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_2

    .line 406
    .end local v15    # "e":Lstruct/StructException;
    .end local v26    # "up":Lstruct/StructUnpacker;
    :cond_e
    const/16 v2, -0x1b

    move/from16 v0, v24

    if-eq v0, v2, :cond_f

    const/16 v2, -0x1d

    move/from16 v0, v24

    if-ne v0, v2, :cond_10

    .line 408
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    .line 409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    const/4 v5, 0x4

    if-le v2, v5, :cond_a

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 412
    .local v19, "now":J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->sub_ms:J

    sub-long v5, v19, v5

    const-wide/16 v7, 0x7530

    cmp-long v2, v5, v7

    if-lez v2, :cond_a

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 415
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 418
    .end local v19    # "now":J
    :cond_10
    const/16 v2, -0x24

    move/from16 v0, v24

    if-ne v0, v2, :cond_11

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 421
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 422
    :cond_11
    const/16 v2, -0x19

    move/from16 v0, v24

    if-ne v0, v2, :cond_12

    .line 424
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 425
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 426
    :cond_12
    const/16 v2, -0xf

    move/from16 v0, v24

    if-ne v0, v2, :cond_13

    .line 428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 429
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 430
    :cond_13
    const/16 v2, -0x15

    move/from16 v0, v24

    if-ne v0, v2, :cond_14

    .line 432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 433
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 435
    :cond_14
    const/4 v2, -0x3

    move/from16 v0, v24

    if-ne v0, v2, :cond_a

    .line 437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->noAckCount:I

    goto/16 :goto_3
.end method

.method public stopNDT()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    # getter for: Lcom/ndt/ppcs_api/PPCS_NDT;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ndt/ppcs_api/PPCS_NDT;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop NDT NDT_PPCS_CloseHandle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "NDT"

    const-string v1, "---stop--- %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->did:Ljava/lang/String;

    const/4 v4, 0x6

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->interrupt()V

    .line 269
    iput-boolean v6, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->running:Z

    .line 270
    iget v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/ndt/ppcs_api/PPCS_NDT$ThreadNDT;->DeviceHandle:I

    invoke-static {v0}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 271
    :cond_0
    return-void
.end method
