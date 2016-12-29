.class Lcom/tutk/IOTC/Camera$ThreadConnectDev;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadConnectDev"
.end annotation


# instance fields
.field private mIsRunning:Z

.field private m_waitForStopConnectThread:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;I)V
    .locals 1
    .param p2, "connType"    # I

    .prologue
    .line 999
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->mIsRunning:Z

    .line 997
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    .line 1000
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1028
    const/16 v16, 0x0

    .line 1030
    .local v16, "nRetryForIOTC_Conn":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->mIsRunning:Z

    .line 1032
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1033
    .local v3, "c0":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->mIsRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    if-ltz v19, :cond_1

    .line 1165
    :cond_0
    const-string v19, "IOTCamera"

    const-string v20, "===ThreadConnectDev exit==="

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1035
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1037
    .local v5, "c1":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_2

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    if-ltz v19, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close(I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-static/range {v19 .. v20}, Lcom/tutk/IOTC/Camera;->access$1(Lcom/tutk/IOTC/Camera;I)V

    .line 1051
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 1053
    .local v7, "c2":J
    const-string v19, "IOTCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1054
    const-string v21, "[CONNECTION_STATE_CONNECTING]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v7, v5

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1055
    const-string v21, "[total]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v7, v3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1053
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v20, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/tutk/IOTC/Camera;->access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUID(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/tutk/IOTC/Camera;->access$1(Lcom/tutk/IOTC/Camera;I)V

    .line 1070
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 1072
    .local v9, "c4":J
    const-string v19, "IOTCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "[c4 - c2]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v9, v7

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    if-ltz v19, :cond_5

    .line 1076
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_4

    .line 1082
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 1084
    .local v11, "c5":J
    const-string v19, "IOTCamera"

    .line 1085
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1086
    const-string v21, "[CONNECTION_STATE_CONNECTED]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1087
    sub-long v21, v11, v9

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "[total]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v11, v7

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1088
    const-string v21, "[size]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1085
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1084
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 1091
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notify()V

    .line 1090
    monitor-exit v20

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 1038
    .end local v7    # "c2":J
    .end local v9    # "c4":J
    .end local v11    # "c5":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1039
    .local v15, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    .line 1040
    const/16 v20, 0x0

    .line 1039
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1037
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1048
    .end local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_3
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_Stop()V

    goto/16 :goto_2

    .line 1077
    .restart local v7    # "c2":J
    .restart local v9    # "c4":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1078
    .restart local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    .line 1079
    const/16 v20, 0x2

    .line 1078
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1076
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1093
    .end local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0x14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1096
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1097
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    move-object/from16 v19, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1096
    monitor-exit v20

    goto/16 :goto_0

    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v19
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1099
    :catch_0
    move-exception v13

    .line 1100
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1103
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0xf

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1108
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1110
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_9

    .line 1120
    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 1123
    const/16 v19, 0x3c

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    const v19, 0xea60

    :goto_5
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 1126
    .local v17, "sleepTime":J
    :try_start_4
    const-string v19, "IOTCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "IOTC_Connect_ByUID("

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1127
    const-string v21, ") returns "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "sleepTime ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1128
    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1126
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1130
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1129
    monitor-exit v20

    goto/16 :goto_0

    :catchall_2
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v19
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1132
    :catch_1
    move-exception v13

    .line 1133
    .restart local v13    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1112
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "sleepTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    .line 1113
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1114
    .restart local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    .line 1115
    const/16 v20, 0x5

    .line 1114
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1110
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1124
    .end local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_a
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x1f4

    move/from16 v19, v0

    goto/16 :goto_5

    .line 1136
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0x24

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v19

    const/16 v20, -0x25

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1140
    :cond_c
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1143
    .restart local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    .line 1144
    const/16 v20, 0x6

    .line 1143
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1140
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1150
    .end local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :cond_d
    const-string v19, "IOTCamera"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Connect Fail:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v21, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static/range {v21 .. v21}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1156
    .restart local v15    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v19, v0

    .line 1157
    const/16 v20, 0x3

    .line 1156
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V

    .line 1153
    add-int/lit8 v14, v14, 0x1

    goto :goto_7
.end method

.method public stopThread()V
    .locals 10

    .prologue
    .line 1004
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1005
    .local v0, "c1":J
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->mIsRunning:Z

    .line 1007
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v6}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 1008
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v6}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v6

    invoke-static {v6}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close(I)V

    .line 1009
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->this$0:Lcom/tutk/IOTC/Camera;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/tutk/IOTC/Camera;->access$1(Lcom/tutk/IOTC/Camera;I)V

    .line 1014
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1016
    .local v2, "c2":J
    iget-object v7, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    monitor-enter v7

    .line 1017
    :try_start_0
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->m_waitForStopConnectThread:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 1016
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1022
    .local v4, "c3":J
    const-string v6, "IOTCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[stopThread][c2 - c1]:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v2, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[c3 - c2]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1023
    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1022
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void

    .line 1011
    .end local v2    # "c2":J
    .end local v4    # "c3":J
    :cond_0
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_Stop()V

    goto :goto_0

    .line 1016
    .restart local v2    # "c2":J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
