.class Lobject/p2pwificam/clientActivity/AddCameraActivity$1;
.super Ljava/lang/Object;
.source "AddCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopSearch()V

    .line 175
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 176
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method
