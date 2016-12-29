.class Lcom/easyview/ndt/NDTService$1;
.super Lcom/easyview/ndt/INDTService$Stub;
.source "NDTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/ndt/NDTService;


# direct methods
.method constructor <init>(Lcom/easyview/ndt/NDTService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    .line 57
    invoke-direct {p0}, Lcom/easyview/ndt/INDTService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "client"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v1, "NDTService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/ndt/NDTService$ThreadNDT;

    invoke-virtual {v1, p3}, Lcom/easyview/ndt/NDTService$ThreadNDT;->setPasswd(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/easyview/ndt/NDTService$ThreadNDT;

    iget-object v1, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/easyview/ndt/NDTService$ThreadNDT;-><init>(Lcom/easyview/ndt/NDTService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "thread":Lcom/easyview/ndt/NDTService$ThreadNDT;
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->start()V

    .line 71
    iget-object v1, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    invoke-virtual {v1}, Lcom/easyview/ndt/NDTService;->SaveDevices()V

    .line 72
    iget-object v1, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    const/4 v2, 0x0

    # invokes: Lcom/easyview/ndt/NDTService;->SaveStopFlag(Z)V
    invoke-static {v1, v2}, Lcom/easyview/ndt/NDTService;->access$1(Lcom/easyview/ndt/NDTService;Z)V

    goto :goto_0
.end method

.method public addEventText(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    # getter for: Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$3()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService;->SaveEventText()V

    .line 110
    return-void
.end method

.method public clearEventText()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    # getter for: Lcom/easyview/ndt/NDTService;->_mapEvent:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$3()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    return-void
.end method

.method public registerCallback(Lcom/easyview/ndt/INDTServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/easyview/ndt/INDTServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "NDTService"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Lcom/easyview/ndt/NDTService;->access$2(Lcom/easyview/ndt/INDTServiceCallback;)V

    .line 94
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "NDTService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ndt/NDTService$ThreadNDT;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService$ThreadNDT;->stopNDT()V

    .line 81
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService;->SaveDevices()V

    .line 84
    :cond_0
    return-void
.end method

.method public setPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/ndt/NDTService$ThreadNDT;

    invoke-virtual {v0, p2}, Lcom/easyview/ndt/NDTService$ThreadNDT;->setPasswd(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    invoke-virtual {v0}, Lcom/easyview/ndt/NDTService;->SaveDevices()V

    .line 130
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v2, "NDTService"

    const-string v3, "stop"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    # getter for: Lcom/easyview/ndt/NDTService;->_threads:Ljava/util/Map;
    invoke-static {}, Lcom/easyview/ndt/NDTService;->access$0()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v2, p0, Lcom/easyview/ndt/NDTService$1;->this$0:Lcom/easyview/ndt/NDTService;

    const/4 v3, 0x1

    # invokes: Lcom/easyview/ndt/NDTService;->SaveStopFlag(Z)V
    invoke-static {v2, v3}, Lcom/easyview/ndt/NDTService;->access$1(Lcom/easyview/ndt/NDTService;Z)V

    .line 145
    return-void

    .line 134
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/ndt/NDTService$ThreadNDT;

    .line 135
    .local v1, "thread":Lcom/easyview/ndt/NDTService$ThreadNDT;
    invoke-virtual {v1}, Lcom/easyview/ndt/NDTService$ThreadNDT;->stopNDT()V

    .line 137
    :try_start_0
    invoke-virtual {v1}, Lcom/easyview/ndt/NDTService$ThreadNDT;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/easyview/ndt/INDTServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/easyview/ndt/INDTServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "NDTService"

    const-string v1, "unregisterCallback"

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/easyview/ndt/NDTService;->access$2(Lcom/easyview/ndt/INDTServiceCallback;)V

    .line 104
    :cond_0
    return-void
.end method

.method public writeLog(Z)V
    .locals 1
    .param p1, "w"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/ndt/LogUtil;->writeLogToFile(Ljava/lang/Boolean;)V

    .line 121
    return-void
.end method
