.class public Lobject/p2pipcam/utils/EventQueryUtil;
.super Ljava/lang/Object;
.source "EventQueryUtil.java"


# static fields
.field private static utils:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lobject/p2pipcam/utils/EventQueryUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private _context:Landroid/content/Context;

.field private _downPictureCount:I

.field private _eventListIndex:I

.field private _firstRun:Z

.field private _handler:Landroid/os/Handler;

.field private _lastActive:J

.field private _listener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _missPictureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field runnable_queryEventInfo:Ljava/lang/Runnable;

.field runnable_queryEventList:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Lcom/easyview/camera/EVBaseCamera;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 55
    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_context:Landroid/content/Context;

    .line 56
    iput-boolean v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_firstRun:Z

    .line 57
    iput v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    .line 58
    iput v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I

    .line 59
    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_missPictureList:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_listener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_lastActive:J

    .line 90
    new-instance v0, Lobject/p2pipcam/utils/EventQueryUtil$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventQueryUtil$1;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lobject/p2pipcam/utils/EventQueryUtil$2;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventQueryUtil$2;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventList:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lobject/p2pipcam/utils/EventQueryUtil$3;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventQueryUtil$3;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 264
    new-instance v0, Lobject/p2pipcam/utils/EventQueryUtil$4;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventQueryUtil$4;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 281
    new-instance v0, Lobject/p2pipcam/utils/EventQueryUtil$5;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/EventQueryUtil$5;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 66
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/EventQueryUtil;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEventInfo()V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I

    return v0
.end method

.method static synthetic access$10(Lobject/p2pipcam/utils/EventQueryUtil;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_missPictureList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pipcam/utils/EventQueryUtil;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEventPicture()V

    return-void
.end method

.method static synthetic access$12(Lobject/p2pipcam/utils/EventQueryUtil;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEvent()V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/EventQueryUtil;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEventList(I)V

    return-void
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/EventQueryUtil;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/EventQueryUtil;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_firstRun:Z

    return v0
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/EventQueryUtil;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I

    return-void
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/EventQueryUtil;)Lcom/easyview/basecamera/ICamera$IRespondListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_listener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pipcam/utils/EventQueryUtil;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pipcam/utils/EventQueryUtil;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pipcam/utils/EventQueryUtil;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;ZLcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "camera"    # Lcom/easyview/camera/EVBaseCamera;
    .param p2, "firstRun"    # Z
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "did":Ljava/lang/String;
    sget-object v2, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    sget-object v2, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/utils/EventQueryUtil;

    .line 30
    .local v1, "util":Lobject/p2pipcam/utils/EventQueryUtil;
    invoke-virtual {v1, p3}, Lobject/p2pipcam/utils/EventQueryUtil;->setListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 31
    invoke-virtual {v1}, Lobject/p2pipcam/utils/EventQueryUtil;->getIdleMS()I

    move-result v2

    const/16 v3, 0x1388

    if-ge v2, v3, :cond_0

    .line 33
    const-string v2, "Event"

    const-string v3, "is query event! "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v2, "Event"

    const-string v3, "query event timeout,restart! "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v1}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    .line 40
    .end local v1    # "util":Lobject/p2pipcam/utils/EventQueryUtil;
    :cond_1
    new-instance v1, Lobject/p2pipcam/utils/EventQueryUtil;

    invoke-direct {v1, p0, p1}, Lobject/p2pipcam/utils/EventQueryUtil;-><init>(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;)V

    .line 41
    .restart local v1    # "util":Lobject/p2pipcam/utils/EventQueryUtil;
    sget-object v2, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v1, p3}, Lobject/p2pipcam/utils/EventQueryUtil;->setListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 43
    invoke-virtual {v1, p2}, Lobject/p2pipcam/utils/EventQueryUtil;->start(Z)V

    goto :goto_0
.end method

.method private queryEvent()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    new-instance v1, Lobject/p2pipcam/utils/EventQueryUtil$6;

    invoke-direct {v1, p0}, Lobject/p2pipcam/utils/EventQueryUtil$6;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    .line 150
    const-wide/16 v2, 0x7d0

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEventPicture()V

    goto :goto_0
.end method

.method private queryEventInfo()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "Event"

    const-string v1, "queryEventInfo... "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_lastActive:J

    .line 104
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method private queryEventList(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventList:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "Event"

    const-string v1, "queryEventList %d... "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_lastActive:J

    .line 118
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    add-int/lit8 v1, p1, 0x1e

    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method private queryEventPicture()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 191
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "Event"

    const-string v2, "device in offline,query event finish "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    .line 226
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_missPictureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, "Event"

    const-string v2, "query event finish "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 207
    const-string v1, "Event"

    const-string v2, "no wifi,query event finish %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isStartVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    new-instance v2, Lobject/p2pipcam/utils/EventQueryUtil$7;

    invoke-direct {v2, p0}, Lobject/p2pipcam/utils/EventQueryUtil$7;-><init>(Lobject/p2pipcam/utils/EventQueryUtil;)V

    .line 218
    const-wide/16 v3, 0x7d0

    .line 214
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_missPictureList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    .local v0, "index":I
    const-string v1, "Event"

    const-string v2, "queryEvent %d... "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_lastActive:J

    .line 224
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    const/4 v2, 0x0

    iget-object v3, p0, Lobject/p2pipcam/utils/EventQueryUtil;->onEvent:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/easyview/camera/EVBaseCamera;->queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto/16 :goto_0
.end method

.method public static stopAll()V
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "util":Lobject/p2pipcam/utils/EventQueryUtil;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    sget-object v1, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 52
    return-void

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "util":Lobject/p2pipcam/utils/EventQueryUtil;
    check-cast v0, Lobject/p2pipcam/utils/EventQueryUtil;

    .line 49
    .restart local v0    # "util":Lobject/p2pipcam/utils/EventQueryUtil;
    invoke-virtual {v0}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public getIdleMS()I
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, "now":J
    iget-wide v2, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_lastActive:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method public setListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 77
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_listener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 78
    return-void
.end method

.method public start(Z)V
    .locals 4
    .param p1, "firstRun"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_firstRun:Z

    .line 73
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public startQueryEvent()V
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "count":I
    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x5

    .line 137
    :goto_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v2}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/easyview/table/EventTable;->lastNoPictures(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_missPictureList:Ljava/util/List;

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_downPictureCount:I

    .line 139
    invoke-direct {p0}, Lobject/p2pipcam/utils/EventQueryUtil;->queryEvent()V

    .line 140
    return-void

    .line 135
    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    sget-object v0, Lobject/p2pipcam/utils/EventQueryUtil;->utils:Ljava/util/Map;

    iget-object v1, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/EventQueryUtil;->_listener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 84
    return-void
.end method
