.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;
.super Ljava/lang/Thread;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTakeVideoThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 254
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 256
    :cond_0
    :goto_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$42(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 402
    :goto_1
    return-void

    .line 257
    :cond_1
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 259
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_2
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 265
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    .line 266
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getDateTime()Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$46(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/String;)V

    .line 267
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 268
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/io/File;

    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 270
    const-string v9, "IPcamer/video"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$49(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/io/File;)V

    .line 271
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->div:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->div:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 276
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    const-string v7, "h264"

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v9

    const/16 v10, 0x14

    .line 274
    invoke-static {v6, v7, v8, v9, v10}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 278
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 279
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 280
    const-string v6, "PlayTestActivity111"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "widthV="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  heightV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_3
    :goto_3
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_e

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    const/16 v7, 0x2ee0

    if-ge v6, v7, :cond_e

    .line 299
    const-string v6, "PlayTestActivity111"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "2222nVideoWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  22222nVideoHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    if-eq v6, v7, :cond_9

    .line 301
    :cond_4
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 302
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 303
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$56(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 304
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$57(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V

    .line 305
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$58(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V

    .line 307
    :cond_5
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x80

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 308
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/io/File;

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 310
    const-string v9, "/IPcamer/video/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".avi"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 309
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/io/File;)V

    .line 311
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$61(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 312
    .local v0, "b":Z
    const-string v6, "tagdel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "if delect===="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "b":Z
    :cond_6
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 315
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    goto/16 :goto_1

    .line 260
    :catch_0
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 282
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_7
    new-instance v2, Ljava/io/File;

    .line 283
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 284
    const-string v7, "IPcamer/video"

    .line 282
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v2, "div":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 290
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    const-string v7, "mjpg"

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v9

    const/16 v10, 0x14

    .line 288
    invoke-static {v6, v7, v8, v9, v10}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 292
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 293
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 294
    const-string v6, "PlayTestActivity111"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "1111widthV="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  11111heightV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v6, "PlayTestActivity111"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "111111nVideoWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  111111nVideoHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 318
    .end local v2    # "div":Ljava/io/File;
    :cond_9
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 319
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-gtz v6, :cond_a

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bH:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$63(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 320
    :cond_a
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-eq v6, v7, :cond_b

    .line 321
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 322
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_1

    .line 325
    :cond_b
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bH:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$63(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 326
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$65(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 328
    :cond_c
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 329
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;[B)V

    .line 330
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$67(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 331
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    .line 332
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v7

    array-length v7, v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->iORp:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$69(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    .line 331
    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    .line 333
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    .line 351
    :cond_d
    :goto_4
    const-string v6, "tag1"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "allVideoSize/1024=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_e
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    const/16 v7, 0x2ee0

    if-ne v6, v7, :cond_11

    .line 354
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 355
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 356
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$56(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 357
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$57(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V

    .line 358
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$58(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V

    .line 360
    :cond_f
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x80

    cmp-long v6, v6, v8

    if-gez v6, :cond_10

    .line 361
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Ljava/io/File;

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 363
    const-string v9, "/IPcamer/video/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".avi"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 362
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/io/File;)V

    .line 364
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$61(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 365
    .restart local v0    # "b":Z
    const-string v6, "tagdel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "if delect===="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0    # "b":Z
    :cond_10
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 368
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    .line 370
    :cond_11
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 371
    .local v4, "message":Landroid/os/Message;
    const/16 v6, 0x2710

    iput v6, v4, Landroid/os/Message;->what:I

    .line 372
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 373
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x32

    rem-int/lit16 v6, v6, 0x7530

    if-nez v6, :cond_0

    .line 375
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 376
    .local v5, "message1":Landroid/os/Message;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$71(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$72(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/os/StatFs;)V

    .line 377
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$73(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/StatFs;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$74(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    .line 378
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$75(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v8

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$77(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/String;)V

    .line 379
    const/16 v6, 0x3ed

    iput v6, v5, Landroid/os/Message;->what:I

    .line 380
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "sd_size"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$79(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 383
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$75(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 385
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$80(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 386
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 387
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 388
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 389
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    new-instance v7, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)V

    invoke-virtual {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 335
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "message1":Landroid/os/Message;
    :cond_12
    const-string v6, "TAG"

    const-string v7, "iORp==iORp0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;[B)V

    .line 337
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    goto/16 :goto_4

    .line 341
    :cond_13
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_14

    .line 342
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;[B)V

    .line 344
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    .line 345
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V

    goto/16 :goto_4

    .line 347
    :cond_14
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;[B)V

    .line 348
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    goto/16 :goto_4
.end method
