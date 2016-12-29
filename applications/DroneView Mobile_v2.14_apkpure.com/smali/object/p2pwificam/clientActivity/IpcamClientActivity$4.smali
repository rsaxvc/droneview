.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICameraParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnParam(Lcom/easyview/basecamera/ICamera;I)V
    .locals 5
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "type"    # I

    .prologue
    .line 1458
    const-string v2, "IpcamClientActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnParam:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1460
    .local v0, "bd":Landroid/os/Bundle;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$7(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1461
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 1462
    const-string v2, "msgparam"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1463
    const-string v2, "did"

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1465
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$7(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1466
    return-void
.end method
