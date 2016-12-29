.class Lcom/easyview/ndt/NDTService$ThreadNDT;
.super Ljava/lang/Thread;
.source "NDTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadNDT"
.end annotation


# instance fields
.field private AES128Key:Ljava/lang/String;

.field private DeviceHandle:I

.field private InitString:Ljava/lang/String;

.field private call_time:I

.field private client:Ljava/lang/String;

.field private deamon_run:Ljava/lang/Runnable;

.field private did:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private modify_passwd:Z

.field private name:Ljava/lang/String;

.field private netMode:I

.field private noAckCount:I

.field private passwd:Ljava/lang/String;

.field running:Z

.field private sub_data:[B

.field private sub_fail_count:I

.field private sub_ms:J

.field final synthetic this$0:Lcom/easyview/ndt/NDTService;


# direct methods
.method public constructor <init>(Lcom/easyview/ndt/NDTService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .param p5, "client"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 301
    iput-object p1, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->this$0:Lcom/easyview/ndt/NDTService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 285
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    .line 286
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 292
    iput v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->call_time:I

    .line 293
    iput-boolean v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->modify_passwd:Z

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    .line 297
    iput v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    .line 298
    iput v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->netMode:I

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_ms:J

    .line 300
    iput v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->handler:Landroid/os/Handler;

    .line 579
    new-instance v0, Lcom/easyview/ndt/NDTService$ThreadNDT$1;

    invoke-direct {v0, p0}, Lcom/easyview/ndt/NDTService$ThreadNDT$1;-><init>(Lcom/easyview/ndt/NDTService$ThreadNDT;)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->deamon_run:Ljava/lang/Runnable;

    .line 302
    iput-object p2, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->name:Ljava/lang/String;

    .line 304
    iput-object p4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    .line 305
    iput-object p5, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->client:Ljava/lang/String;

    .line 306
    const-string v0, "PPCS-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "EBGAEIBIKHJJGFJKEOGCFAEPHPMAHONDGJFPBKCPAJJMLFKBDBAGCJPBGOLKIKLKAJMJKFDOOFMOBECEJIMM"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    .line 309
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 311
    :cond_0
    const-string v0, "JASCH-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "EBGDEJBJKDJMGAJPEMGIFKEDHDNJHONEHEFOBLDEANJMLFKBDBAECPPHGILKIKLBBJNMKGDMPANPBMCNIF"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    .line 314
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 316
    :cond_1
    const-string v0, "BWLED-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "EFGHFDBIKIIMGMJGFMHJFGEMGENHHHMBHNFNAODNAGJIKIKFDDBLDEPCHGKDIFKJBMNJLFCOPMNDAL"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    .line 320
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    .line 322
    :cond_2
    const-string v0, "NDTService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---start---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iput v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/easyview/ndt/NDTService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->handler:Landroid/os/Handler;

    .line 325
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/ndt/NDTService$ThreadNDT;)I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    return v0
.end method

.method static synthetic access$1(Lcom/easyview/ndt/NDTService$ThreadNDT;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easyview/ndt/NDTService$ThreadNDT;I)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    return-void
.end method

.method private makeSubData()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 351
    new-instance v2, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 352
    .local v2, "packer":Lstruct/StructPacker;
    new-instance v1, Lcom/easyview/ndt/NDTService$NDTCommHeader;

    invoke-direct {v1}, Lcom/easyview/ndt/NDTService$NDTCommHeader;-><init>()V

    .line 353
    .local v1, "header":Lcom/easyview/ndt/NDTService$NDTCommHeader;
    const/16 v4, 0x444e

    iput-short v4, v1, Lcom/easyview/ndt/NDTService$NDTCommHeader;->symbol:S

    .line 354
    iput-byte v8, v1, Lcom/easyview/ndt/NDTService$NDTCommHeader;->size:B

    .line 355
    iput-byte v9, v1, Lcom/easyview/ndt/NDTService$NDTCommHeader;->type:B

    .line 356
    new-instance v3, Lcom/easyview/ndt/NDTService$NDTSubData;

    invoke-direct {v3}, Lcom/easyview/ndt/NDTService$NDTSubData;-><init>()V

    .line 357
    .local v3, "subData":Lcom/easyview/ndt/NDTService$NDTSubData;
    iget-object v4, v3, Lcom/easyview/ndt/NDTService$NDTSubData;->ClientName:Lstruct/CString;

    iget-object v5, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->client:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 358
    iget-object v4, v3, Lcom/easyview/ndt/NDTService$NDTSubData;->Password:Lstruct/CString;

    iget-object v5, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 360
    :try_start_0
    invoke-virtual {v2, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_data:[B

    .line 368
    const-string v4, "NDTService"

    const-string v5, "sub c:%s p:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->client:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public Save()V
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->this$0:Lcom/easyview/ndt/NDTService;

    iget-object v1, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    iget-object v4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->client:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easyview/ndt/NDTService;->SaveDID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public run()V
    .locals 30

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->makeSubData()V

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->running:Z

    .line 377
    const/16 v2, 0x100

    new-array v8, v2, [B

    .line 378
    .local v8, "Buf1":[B
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 379
    .local v10, "Size1":[I
    const/4 v2, 0x0

    array-length v3, v8

    aput v3, v10, v2

    .line 380
    const/4 v11, 0x0

    .line 381
    .local v11, "count":I
    const/16 v24, 0x0

    .line 382
    .local v24, "recv_count":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->running:Z

    if-nez v2, :cond_1

    .line 575
    const-string v2, "NDTService"

    const-string v3, "ThreadNDT run finish"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->modify_passwd:Z

    if-eqz v2, :cond_3

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->makeSubData()V

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-ltz v2, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 389
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    .line 391
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->modify_passwd:Z

    .line 393
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    if-lez v2, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    .line 397
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v13

    .line 400
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-gez v2, :cond_8

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_data:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_data:[B

    array-length v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_SendToByServer(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    .line 406
    const-string v2, "NDTService"

    const-string v3, "SendTo:%s h:%d %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v7, 0x5

    const/16 v29, 0xc

    move/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-gez v2, :cond_7

    .line 409
    new-instance v18, Lcom/ndt/ppcs_api/st_NDT_NetInfo;

    invoke-direct/range {v18 .. v18}, Lcom/ndt/ppcs_api/st_NDT_NetInfo;-><init>()V

    .line 410
    .local v18, "info":Lcom/ndt/ppcs_api/st_NDT_NetInfo;
    const/16 v2, 0x7d0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_NetworkDetect(Lcom/ndt/ppcs_api/st_NDT_NetInfo;I)I

    move-result v26

    .line 411
    .local v26, "ret":I
    const-string v2, "NDTService"

    const-string v3, "init detect ret:%d ack:%d wan:%s:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iget-byte v6, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->bServerHelloAck:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanIP:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v18

    iget v6, v0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "www.qq.com"

    invoke-static {v2}, Lcom/easyview/ndt/NDTService;->pingWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 415
    .local v25, "result":Ljava/lang/String;
    const-string v2, "NDT"

    const-string v3, "ping:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v28, 0x7530

    .line 417
    .local v28, "wait_ms":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    const/16 v3, -0x17

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    const/16 v3, -0x19

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    const/16 v3, -0x1a

    if-ne v2, v3, :cond_6

    .line 419
    :cond_5
    const/16 v28, 0x3e8

    .line 422
    :cond_6
    move/from16 v0, v28

    int-to-long v2, v0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 423
    :catch_1
    move-exception v13

    .line 425
    .restart local v13    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 430
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v18    # "info":Lcom/ndt/ppcs_api/st_NDT_NetInfo;
    .end local v25    # "result":Ljava/lang/String;
    .end local v26    # "ret":I
    .end local v28    # "wait_ms":I
    :cond_7
    const-string v2, "NDTService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NDT_PPCS_SendTo OK did:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    .line 433
    const/16 v24, 0x0

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_ms:J

    .line 440
    :cond_8
    const/16 v26, 0x0

    .line 441
    .restart local v26    # "ret":I
    const-string v2, "NDTService"

    const-string v3, "NDT_PPCS_RecvFrom ... h:%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v7, 0x6

    const/16 v29, 0xc

    move/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->deamon_run:Ljava/lang/Runnable;

    const-wide/32 v4, 0x9c40

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    const/4 v2, 0x0

    array-length v3, v8

    aput v3, v10, v2

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    const/16 v3, 0x7530

    invoke-static {v2, v8, v10, v3}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_RecvFrom(I[B[II)I

    move-result v26

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->deamon_run:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    const-string v2, "NDTService"

    const-string v3, "ret:%d h:%d %s size:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v7, 0x6

    const/16 v29, 0xc

    move/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aget v6, v10, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "NDTService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NDT_PPCS_RecvFrom() ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez v26, :cond_f

    .line 450
    new-instance v27, Lstruct/StructUnpacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v27

    invoke-direct {v0, v8, v2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 452
    .local v27, "up":Lstruct/StructUnpacker;
    :try_start_2
    new-instance v17, Lcom/easyview/ndt/NDTService$NDTCommHeader;

    invoke-direct/range {v17 .. v17}, Lcom/easyview/ndt/NDTService$NDTCommHeader;-><init>()V

    .line 453
    .local v17, "header":Lcom/easyview/ndt/NDTService$NDTCommHeader;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 454
    # getter for: Lcom/easyview/ndt/NDTService;->NDT_TYPE_SUB_FAIL:I
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$4()I

    move-result v2

    move-object/from16 v0, v17

    iget-byte v3, v0, Lcom/easyview/ndt/NDTService$NDTCommHeader;->type:B

    if-ne v2, v3, :cond_9

    move-object/from16 v0, v17

    iget-byte v2, v0, Lcom/easyview/ndt/NDTService$NDTCommHeader;->size:B

    const/16 v3, 0x10

    if-ge v2, v3, :cond_9

    .line 456
    const-string v2, "NDTService"

    const-string v3, "sub fail h:%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v7, 0x6

    const/16 v29, 0xc

    move/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v2, 0x258

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    .line 460
    :cond_9
    new-instance v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;

    invoke-direct {v14}, Lcom/easyview/ndt/NDTService$NDTEvent_1;-><init>()V

    .line 461
    .local v14, "evn":Lcom/easyview/ndt/NDTService$NDTEvent_1;
    const/4 v2, 0x0

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_type:I

    .line 462
    move-object/from16 v0, v17

    iget-byte v2, v0, Lcom/easyview/ndt/NDTService$NDTCommHeader;->size:B

    const/16 v3, 0x14

    if-lt v2, v3, :cond_e

    .line 464
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 476
    :cond_a
    :goto_1
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 477
    .local v12, "date":Ljava/util/Date;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v16, "f":Ljava/text/SimpleDateFormat;
    iget v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_time:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 479
    .local v20, "ms":J
    const-wide/16 v2, 0x3e8

    mul-long v20, v20, v2

    .line 480
    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 481
    const-string v2, "NDTService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recv NDT :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_type:I

    if-lez v2, :cond_b

    .line 484
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.easyview.ndt.action.MESSAGE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "DID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v2, "EventIndex"

    iget v3, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_index:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v2, "EventType"

    iget v3, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_type:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v2, "EventTime"

    iget v3, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_time:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v2, "EventValue"

    iget v3, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_value:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v2, "FileID"

    iget v3, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->file_id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->this$0:Lcom/easyview/ndt/NDTService;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/easyview/ndt/NDTService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_2

    .line 523
    .end local v12    # "date":Ljava/util/Date;
    .end local v14    # "evn":Lcom/easyview/ndt/NDTService$NDTEvent_1;
    .end local v16    # "f":Ljava/text/SimpleDateFormat;
    .end local v17    # "header":Lcom/easyview/ndt/NDTService$NDTCommHeader;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "ms":J
    :cond_b
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    .line 557
    .end local v27    # "up":Lstruct/StructUnpacker;
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-ltz v2, :cond_0

    .line 559
    add-int/lit8 v24, v24, 0x1

    .line 560
    const/16 v2, 0x3c

    move/from16 v0, v24

    if-le v0, v2, :cond_0

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_data:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_data:[B

    array-length v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->InitString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->AES128Key:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_SendToByServer(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 564
    .local v9, "Handle":I
    const-string v2, "NDT"

    const-string v3, "Send:%s h:%d->%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v7, 0x5

    const/16 v29, 0xc

    move/from16 v0, v29

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    rem-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    rem-int/lit16 v6, v9, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-eq v9, v2, :cond_d

    .line 567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 568
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    .line 569
    move-object/from16 v0, p0

    iput v9, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    .line 571
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 466
    .end local v9    # "Handle":I
    .restart local v14    # "evn":Lcom/easyview/ndt/NDTService$NDTEvent_1;
    .restart local v17    # "header":Lcom/easyview/ndt/NDTService$NDTCommHeader;
    .restart local v27    # "up":Lstruct/StructUnpacker;
    :cond_e
    :try_start_3
    move-object/from16 v0, v17

    iget-byte v2, v0, Lcom/easyview/ndt/NDTService$NDTCommHeader;->size:B

    const/16 v3, 0x10

    if-lt v2, v3, :cond_a

    .line 468
    new-instance v15, Lcom/easyview/ndt/NDTService$NDTEvent;

    invoke-direct {v15}, Lcom/easyview/ndt/NDTService$NDTEvent;-><init>()V

    .line 469
    .local v15, "evn0":Lcom/easyview/ndt/NDTService$NDTEvent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 470
    iget v2, v15, Lcom/easyview/ndt/NDTService$NDTEvent;->event_index:I

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_index:I

    .line 471
    iget v2, v15, Lcom/easyview/ndt/NDTService$NDTEvent;->event_time:I

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_time:I

    .line 472
    iget v2, v15, Lcom/easyview/ndt/NDTService$NDTEvent;->event_type:I

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_type:I

    .line 473
    iget v2, v15, Lcom/easyview/ndt/NDTService$NDTEvent;->event_value:I

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->event_value:I

    .line 474
    const/4 v2, 0x0

    iput v2, v14, Lcom/easyview/ndt/NDTService$NDTEvent_1;->file_id:I
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 519
    .end local v14    # "evn":Lcom/easyview/ndt/NDTService$NDTEvent_1;
    .end local v15    # "evn0":Lcom/easyview/ndt/NDTService$NDTEvent;
    .end local v17    # "header":Lcom/easyview/ndt/NDTService$NDTCommHeader;
    :catch_2
    move-exception v13

    .line 521
    .local v13, "e":Lstruct/StructException;
    invoke-virtual {v13}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_2

    .line 524
    .end local v13    # "e":Lstruct/StructException;
    .end local v27    # "up":Lstruct/StructUnpacker;
    :cond_f
    const/16 v2, -0x1b

    move/from16 v0, v26

    if-eq v0, v2, :cond_10

    const/16 v2, -0x1d

    move/from16 v0, v26

    if-ne v0, v2, :cond_11

    .line 526
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_c

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 530
    .local v22, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_ms:J

    sub-long v2, v22, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 533
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 536
    .end local v22    # "now":J
    :cond_11
    const/16 v2, -0x24

    move/from16 v0, v26

    if-ne v0, v2, :cond_12

    .line 538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 539
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 540
    :cond_12
    const/16 v2, -0x19

    move/from16 v0, v26

    if-ne v0, v2, :cond_13

    .line 542
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 543
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 544
    :cond_13
    const/16 v2, -0xf

    move/from16 v0, v26

    if-ne v0, v2, :cond_14

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 547
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 548
    :cond_14
    const/16 v2, -0x15

    move/from16 v0, v26

    if-ne v0, v2, :cond_15

    .line 550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v2}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 551
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    goto/16 :goto_3

    .line 553
    :cond_15
    const/4 v2, -0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    .line 555
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ndt/NDTService$ThreadNDT;->noAckCount:I

    goto/16 :goto_3
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 6
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    const-string v0, "NDTService"

    const-string v1, "set passwd %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iput v4, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->sub_fail_count:I

    .line 339
    iput-object p1, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->passwd:Ljava/lang/String;

    .line 340
    iput-boolean v5, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->modify_passwd:Z

    .line 341
    const-string v0, "NDTService"

    const-string v1, "set passwd %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->interrupt()V

    .line 344
    :cond_0
    return-void
.end method

.method public stopNDT()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 328
    const-string v0, "NDTService"

    const-string v1, "---stop--- %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->did:Ljava/lang/String;

    const/4 v4, 0x6

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->interrupt()V

    .line 330
    iput-boolean v6, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->running:Z

    .line 331
    iget v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/easyview/ndt/NDTService$ThreadNDT;->DeviceHandle:I

    invoke-static {v0}, Lcom/ndt/ppcs_api/NDT_API;->NDT_PPCS_CloseHandle(I)I

    .line 332
    :cond_0
    return-void
.end method
