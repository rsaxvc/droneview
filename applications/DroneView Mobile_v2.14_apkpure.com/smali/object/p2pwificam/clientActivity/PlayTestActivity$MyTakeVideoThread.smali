.class Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;
.super Ljava/lang/Thread;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTakeVideoThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayTestActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 258
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 260
    :cond_0
    :goto_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$42(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 410
    :goto_1
    return-void

    .line 261
    :cond_1
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 263
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_2
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 269
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    .line 270
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->getDateTime()Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$46(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 272
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/io/File;

    .line 273
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 274
    const-string v9, "IPcamer/video"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$49(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/io/File;)V

    .line 275
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->div:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 276
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->div:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 280
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    const-string v7, "h264"

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v9

    const/16 v10, 0x14

    .line 278
    invoke-static {v6, v7, v8, v9, v10}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 282
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 283
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 284
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "widthV="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  heightV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 285
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    :goto_3
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_e

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    const/16 v7, 0x2ee0

    if-ge v6, v7, :cond_e

    .line 306
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nVideoWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 307
    const-string v8, "  nVideoHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    if-eq v6, v7, :cond_9

    .line 309
    :cond_4
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 310
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$56(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 312
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$57(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V

    .line 313
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$58(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V

    .line 315
    :cond_5
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x80

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 316
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/io/File;

    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 318
    const-string v9, "/IPcamer/video/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".avi"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 317
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/io/File;)V

    .line 319
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$61(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 320
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

    .line 322
    .end local v0    # "b":Z
    :cond_6
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 323
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    goto/16 :goto_1

    .line 264
    :catch_0
    move-exception v3

    .line 266
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 287
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_7
    new-instance v2, Ljava/io/File;

    .line 288
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 289
    const-string v7, "IPcamer/video"

    .line 287
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .local v2, "div":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 294
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 295
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 296
    const-string v7, "mjpg"

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v9

    const/16 v10, 0x14

    .line 293
    invoke-static {v6, v7, v8, v9, v10}, Lobject/p2pipcam/nativecaller/NativeCaller;->OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I

    .line 297
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 298
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 299
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "widthV="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  heightV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 300
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$55(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 299
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nVideoWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 302
    const-string v8, "  nVideoHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 326
    .end local v2    # "div":Ljava/io/File;
    :cond_9
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 327
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-gtz v6, :cond_a

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->bH:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$63(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 328
    :cond_a
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-eq v6, v7, :cond_b

    .line 329
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 330
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_1

    .line 333
    :cond_b
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->bH:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$63(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 334
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$65(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 336
    :cond_c
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 337
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayTestActivity;[B)V

    .line 338
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$64(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$67(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 339
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    .line 340
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v7

    array-length v7, v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->iORp:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$69(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    .line 339
    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    .line 341
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    .line 359
    :cond_d
    :goto_4
    const-string v6, "tag1"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "allVideoSize/1024=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_e
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    const/16 v7, 0x2ee0

    if-ne v6, v7, :cond_11

    .line 362
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 363
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 364
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$56(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 365
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$57(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V

    .line 366
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$58(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V

    .line 368
    :cond_f
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    const-wide/16 v8, 0x80

    cmp-long v6, v6, v8

    if-gez v6, :cond_10

    .line 369
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Ljava/io/File;

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 371
    const-string v9, "/IPcamer/video/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".avi"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 370
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/io/File;)V

    .line 372
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$61(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 373
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

    .line 375
    .end local v0    # "b":Z
    :cond_10
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 376
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    .line 378
    :cond_11
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 379
    .local v4, "message":Landroid/os/Message;
    const/16 v6, 0x2710

    iput v6, v4, Landroid/os/Message;->what:I

    .line 380
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 381
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x32

    rem-int/lit16 v6, v6, 0x7530

    if-nez v6, :cond_0

    .line 383
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 384
    .local v5, "message1":Landroid/os/Message;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$71(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$72(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/os/StatFs;)V

    .line 385
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$73(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/StatFs;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$74(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    .line 386
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$75(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v8

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$77(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$78(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;)V

    .line 387
    const/16 v6, 0x3ed

    iput v6, v5, Landroid/os/Message;->what:I

    .line 388
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "sd_size"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$79(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 391
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$75(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$76(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 393
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$80(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 394
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$81(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 395
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$82(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 396
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 397
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    new-instance v7, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)V

    invoke-virtual {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 343
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "message1":Landroid/os/Message;
    :cond_12
    const-string v6, "TAG"

    const-string v7, "iORp==iORp0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayTestActivity;[B)V

    .line 345
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    goto/16 :goto_4

    .line 349
    :cond_13
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_14

    .line 350
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v7, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayTestActivity;[B)V

    .line 352
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    .line 353
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J

    move-result-wide v7

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V

    goto/16 :goto_4

    .line 355
    :cond_14
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-static {v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$66(Lobject/p2pwificam/clientActivity/PlayTestActivity;[B)V

    .line 356
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->WriteData([BII)I

    goto/16 :goto_4
.end method
