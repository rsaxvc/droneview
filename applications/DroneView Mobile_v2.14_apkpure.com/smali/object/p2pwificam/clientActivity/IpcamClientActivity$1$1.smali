.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$1;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 508
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 510
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->access$0(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-result-object v0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    :cond_0
    return-void
.end method
