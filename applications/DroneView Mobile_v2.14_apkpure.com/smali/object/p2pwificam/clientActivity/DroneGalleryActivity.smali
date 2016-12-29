.class public Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "DroneGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/DroneGalleryActivity$ItemClickListener;,
        Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DroneGallery"

.field private static final TIME_OUT:I = 0xfa0


# instance fields
.field private final IMAGE_CODE:I

.field private final IMAGE_TYPE:Ljava/lang/String;

.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private _get_event:Z

.field private _get_events_idle_count:I

.field private _gridView:Landroid/widget/GridView;

.field private _isDownRecord:Z

.field private _isGetEventInfo:Z

.field private _isGetEventList:Z

.field private _isGetPicture:Z

.field private _isGetPictureFinish:Z

.field private _isPause:Z

.field private _listEventDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private _mapBean:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private _missEventPictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

.field private back:Landroid/widget/ImageButton;

.field private button_cancel:Landroid/widget/Button;

.field private button_delete:Landroid/widget/Button;

.field private button_edit:Landroid/widget/Button;

.field private button_export:Landroid/widget/Button;

.field private downInfo:Landroid/widget/TextView;

.field private event_count:I

.field private handler:Landroid/os/Handler;

.field private isReverseLandscape:Z

.field private mHandler:Landroid/os/Handler;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private noView:Landroid/view/View;

.field private onEditClick:Landroid/view/View$OnClickListener;

.field private onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventPicture:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEvents:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private progressView:Landroid/view/View;

.field runnable_getMissEventPicture:Ljava/lang/Runnable;

.field runnable_queryEventInfo:Ljava/lang/Runnable;

.field runnable_queryEventList:Ljava/lang/Runnable;

.field private total_count:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 48
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 49
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    .line 51
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->back:Landroid/widget/ImageButton;

    .line 52
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->progressView:Landroid/view/View;

    .line 53
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->noView:Landroid/view/View;

    .line 54
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;

    .line 55
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;

    .line 56
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;

    .line 57
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;

    .line 58
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;

    .line 59
    iput v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I

    .line 60
    iput v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I

    .line 61
    iput v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->total_count:I

    .line 62
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_event:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_mapBean:Ljava/util/Map;

    .line 66
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->isReverseLandscape:Z

    .line 67
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isDownRecord:Z

    .line 68
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    .line 69
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isPause:Z

    .line 70
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventInfo:Z

    .line 71
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventList:Z

    .line 72
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPictureFinish:Z

    .line 73
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;

    .line 163
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$1;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventInfo:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventList:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 212
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEvents:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 279
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$5;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_getMissEventPicture:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEventPicture:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 362
    const-string v0, "image/*"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->IMAGE_TYPE:Ljava/lang/String;

    .line 364
    iput v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->IMAGE_CODE:I

    .line 366
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;

    .line 482
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$8;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    .line 575
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$9;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventInfo:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->queryEventInfo()V

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_mapBean:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I

    return v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I

    return-void
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getMissEventPicture()V

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->total_count:I

    return-void
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    return v0
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    return-void
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isPause:Z

    return v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPictureFinish:Z

    return v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventList:Z

    return v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isDownRecord:Z

    return-void
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->progressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->noView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEditClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->queryEventList()V

    return-void
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->total_count:I

    return v0
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I

    return v0
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I

    return-void
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->isReverseLandscape:Z

    return v0
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->isReverseLandscape:Z

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventInfo:Z

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_event:Z

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventList:Z

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;

    return-object v0
.end method

.method private getMissEventPicture()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isDownRecord:Z

    if-eqz v3, :cond_0

    .line 257
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    .line 278
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 262
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    .line 263
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 264
    .local v1, "count":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 265
    .local v2, "index":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_mapBean:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 266
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEventPicture:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v3, v2, v4, v5}, Lcom/easyview/camera/EVBaseCamera;->queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 267
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_getMissEventPicture:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 272
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .end local v1    # "count":I
    .end local v2    # "index":I
    :cond_1
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPicture:Z

    .line 273
    const-string v3, "Event"

    const-string v4, "get event picture finish! "

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->setCanClick()V

    .line 275
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPictureFinish:Z

    goto :goto_0
.end method

.method private queryEventInfo()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventInfo:Z

    .line 159
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method

.method private queryEventList()V
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventList:Z

    .line 177
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    const/4 v1, 0x0

    const v2, 0x186a0

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->onEvents:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/easyview/camera/EVBaseCamera;->queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 178
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventList:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 549
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 550
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/16 v5, 0x80

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "DroneGallery"

    const-string v1, "=========onCreate========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 80
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->requestWindowFeature(I)Z

    .line 82
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->setContentView(I)V

    .line 83
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->setRequestedOrientation(I)V

    .line 90
    :goto_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 92
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->back:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    .line 94
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->progressView:Landroid/view/View;

    .line 95
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->noView:Landroid/view/View;

    .line 96
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->downInfo:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;

    .line 102
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetPictureFinish:Z

    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->back:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;

    .line 124
    new-instance v0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->noView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    const/16 v0, 0x32

    iput v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I

    .line 132
    iput v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I

    .line 134
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->queryEventInfo()V

    .line 138
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_event:Z

    .line 139
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->notifyDataSetChanged()V

    .line 147
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->back:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$10;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$10;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;-><init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;->start()V

    .line 154
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->startOrientationChangeListener()V

    .line 155
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 142
    :cond_1
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_event:Z

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 342
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 343
    const-string v0, "DroneGallery"

    const-string v1, "onDestroy========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_event:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/easyview/camera/EVBaseCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 348
    :cond_0
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isDownRecord:Z

    .line 350
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask;->Clear()V

    .line 352
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->Clear()V

    .line 354
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->clearListener()V

    .line 355
    :cond_2
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isDownRecord:Z

    .line 356
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask;->Clear()V

    .line 357
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_getMissEventPicture:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    .line 360
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isPause:Z

    .line 333
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    :cond_0
    const-string v0, "DroneGallery"

    const-string v1, "===onPause==="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 338
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 324
    const-string v0, "DroneGallery"

    const-string v1, "===onRestart==="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isPause:Z

    .line 326
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->notifyDataSetChanged()V

    .line 328
    return-void
.end method
