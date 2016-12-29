.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;
.super Ljava/lang/Thread;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CamerStatuThread"
.end annotation


# instance fields
.field bean1:Lobject/p2pipcam/bean/CameraParamsBean;

.field id:Ljava/lang/String;

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pipcam/bean/CameraParamsBean;)V
    .locals 1
    .param p2, "bean"    # Lobject/p2pipcam/bean/CameraParamsBean;

    .prologue
    .line 222
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 223
    invoke-virtual {p2}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->id:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->bean1:Lobject/p2pipcam/bean/CameraParamsBean;

    .line 225
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 231
    const-wide/16 v1, 0x7530

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->bean1:Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    new-instance v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread$1;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;)V

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
