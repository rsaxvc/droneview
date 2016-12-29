.class public Lobject/p2pipcam/adapter/CameraListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;,
        Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;,
        Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;,
        Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;,
        Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CameraListAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field public isSearching:Z

.field private listContainer:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 1
    .param p1, "ct"    # Landroid/content/Context;
    .param p2, "ipcamClientActivity"    # Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 47
    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 49
    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->context:Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->isSearching:Z

    .line 65
    iput-object p2, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 66
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->context:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 68
    iget-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 69
    return-void
.end method

.method private CheckCameraInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 470
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 476
    monitor-exit p0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 471
    :cond_0
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "strDid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    monitor-exit p0

    const/4 v3, 0x0

    goto :goto_1

    .line 470
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/CameraListAdapter;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    return-object v0
.end method

.method private saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 554
    const/4 v4, 0x0

    .line 555
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 556
    const-string v8, "ipcamera/picid"

    .line 555
    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 558
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 561
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 564
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 565
    iget-object v7, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 566
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 567
    const-string v7, "CameraList"

    const-string v8, "\u8fd8\u6ca1\u6709\u56fe\u7247\uff0c\u5219\u4fdd\u5b58"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 576
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 573
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 359
    invoke-direct {p0, p2}, Lobject/p2pipcam/adapter/CameraListAdapter;->CheckCameraInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    const/4 v1, 0x0

    .line 374
    :goto_0
    return v1

    .line 362
    :cond_0
    new-instance v0, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/CameraParamsBean;-><init>()V

    .line 363
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0, v1}, Lobject/p2pipcam/bean/CameraParamsBean;->setAuthority(Z)V

    .line 364
    invoke-virtual {v0, p1}, Lobject/p2pipcam/bean/CameraParamsBean;->setName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setDid(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p3}, Lobject/p2pipcam/bean/CameraParamsBean;->setUser(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p4}, Lobject/p2pipcam/bean/CameraParamsBean;->setPwd(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/CameraParamsBean;->setStatus(I)V

    .line 369
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/CameraParamsBean;->setMode(I)V

    .line 370
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/CameraParamsBean;->setAlarm(I)V

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    sget-object v2, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public QueryParams()V
    .locals 5

    .prologue
    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 428
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 426
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 436
    return-void

    .line 429
    :cond_0
    :try_start_1
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 430
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "strDid":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-static {v3, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 432
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setAlarm(I)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public UpdataCameraAlarm(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarm"    # I

    .prologue
    const/4 v3, 0x0

    .line 578
    monitor-enter p0

    .line 579
    :try_start_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 590
    monitor-exit p0

    :goto_0
    return v3

    .line 579
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 580
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "strDid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getAlarm()I

    move-result v1

    .line 583
    .local v1, "mode":I
    if-ne v1, p2, :cond_2

    .line 584
    monitor-exit p0

    goto :goto_0

    .line 578
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "mode":I
    .end local v2    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 586
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "mode":I
    .restart local v2    # "strDid":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setAlarm(I)V

    .line 587
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public UpdataCameraStatus(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    sget-object v6, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 408
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 421
    monitor-exit p0

    :goto_1
    return v5

    .line 409
    :cond_0
    sget-object v6, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 410
    .local v1, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "strDid":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 412
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v0

    .line 413
    .local v0, "_status":I
    if-ne v0, p2, :cond_1

    .line 414
    monitor-exit p0

    goto :goto_1

    .line 406
    .end local v0    # "_status":I
    .end local v1    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 416
    .restart local v0    # "_status":I
    .restart local v1    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "strDid":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setStatus(I)V

    .line 417
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "_status":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public UpdataCameraType(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 444
    monitor-enter p0

    .line 445
    :try_start_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 456
    monitor-exit p0

    :goto_0
    return v3

    .line 445
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 446
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "strDid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 448
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getMode()I

    move-result v1

    .line 449
    .local v1, "mode":I
    if-ne v1, p2, :cond_2

    .line 450
    monitor-exit p0

    goto :goto_0

    .line 444
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "mode":I
    .end local v2    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 452
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "mode":I
    .restart local v2    # "strDid":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setMode(I)V

    .line 453
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public UpdateCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "oldDID"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "did"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 521
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 533
    monitor-exit p0

    const/4 v4, 0x0

    :goto_1
    return v4

    .line 522
    :cond_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 523
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "strDid":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setName(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, p3}, Lobject/p2pipcam/bean/CameraParamsBean;->setDid(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p4}, Lobject/p2pipcam/bean/CameraParamsBean;->setUser(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p5}, Lobject/p2pipcam/bean/CameraParamsBean;->setPwd(Ljava/lang/String;)V

    .line 529
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setStatus(I)V

    .line 530
    monitor-exit p0

    const/4 v4, 0x1

    goto :goto_1

    .line 521
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public UpdateCameraImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 540
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 549
    monitor-exit p0

    const/4 v4, 0x0

    :goto_1
    return v4

    .line 541
    :cond_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 542
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "strDid":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/CameraParamsBean;->setBmp(Landroid/graphics/Bitmap;)V

    .line 545
    invoke-direct {p0, p1, p2}, Lobject/p2pipcam/adapter/CameraListAdapter;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 546
    monitor-exit p0

    const/4 v4, 0x1

    goto :goto_1

    .line 540
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public delCamera(Ljava/lang/String;)Z
    .locals 5
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string v3, "CameraListAdapter"

    const-string v4, "Call delCamera"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 513
    monitor-exit p0

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 507
    :cond_0
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "strDid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    sget-object v3, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 510
    monitor-exit p0

    const/4 v3, 0x1

    goto :goto_1

    .line 506
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "strDid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v3, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v3, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 247
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 248
    .local v2, "filepath":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 251
    const-string v3, "filepath"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 250
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_1
    if-eqz v2, :cond_2

    .line 257
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 347
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOnItem(I)Lobject/p2pipcam/bean/CameraParamsBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 483
    monitor-exit p0

    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    monitor-exit p0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    const/16 v16, 0x0

    .line 91
    .local v16, "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    if-nez p2, :cond_0

    .line 92
    :try_start_0
    new-instance v17, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;-><init>(Lobject/p2pipcam/adapter/CameraListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v16    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    .local v17, "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter;->listContainer:Landroid/view/LayoutInflater;

    const v5, 0x7f030018

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    const v4, 0x7f080078

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    .line 102
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    .local v18, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter;->ipcamClientActivity:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v11, v4, -0x6

    .line 105
    .local v11, "W":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 106
    .local v10, "H":I
    move-object/from16 v0, v17

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v9, v11, 0x9

    div-int/lit8 v9, v9, 0x10

    invoke-direct {v5, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const v4, 0x7f080096

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    move-object/from16 v0, v17

    iput-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devName:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f080096

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    move-object/from16 v0, v17

    iput-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devID:Landroid/widget/TextView;

    .line 115
    const v4, 0x7f080097

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    move-object/from16 v0, v17

    iput-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devStatus:Landroid/widget/TextView;

    .line 116
    const v4, 0x7f080098

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    iput-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgBtnSetting:Landroid/widget/ImageButton;

    .line 123
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v17

    .line 127
    .end local v10    # "H":I
    .end local v11    # "W":I
    .end local v17    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    .end local v18    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    :goto_0
    :try_start_2
    new-instance v20, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;-><init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V

    .line 134
    .local v20, "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgBtnSetting:Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 136
    const v5, 0x7f020139

    .line 135
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 137
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 138
    .local v6, "btmWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 139
    .local v7, "btmHeight":I
    const/high16 v4, 0x42480000    # 50.0f

    int-to-float v5, v6

    div-float v23, v4, v5

    .line 140
    .local v23, "scaleW":F
    const/high16 v4, 0x42480000    # 50.0f

    int-to-float v5, v7

    div-float v22, v4, v5

    .line 142
    .local v22, "scaleH":F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v8, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 148
    .local v15, "bt":Landroid/graphics/Bitmap;
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 149
    .local v12, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devName:Landroid/widget/TextView;

    invoke-virtual {v12}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const/4 v14, 0x0

    .line 172
    .local v14, "bmp2":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_1

    .line 174
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :goto_1
    new-instance v24, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;-><init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V

    .line 185
    .local v24, "snapListener":Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    new-instance v5, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lobject/p2pipcam/adapter/CameraListAdapter$ImageOnClickListener;-><init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v19, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;-><init>(Lobject/p2pipcam/adapter/CameraListAdapter;I)V

    .line 189
    .local v19, "myLister":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    invoke-virtual {v12}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v25

    .line 200
    .local v25, "status":I
    packed-switch v25, :pswitch_data_0

    .line 233
    const v21, 0x7f06003a

    .line 235
    .local v21, "resid":I
    :goto_2
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APMODEIPCAM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devStatus:Landroid/widget/TextView;

    const-string v5, "\u4e00\u952e\u70b9\u64ad"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_3
    monitor-exit p0

    .line 242
    return-object p2

    .line 125
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "btmWidth":I
    .end local v7    # "btmHeight":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v14    # "bmp2":Landroid/graphics/Bitmap;
    .end local v15    # "bt":Landroid/graphics/Bitmap;
    .end local v19    # "myLister":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;
    .end local v20    # "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    .end local v21    # "resid":I
    .end local v22    # "scaleH":F
    .end local v23    # "scaleW":F
    .end local v24    # "snapListener":Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
    .end local v25    # "status":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 177
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "btmWidth":I
    .restart local v7    # "btmHeight":I
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .restart local v12    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v14    # "bmp2":Landroid/graphics/Bitmap;
    .restart local v15    # "bt":Landroid/graphics/Bitmap;
    .restart local v20    # "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    .restart local v22    # "scaleH":F
    .restart local v23    # "scaleW":F
    :cond_1
    invoke-virtual {v12}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lobject/p2pipcam/adapter/CameraListAdapter;->getFirstPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 178
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    .line 179
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 89
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "btmWidth":I
    .end local v7    # "btmHeight":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bmp2":Landroid/graphics/Bitmap;
    .end local v15    # "bt":Landroid/graphics/Bitmap;
    .end local v20    # "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    .end local v22    # "scaleH":F
    .end local v23    # "scaleW":F
    :catchall_0
    move-exception v4

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 181
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "btmWidth":I
    .restart local v7    # "btmHeight":I
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .restart local v12    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "bmp2":Landroid/graphics/Bitmap;
    .restart local v15    # "bt":Landroid/graphics/Bitmap;
    .restart local v20    # "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    .restart local v22    # "scaleH":F
    .restart local v23    # "scaleW":F
    :cond_2
    :try_start_3
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->imgSnapShot:Landroid/widget/ImageView;

    const v5, 0x7f020051

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 202
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "myLister":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;
    .restart local v24    # "snapListener":Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
    .restart local v25    # "status":I
    :pswitch_0
    const v21, 0x7f06003b

    .line 203
    .restart local v21    # "resid":I
    goto :goto_2

    .line 205
    .end local v21    # "resid":I
    :pswitch_1
    const v21, 0x7f06003f

    .line 206
    .restart local v21    # "resid":I
    goto :goto_2

    .line 208
    .end local v21    # "resid":I
    :pswitch_2
    const v21, 0x7f06003e

    .line 209
    .restart local v21    # "resid":I
    goto :goto_2

    .line 211
    .end local v21    # "resid":I
    :pswitch_3
    const v21, 0x7f06003c

    .line 212
    .restart local v21    # "resid":I
    goto :goto_2

    .line 214
    .end local v21    # "resid":I
    :pswitch_4
    const v21, 0x7f060040

    .line 215
    .restart local v21    # "resid":I
    goto :goto_2

    .line 217
    .end local v21    # "resid":I
    :pswitch_5
    const v21, 0x7f06003d

    .line 219
    .restart local v21    # "resid":I
    goto :goto_2

    .line 221
    .end local v21    # "resid":I
    :pswitch_6
    const v21, 0x7f060042

    .line 222
    .restart local v21    # "resid":I
    goto :goto_2

    .line 224
    .end local v21    # "resid":I
    :pswitch_7
    const v21, 0x7f060047

    .line 225
    .restart local v21    # "resid":I
    goto :goto_2

    .line 227
    .end local v21    # "resid":I
    :pswitch_8
    const v21, 0x7f0601b3

    .line 228
    .restart local v21    # "resid":I
    goto :goto_2

    .line 230
    .end local v21    # "resid":I
    :pswitch_9
    const v21, 0x7f0601b4

    .line 231
    .restart local v21    # "resid":I
    goto :goto_2

    .line 238
    :cond_3
    move-object/from16 v0, v16

    iget-object v4, v0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->devStatus:Landroid/widget/TextView;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 89
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "btmWidth":I
    .end local v7    # "btmHeight":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v14    # "bmp2":Landroid/graphics/Bitmap;
    .end local v15    # "bt":Landroid/graphics/Bitmap;
    .end local v16    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    .end local v19    # "myLister":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchLister;
    .end local v20    # "myOnTouchListener":Lobject/p2pipcam/adapter/CameraListAdapter$MyOnTouchListener;
    .end local v21    # "resid":I
    .end local v22    # "scaleH":F
    .end local v23    # "scaleW":F
    .end local v24    # "snapListener":Lobject/p2pipcam/adapter/CameraListAdapter$SnapOnTouchListener;
    .end local v25    # "status":I
    .restart local v17    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    :catchall_1
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    .restart local v16    # "cameraListItem":Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
    goto :goto_4

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public sendCameraStatus()V
    .locals 7

    .prologue
    .line 490
    sget-object v6, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 491
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 500
    return-void

    .line 492
    :cond_0
    sget-object v6, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 493
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v5

    .line 494
    .local v5, "status":I
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "did":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "camera_status_change"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "cameraid"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v6, "pppp_status"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    iget-object v6, p0, Lobject/p2pipcam/adapter/CameraListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public upadeUserAuthority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 381
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 382
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "strDId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "strUser":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "strPwd":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setAuthority(Z)V

    goto :goto_0

    .line 390
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/CameraParamsBean;->setAuthority(Z)V

    goto :goto_0
.end method
