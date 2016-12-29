.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;
.super Landroid/os/AsyncTask;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 358
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPInitial(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPNetworkDetect()I

    .line 361
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Init()V

    .line 366
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    const-wide/16 v0, 0xfa0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    goto :goto_1

    .line 372
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 379
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 380
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$11(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imageButtonRefresh:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$12(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 382
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 338
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 339
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$11(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imageButtonRefresh:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$12(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 341
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/CameraList;->CloseAll()V

    .line 343
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->initCameraList()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$13(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    .line 346
    sget-boolean v1, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    if-nez v1, :cond_0

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-class v2, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 351
    const-string v1, "tagx"

    .line 352
    const-string v2, "SystemValue.ISRUN == false--and--server is run to"

    .line 351
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
