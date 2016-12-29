.class Lcom/tutk/IOTC/Camera$ThreadStartDev;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadStartDev"
.end annotation


# instance fields
.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field private mIsRunning:Z

.field private mWaitObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 1
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mIsRunning:Z

    .line 1173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mWaitObject:Ljava/lang/Object;

    .line 1176
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 1177
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1198
    iput-boolean v14, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mIsRunning:Z

    .line 1200
    const/4 v7, -0x1

    .line 1202
    .local v7, "avIndex":I
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 1319
    :cond_1
    const-string v0, "IOTCamera"

    const-string v1, "===ThreadStartDev exit==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return-void

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    if-gez v0, :cond_3

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :try_start_1
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1207
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1210
    :catch_0
    move-exception v8

    .line 1211
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1218
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_4

    .line 1227
    new-array v5, v14, [J

    .line 1228
    .local v5, "nServType":[J
    const-wide/16 v0, -0x1

    aput-wide v0, v5, v13

    .line 1230
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getViewAcc()Ljava/lang/String;

    move-result-object v1

    .line 1231
    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$AVChannel;->getViewPwd()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1e

    .line 1232
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v6}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v6

    .line 1230
    invoke-static/range {v0 .. v6}, Lcom/tutk/IOTC/AVAPIs;->avClientStart(ILjava/lang/String;Ljava/lang/String;J[JI)I

    move-result v7

    .line 1233
    const-string v0, "IOTCamera"

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avClientStart("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$AVChannel;->getViewAcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1236
    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$AVChannel;->getViewPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in Session("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1237
    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v2}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    aget-wide v11, v5, v13

    .line 1240
    .local v11, "servType":J
    if-ltz v7, :cond_5

    .line 1242
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v0, v7}, Lcom/tutk/IOTC/Camera$AVChannel;->setAVIndex(I)V

    .line 1243
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v0, v11, v12}, Lcom/tutk/IOTC/Camera$AVChannel;->setServiceType(J)V

    .line 1245
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1248
    .local v10, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1249
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    .line 1250
    const/4 v2, 0x2

    .line 1248
    invoke-interface {v10, v0, v1, v2}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V

    .line 1245
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1220
    .end local v5    # "nServType":[J
    .end local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    .end local v11    # "servType":J
    :cond_4
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1221
    .restart local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1222
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    .line 1221
    invoke-interface {v10, v0, v1, v13}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V

    .line 1218
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1255
    .end local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    .restart local v5    # "nServType":[J
    .restart local v11    # "servType":J
    :cond_5
    const/16 v0, -0x4e30

    if-eq v7, v0, :cond_6

    .line 1256
    const/16 v0, -0x4e2b

    if-ne v7, v0, :cond_7

    .line 1258
    :cond_6
    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1261
    .restart local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1262
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    .line 1263
    const/4 v2, 0x7

    .line 1261
    invoke-interface {v10, v0, v1, v2}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V

    .line 1258
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1281
    .end local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_7
    const/16 v0, -0x4e29

    if-ne v7, v0, :cond_8

    .line 1283
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1286
    .restart local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1287
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    .line 1288
    const/16 v2, 0x8

    .line 1286
    invoke-interface {v10, v0, v1, v2}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V

    .line 1283
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1293
    .end local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_8
    const/16 v0, -0x17

    if-ne v7, v0, :cond_9

    .line 1295
    const/4 v9, 0x0

    :goto_5
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1298
    .restart local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1299
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    .line 1300
    const/4 v2, 0x3

    .line 1298
    invoke-interface {v10, v0, v1, v2}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V

    .line 1295
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1308
    .end local v10    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1309
    :try_start_4
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mWaitObject:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1308
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1311
    :catch_1
    move-exception v8

    .line 1312
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopThread()V
    .locals 3

    .prologue
    .line 1181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mIsRunning:Z

    .line 1183
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1184
    const-string v0, "IOTCamera"

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avClientExit("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v2}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1186
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tutk/IOTC/AVAPIs;->avClientExit(II)V

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadStartDev;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1190
    monitor-exit v1

    .line 1193
    return-void

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
