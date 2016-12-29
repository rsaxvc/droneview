.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, "count":I
    :goto_0
    const-string v2, "strDIDtag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWifiType():----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    add-int/lit8 v0, v0, 0x1

    .line 476
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 486
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v2

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cameraName:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v2

    # invokes: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->done()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    .line 489
    return-void

    .line 480
    :cond_0
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
