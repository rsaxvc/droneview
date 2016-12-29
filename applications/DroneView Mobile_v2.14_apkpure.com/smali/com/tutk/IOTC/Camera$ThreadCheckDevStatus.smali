.class Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadCheckDevStatus"
.end annotation


# instance fields
.field private m_bIsRunning:Z

.field private m_waitObjForCheckDevStatus:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method private constructor <init>(Lcom/tutk/IOTC/Camera;)V
    .locals 1

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_bIsRunning:Z

    .line 1326
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_waitObjForCheckDevStatus:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;)V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;-><init>(Lcom/tutk/IOTC/Camera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 1339
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1341
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_bIsRunning:Z

    .line 1342
    new-instance v4, Lcom/tutk/IOTC/St_SInfo;

    invoke-direct {v4}, Lcom/tutk/IOTC/St_SInfo;-><init>()V

    .line 1343
    .local v4, "stSInfo":Lcom/tutk/IOTC/St_SInfo;
    const/4 v3, 0x0

    .line 1345
    .local v3, "ret":I
    :goto_0
    iget-boolean v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_bIsRunning:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1357
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_bIsRunning:Z

    if-nez v5, :cond_2

    .line 1424
    const-string v5, "IOTCamera"

    const-string v6, "===ThreadCheckDevStatus exit==="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void

    .line 1349
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :try_start_1
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 1349
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1359
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 1361
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    invoke-static {v5, v4}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Check(ILcom/tutk/IOTC/St_SInfo;)I

    move-result v3

    .line 1363
    if-ltz v3, :cond_5

    .line 1365
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSessionMode:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$5(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    iget-byte v6, v4, Lcom/tutk/IOTC/St_SInfo;->Mode:B

    if-eq v5, v6, :cond_3

    .line 1367
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    iget-byte v6, v4, Lcom/tutk/IOTC/St_SInfo;->Mode:B

    invoke-static {v5, v6}, Lcom/tutk/IOTC/Camera;->access$6(Lcom/tutk/IOTC/Camera;I)V

    .line 1368
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSessionMode:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$5(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1370
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    iput v9, v5, Lcom/tutk/IOTC/Camera;->videoQuality:I

    .line 1415
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_waitObjForCheckDevStatus:Ljava/lang/Object;

    monitor-enter v6

    .line 1417
    :try_start_3
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_waitObjForCheckDevStatus:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1415
    :goto_3
    :try_start_4
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1371
    :cond_4
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    const/4 v6, 0x4

    iput v6, v5, Lcom/tutk/IOTC/Camera;->videoQuality:I

    goto :goto_2

    .line 1382
    :cond_5
    const/16 v5, -0x17

    if-eq v3, v5, :cond_6

    .line 1383
    const/16 v5, -0xd

    if-ne v3, v5, :cond_7

    .line 1385
    :cond_6
    const-string v5, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOTC_Session_Check("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v7}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1386
    const-string v7, ") timeout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1385
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1391
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v5

    .line 1392
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1393
    .local v2, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1394
    const/4 v6, 0x7

    .line 1393
    invoke-interface {v2, v5, v6}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1389
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1400
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_7
    const-string v5, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOTC_Session_Check("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v7}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1401
    const-string v7, ") Failed return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1400
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1406
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v5

    .line 1407
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1408
    .restart local v2    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v5, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-interface {v2, v5, v9}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1404
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1418
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :catch_1
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 1330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_bIsRunning:Z

    .line 1332
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_waitObjForCheckDevStatus:Ljava/lang/Object;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->m_waitObjForCheckDevStatus:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1332
    monitor-exit v1

    .line 1335
    return-void

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
