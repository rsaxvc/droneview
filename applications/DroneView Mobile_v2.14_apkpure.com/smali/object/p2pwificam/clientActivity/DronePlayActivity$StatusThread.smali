.class Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;
.super Ljava/lang/Thread;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusThread"
.end annotation


# instance fields
.field private storageCount:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 1

    .prologue
    .line 2098
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2100
    const/16 v0, 0x14

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DronePlayActivity;
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    return-object v0
.end method

.method private hideNoSDShow()V
    .locals 2

    .prologue
    .line 2132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$78(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$78(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 2134
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$78(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$1;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)V

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private queryStorageState()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$75(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2129
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    .line 2105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2107
    :cond_2
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    if-le v0, v3, :cond_3

    .line 2110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2111
    iput v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    goto :goto_0

    .line 2115
    :cond_3
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->haveStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2117
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 2118
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/easyview/ppcs/PPCSCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const-string v1, "The memory will be full"

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->showMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$77(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V

    .line 2126
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2128
    iput v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    goto :goto_0

    .line 2124
    :cond_5
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->storageCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2146
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$79(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 2147
    const/4 v1, 0x0

    .line 2148
    .local v1, "wifi_rssi_count":I
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2149
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$80(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    return-void

    .line 2151
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2152
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->hideNoSDShow()V

    .line 2153
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2155
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->queryStorageState()V

    .line 2156
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    if-lez v2, :cond_1

    .line 2158
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 2159
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2161
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2164
    :cond_1
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/ppcs/PPCSCamera;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2166
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    new-instance v3, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$2;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$2;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)V

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2203
    :cond_2
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2186
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$57(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2188
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    new-instance v3, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread$3;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;)V

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
