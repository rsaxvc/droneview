.class Lobject/p2pwificam/clientActivity/StartActivity$2;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/StartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/StartActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/StartActivity$2;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 269
    const/16 v0, 0xc8

    .line 270
    .local v0, "delay":I
    const/4 v0, 0x0

    .line 271
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/StartActivity$2;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/StartActivity;->access$0(Lobject/p2pwificam/clientActivity/StartActivity;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    const/4 v0, 0x0

    .line 273
    :cond_0
    if-lez v0, :cond_1

    int-to-long v7, v0

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 274
    :cond_1
    const-string v7, "tagx"

    const-string v8, "PPPPInitial....."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/StartActivity$2;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    invoke-static {v7}, Lcom/easyview/ppcs/PPCSCamera;->Init(Landroid/content/Context;)V

    .line 278
    if-lez v0, :cond_3

    .line 280
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 281
    .local v3, "lStartTime":J
    const-string v7, "tagx"

    const-string v8, "PPPPNetworkDetect.."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPNetworkDetect()I

    move-result v6

    .line 283
    .local v6, "nRes":I
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 284
    .local v1, "lEndTime":J
    sub-long v7, v1, v3

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    .line 285
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 287
    :cond_2
    const-string v7, "tagx"

    const-string v8, "PPPPNetworkDetect"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v1    # "lEndTime":J
    .end local v3    # "lStartTime":J
    .end local v6    # "nRes":I
    :cond_3
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 290
    .local v5, "msg":Landroid/os/Message;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/StartActivity$2;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/StartActivity;->access$5(Lobject/p2pwificam/clientActivity/StartActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v5    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v7

    goto :goto_0
.end method
