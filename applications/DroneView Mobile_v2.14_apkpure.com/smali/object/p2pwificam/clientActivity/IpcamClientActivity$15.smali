.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showDelSureDialog()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 660
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/CameraEditAdapter;->delCamera()Ljava/util/ArrayList;

    move-result-object v1

    .line 661
    .local v1, "didList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "del_add_modify_camera"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v3, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 682
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/CameraEditAdapter;->notifyDataSetChanged()V

    .line 683
    return-void

    .line 663
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    .local v0, "did":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delCameraFromdb(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$18(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 665
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->delCamera(Ljava/lang/String;)Z

    .line 666
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 671
    :cond_1
    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/easyview/camera/CameraList;->Del(Ljava/lang/String;)V

    .line 675
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 676
    const-string v4, "cameraid"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v4, v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 662
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
