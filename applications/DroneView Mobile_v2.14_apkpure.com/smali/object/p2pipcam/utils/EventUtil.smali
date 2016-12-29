.class public Lobject/p2pipcam/utils/EventUtil;
.super Ljava/lang/Object;
.source "EventUtil.java"


# instance fields
.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private _context:Landroid/content/Context;

.field private _downPictureCount:I

.field private _firstRun:Z

.field private _noPictureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field runnable_queryEventInfo:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Lcom/easyview/camera/EVBaseCamera;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 21
    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_context:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;

    .line 23
    iput v1, p0, Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I

    .line 24
    iput-boolean v1, p0, Lobject/p2pipcam/utils/EventUtil;->_firstRun:Z

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lobject/p2pipcam/utils/EventUtil$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventUtil$1;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lobject/p2pipcam/utils/EventUtil$2;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventUtil$2;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 187
    new-instance v0, Lobject/p2pipcam/utils/EventUtil$3;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventUtil$3;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 204
    new-instance v0, Lobject/p2pipcam/utils/EventUtil$4;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventUtil$4;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 28
    iput-object p1, p0, Lobject/p2pipcam/utils/EventUtil;->_context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventUtil;->queryEventInfo()V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/EventUtil;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/EventUtil;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lobject/p2pipcam/utils/EventUtil;->_firstRun:Z

    return v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/EventUtil;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/EventUtil;->queryEventList(I)V

    return-void
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventUtil;->queryEvent()V

    return-void
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/EventUtil;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I

    return v0
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/EventUtil;I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I

    return-void
.end method

.method static synthetic access$7(Lobject/p2pipcam/utils/EventUtil;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventUtil;->queryEventPicture()V

    return-void
.end method

.method private queryEvent()V
    .locals 5

    .prologue
    .line 71
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lobject/p2pipcam/utils/EventUtil$6;

    invoke-direct {v2, p0}, Lobject/p2pipcam/utils/EventUtil$6;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    .line 78
    const-wide/16 v3, 0x7d0

    .line 74
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, "count":I
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const/4 v0, 0x5

    .line 89
    :goto_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v2}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/easyview/table/EventTable;->lastNoPictures(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I

    .line 91
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventUtil;->queryEventPicture()V

    goto :goto_0

    .line 87
    :cond_2
    const/16 v0, 0x32

    goto :goto_1
.end method

.method private queryEventInfo()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method private queryEventList(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lobject/p2pipcam/utils/EventUtil$5;

    invoke-direct {v1, p0, p1}, Lobject/p2pipcam/utils/EventUtil$5;-><init>(Lobject/p2pipcam/utils/EventUtil;I)V

    .line 61
    const-wide/16 v2, 0x7d0

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    add-int/lit8 v1, p1, 0x1e

    iget-object v2, p0, Lobject/p2pipcam/utils/EventUtil;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method private queryEventPicture()V
    .locals 5

    .prologue
    .line 129
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget v1, p0, Lobject/p2pipcam/utils/EventUtil;->_downPictureCount:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 135
    :cond_2
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lobject/p2pipcam/utils/EventUtil$7;

    invoke-direct {v2, p0}, Lobject/p2pipcam/utils/EventUtil$7;-><init>(Lobject/p2pipcam/utils/EventUtil;)V

    .line 141
    const-wide/16 v3, 0x7d0

    .line 137
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_noPictureList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    .local v0, "index":I
    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    const/4 v2, 0x0

    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil;->onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/easyview/camera/EVBaseCamera;->queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method


# virtual methods
.method public QueryEvent(Z)V
    .locals 4
    .param p1, "firstRun"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lobject/p2pipcam/utils/EventUtil;->_firstRun:Z

    .line 35
    iget-object v0, p0, Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    return-void
.end method
