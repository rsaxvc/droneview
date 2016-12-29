.class public Lcom/easyview/basecamera/BaseCameraList;
.super Ljava/lang/Object;
.source "BaseCameraList.java"


# instance fields
.field private _alarm:Lcom/easyview/basecamera/ICamera$IAlarmListener;

.field protected _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/basecamera/BaseCamera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_alarm:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .line 8
    return-void
.end method


# virtual methods
.method public Add(Lcom/easyview/basecamera/BaseCamera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/easyview/basecamera/BaseCamera;

    .prologue
    .line 15
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_alarm:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_alarm:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    invoke-virtual {p1, v0}, Lcom/easyview/basecamera/BaseCamera;->SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraParamListener;

    .prologue
    .line 69
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    monitor-exit p0

    .line 76
    return-void

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;

    .line 73
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v0, p1}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    goto :goto_0

    .line 69
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    monitor-exit p0

    .line 38
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Del(Ljava/lang/String;)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 23
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/easyview/basecamera/BaseCameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    .line 26
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 23
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public RemoveParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraParamListener;

    .prologue
    .line 78
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    monitor-exit p0

    .line 85
    return-void

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;

    .line 82
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v0, p1}, Lcom/easyview/basecamera/BaseCamera;->RemoveParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    goto :goto_0

    .line 78
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCameraList;->_alarm:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .line 100
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    monitor-exit p0

    .line 107
    return-void

    .line 102
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;

    .line 104
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v0, p1}, Lcom/easyview/basecamera/BaseCamera;->SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V

    goto :goto_0

    .line 100
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Start()V
    .locals 4

    .prologue
    .line 41
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    monitor-exit p0

    .line 53
    return-void

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    goto :goto_0

    .line 41
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 47
    .restart local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public Stop()V
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    monitor-exit p0

    .line 67
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    goto :goto_0

    .line 56
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 62
    .restart local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/easyview/basecamera/BaseCameraList;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/BaseCamera;

    .line 91
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->getID()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method
