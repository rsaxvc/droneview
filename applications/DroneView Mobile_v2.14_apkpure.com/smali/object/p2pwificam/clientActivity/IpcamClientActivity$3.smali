.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;
.super Landroid/os/Handler;
.source "IpcamClientActivity.java"


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1314
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1317
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1339
    :goto_0
    return-void

    .line 1319
    :sswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$6(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1320
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-string v1, "\u8bbe\u5907\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u70b9\u64ad\uff01"

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$6(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1324
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-string v1, "wifi\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u70b9\u64ad\uff01"

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-string v1, "wifi\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u914d\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :sswitch_3
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1333
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const v1, 0x7f0601d0

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    .line 1334
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1317
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method
