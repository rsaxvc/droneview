.class Lobject/p2pwificam/clientActivity/PictureActivity$2;
.super Ljava/lang/Thread;
.source "PictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PictureActivity;->initBmpAndSum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 104
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    monitor-enter v12

    .line 107
    const-wide/16 v13, 0x1f4

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    :try_start_1
    sget-object v11, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v8, v11, :cond_0

    .line 146
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->handler:Landroid/os/Handler;
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$4(Lobject/p2pwificam/clientActivity/PictureActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    monitor-exit v12

    .line 149
    return-void

    .line 108
    .end local v8    # "i":I
    :catch_0
    move-exception v5

    .line 109
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 112
    .restart local v8    # "i":I
    :cond_0
    :try_start_2
    sget-object v11, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 113
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "did":Ljava/lang/String;
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$1(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v11

    invoke-virtual {v11, v4}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAllPicture(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 115
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 116
    .local v10, "sum":I
    const/4 v1, 0x0

    .line 117
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    const/4 v13, 0x1

    invoke-static {v11, v13}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$2(Lobject/p2pwificam/clientActivity/PictureActivity;Z)V

    .line 118
    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 139
    if-eqz v2, :cond_2

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_2
    invoke-virtual {v0, v1}, Lobject/p2pipcam/bean/CameraParamsBean;->setBmp(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {v0, v10}, Lobject/p2pipcam/bean/CameraParamsBean;->setSum_pic(I)V

    .line 144
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->handler:Landroid/os/Handler;
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$4(Lobject/p2pwificam/clientActivity/PictureActivity;)Landroid/os/Handler;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 121
    :cond_3
    const-string v11, "filepath"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 120
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 124
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 125
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$1(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v11

    .line 127
    const-string v13, "picture"

    .line 126
    invoke-virtual {v11, v4, v7, v13}, Lobject/p2pipcam/utils/DataBaseHelper;->deleteVideoOrPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 128
    .local v3, "delResult":Z
    const-string v11, "tag"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "delResult:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    .end local v3    # "delResult":Z
    :cond_5
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->isFirst:Z
    invoke-static {v11}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$3(Lobject/p2pwificam/clientActivity/PictureActivity;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 131
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v11, 0x8

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    const/4 v13, 0x0

    invoke-static {v11, v13}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$2(Lobject/p2pwificam/clientActivity/PictureActivity;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
