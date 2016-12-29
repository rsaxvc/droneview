.class Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;
.super Ljava/lang/Thread;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTakeVideoThread"
.end annotation


# instance fields
.field private sd_info_count:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 320
    const/16 v0, 0xa

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayActivity;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 323
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 324
    const/4 v7, 0x1

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    .line 325
    :cond_0
    :goto_0
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$75(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 444
    :goto_1
    return-void

    .line 326
    :cond_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$77(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 328
    const-wide/16 v7, 0x32

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 334
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayActivity;J)V

    .line 335
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->getDateTime()Ljava/lang/String;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$79(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$80(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/String;)V

    .line 336
    const-string v7, "TakeVideo"

    const-string v8, "video_i:%b"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 339
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 340
    const-string v8, "h264"

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v10

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$83(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v11

    .line 339
    invoke-static {v7, v8, v9, v10, v11}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 341
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$84(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 342
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$85(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 343
    const-string v7, "TakeVideo"

    const-string v8, "OpenAVI:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v7, "TakeVideo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "widthV="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$86(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  heightV="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$87(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_2
    :goto_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    const/16 v8, 0x2ee0

    if-ge v7, v8, :cond_a

    .line 358
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$86(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$87(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 359
    :cond_3
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 360
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 361
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 362
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$89(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/util/LinkedList;)V

    .line 364
    :cond_4
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    const-wide/16 v9, 0x10

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 365
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$91(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/io/File;)V

    .line 366
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    .line 367
    .local v0, "b":Z
    const-string v7, "tagdel"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "if delect===="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "b":Z
    :cond_5
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$77(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 370
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayActivity;J)V

    goto/16 :goto_1

    .line 329
    :catch_0
    move-exception v4

    .line 331
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 346
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 347
    const-string v8, "mjpg"

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v10

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$83(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v11

    .line 346
    invoke-static {v7, v8, v9, v10, v11}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 348
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$84(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 349
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$85(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 350
    const-string v7, "tag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "widthV="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$86(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  heightV="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 351
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$87(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v7, "tag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nVideoWidth="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 353
    const-string v9, "  nVideoHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 352
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 373
    :cond_7
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 374
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-gtz v7, :cond_8

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bH:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$94(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 375
    :cond_8
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bH:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$94(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 376
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$95(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 378
    :cond_9
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 379
    .local v2, "count":I
    const/4 v7, 0x1

    if-le v2, v7, :cond_a

    .line 380
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 381
    .local v3, "data":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [B

    array-length v9, v8

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v9, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    .line 382
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v9

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    array-length v7, v7

    int-to-long v11, v7

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayActivity;J)V

    .line 383
    const-string v8, "TakeVideo"

    const-string v9, "size:%d total size:%dK count:%d"

    const/4 v7, 0x3

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v7

    const-wide/16 v9, 0x4000

    cmp-long v7, v7, v9

    if-lez v7, :cond_e

    .line 386
    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    .line 397
    .end local v2    # "count":I
    .end local v3    # "data":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    :cond_a
    :goto_4
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    const/16 v8, 0x2ee0

    if-ne v7, v8, :cond_d

    .line 398
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 399
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 400
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 401
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$89(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/util/LinkedList;)V

    .line 403
    :cond_b
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    const-wide/16 v9, 0x10

    cmp-long v7, v7, v9

    if-gez v7, :cond_c

    .line 404
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$91(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/io/File;)V

    .line 405
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    .line 406
    .restart local v0    # "b":Z
    const-string v7, "tagdel"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "if delect===="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "b":Z
    :cond_c
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$77(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 409
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayActivity;J)V

    .line 411
    :cond_d
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$96(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 412
    .local v5, "message":Landroid/os/Message;
    const/16 v7, 0x2710

    iput v7, v5, Landroid/os/Message;->what:I

    .line 413
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v7

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 414
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$96(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    rem-int/lit16 v7, v7, 0x258

    if-nez v7, :cond_0

    .line 417
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$96(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 418
    .local v6, "message1":Landroid/os/Message;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Landroid/os/StatFs;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$97(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$98(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/os/StatFs;)V

    .line 419
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$99(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/StatFs;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$100(Lobject/p2pwificam/clientActivity/PlayActivity;J)V

    .line 420
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$101(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v9

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$102(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v11

    mul-long/2addr v9, v11

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->formatSize(J)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$103(Lobject/p2pwificam/clientActivity/PlayActivity;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$104(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/String;)V

    .line 421
    const/16 v7, 0x3ed

    iput v7, v6, Landroid/os/Message;->what:I

    .line 422
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "sd_size"

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$105(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v6, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 425
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$96(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$101(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$102(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v9

    mul-long/2addr v7, v9

    const-wide/32 v9, 0x100000

    div-long/2addr v7, v9

    const-wide/16 v9, 0x32

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 427
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$106(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 428
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$107(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 429
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$108(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 430
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 431
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v8, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;)V

    invoke-virtual {v7, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 387
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "message1":Landroid/os/Message;
    .restart local v2    # "count":I
    .restart local v3    # "data":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    :cond_e
    const/16 v7, 0x257

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->sd_info_count:I

    goto/16 :goto_4
.end method
