.class public Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;
.super Lcom/easyview/ndt/INDTServiceCallback$Stub;
.source "NDTServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NDTSCallBack"
.end annotation


# instance fields
.field private _listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

.field final synthetic this$0:Lcom/easyview/ndt/NDTServiceUtil;


# direct methods
.method public constructor <init>(Lcom/easyview/ndt/NDTServiceUtil;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->this$0:Lcom/easyview/ndt/NDTServiceUtil;

    invoke-direct {p0}, Lcom/easyview/ndt/INDTServiceCallback$Stub;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->_listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    return-void
.end method


# virtual methods
.method public handlerCommEvent(Ljava/lang/String;IIII)I
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "time"    # I
    .param p5, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "NDTUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NDTS :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->_listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->_listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->_listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;->OnEvent(Ljava/lang/String;IIII)I

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/easyview/ndt/NDTServiceUtil$NDTSCallBack;->_listener:Lcom/easyview/ndt/NDTServiceUtil$IConnectedListener;

    .line 204
    return-void
.end method
