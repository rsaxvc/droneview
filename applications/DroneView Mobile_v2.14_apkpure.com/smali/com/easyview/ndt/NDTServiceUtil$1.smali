.class Lcom/easyview/ndt/NDTServiceUtil$1;
.super Ljava/lang/Object;
.source "NDTServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/ndt/NDTServiceUtil;


# direct methods
.method constructor <init>(Lcom/easyview/ndt/NDTServiceUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 170
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-static {p2}, Lcom/easyview/ndt/INDTService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easyview/ndt/INDTService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyview/ndt/NDTServiceUtil;->access$0(Lcom/easyview/ndt/NDTServiceUtil;Lcom/easyview/ndt/INDTService;)V

    .line 172
    const-string v2, "NDTUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NDTUtil Service Connected."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    # getter for: Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;
    invoke-static {v2}, Lcom/easyview/ndt/NDTServiceUtil;->access$1(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    # getter for: Lcom/easyview/ndt/NDTServiceUtil;->_connectedListener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;
    invoke-static {v2}, Lcom/easyview/ndt/NDTServiceUtil;->access$1(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    move-result-object v1

    .line 176
    .local v1, "listener":Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/easyview/ndt/NDTServiceUtil;->access$2(Lcom/easyview/ndt/NDTServiceUtil;Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V

    .line 177
    invoke-interface {v1}, Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;->OnConnected()V

    .line 179
    .end local v1    # "listener":Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;
    :cond_0
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    # getter for: Lcom/easyview/ndt/NDTServiceUtil;->_mode:I
    invoke-static {v2}, Lcom/easyview/ndt/NDTServiceUtil;->access$3(Lcom/easyview/ndt/NDTServiceUtil;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    # getter for: Lcom/easyview/ndt/NDTServiceUtil;->mService:Lcom/easyview/ndt/INDTService;
    invoke-static {v2}, Lcom/easyview/ndt/NDTServiceUtil;->access$4(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/INDTService;

    move-result-object v2

    iget-object v3, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    # getter for: Lcom/easyview/ndt/NDTServiceUtil;->_callback:Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;
    invoke-static {v3}, Lcom/easyview/ndt/NDTServiceUtil;->access$5(Lcom/easyview/ndt/NDTServiceUtil;)Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/easyview/ndt/INDTService;->registerCallback(Lcom/easyview/ndt/INDTServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil$1;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/easyview/ndt/NDTServiceUtil;->access$0(Lcom/easyview/ndt/NDTServiceUtil;Lcom/easyview/ndt/INDTService;)V

    .line 194
    const-string v0, "NDTUtil"

    const-string v1, "NDTUtil Service Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method
