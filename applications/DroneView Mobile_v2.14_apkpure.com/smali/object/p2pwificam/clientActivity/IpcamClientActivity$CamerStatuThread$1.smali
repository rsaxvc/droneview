.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread$1;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread$1;->this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread$1;->this$1:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->id:Ljava/lang/String;

    .line 242
    const/4 v2, 0x7

    .line 241
    invoke-virtual {v0, v1, v2}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdataCameraStatus(Ljava/lang/String;I)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_0
    return-void
.end method
