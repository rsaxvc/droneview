.class public Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "IpcamClientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;,
        Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;,
        Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;,
        Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;",
        "Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;"
    }
.end annotation


# static fields
.field private static final STR_DID:Ljava/lang/String; = "did"

.field private static final STR_MSG_PARAM:Ljava/lang/String; = "msgparam"

.field private static final TAG:Ljava/lang/String; = "IpcamClientActivity"

.field private static cameraStatus:I

.field public static instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private static listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

.field static strCamName:Ljava/lang/String;

.field static strDID:Ljava/lang/String;


# instance fields
.field AlarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

.field private PPPPMsgHandler:Landroid/os/Handler;

.field private ParamHandler:Landroid/os/Handler;

.field ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

.field private final SNAPSHOT:I

.field StatusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _add_bell_reconnnect:I

.field private addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

.field private addCameraListHeader:Landroid/view/View;

.field private add_id:Ljava/lang/String;

.field private btnDelCamera:Landroid/widget/Button;

.field private btnEdit:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnSelectReverse:Landroid/widget/Button;

.field private cameraListView:Landroid/widget/ListView;

.field private delBottomLayout:Landroid/widget/LinearLayout;

.field private editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

.field handle:Landroid/os/Handler;

.field handler:Landroid/os/Handler;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private imageButtonRefresh:Landroid/widget/ImageButton;

.field private imgConfig:Landroid/widget/ImageView;

.field isConnect:Z

.field private isEdited:Z

.field private listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

.field private listCamera:Lcom/easyview/camera/CameraList;

.field private localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

.field private mCustomMgr:Landroid/app/NotificationManager;

.field private mNotify2:Landroid/app/Notification;

.field private notification_runnable:Ljava/lang/Runnable;

.field private ntfManager:Landroid/app/NotificationManager;

.field private onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private preference:Landroid/content/SharedPreferences;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressdlg:Landroid/app/ProgressDialog;

.field private receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

.field private strPwd:Ljava/lang/String;

.field private strcamUser:Ljava/lang/String;

.field private timeOne:I

.field private timeTag:I

.field private timeTwo:I

.field private wifiListString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wifiResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private xinge:Lcom/starxnet/ipn/ipn_xinge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    .line 130
    sput-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    .line 131
    sput-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    .line 137
    sput-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 98
    const/16 v0, 0xc8

    iput v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->SNAPSHOT:I

    .line 101
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    .line 103
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 105
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->xinge:Lcom/starxnet/ipn/ipn_xinge;

    .line 106
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    .line 107
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    .line 110
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imgConfig:Landroid/widget/ImageView;

    .line 116
    iput v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->timeTag:I

    .line 117
    iput v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->timeOne:I

    .line 118
    iput v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->timeTwo:I

    .line 124
    iput v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->_add_bell_reconnnect:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiListString:Ljava/util/List;

    .line 129
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 132
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;

    .line 133
    const-string v0, "admin"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strcamUser:Ljava/lang/String;

    .line 134
    const-string v0, "888888"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strPwd:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 480
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;

    .line 616
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamHandler:Landroid/os/Handler;

    .line 1087
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isConnect:Z

    .line 1314
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$3;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    .line 1454
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$4;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    .line 1546
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->AlarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .line 1567
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$6;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handle:Landroid/os/Handler;

    .line 1576
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$7;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->StatusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1590
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$8;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->onEventInfo:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1612
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$9;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1748
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$10;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$10;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    .line 1756
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->notification_runnable:Ljava/lang/Runnable;

    .line 95
    return-void
.end method

.method private StartCameraPPPP()V
    .locals 5

    .prologue
    .line 204
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v3}, Lcom/easyview/camera/CameraList;->Start()V

    .line 205
    sget-object v3, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v1

    .line 206
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 216
    return-void

    .line 207
    :cond_0
    sget-object v3, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v3, v2}, Lobject/p2pipcam/adapter/CameraListAdapter;->getOnItem(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 209
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    new-instance v3, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;

    invoke-direct {v3, p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pipcam/bean/CameraParamsBean;)V

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CamerStatuThread;->start()V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized UpdataCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "oldDID"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "did"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;

    .prologue
    .line 699
    monitor-enter p0

    const/4 v6, 0x0

    .line 700
    .local v6, "bRes":Z
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const/4 v6, 0x1

    .line 703
    :cond_0
    monitor-exit p0

    return v6

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$0()Lobject/p2pipcam/adapter/CameraListAdapter;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->StartCameraPPPP()V

    return-void
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imageButtonRefresh:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->initCameraList()V

    return-void
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 697
    invoke-direct/range {p0 .. p5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->UpdataCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    return-object v0
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delCameraFromdb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1, p2, p3, p4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->notification_runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->_add_bell_reconnnect:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/IpcamClientActivity;I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->_add_bell_reconnnect:I

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1472
    invoke-direct {p0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/basecamera/ICamera$IRespondListener;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->onEventList:Lcom/easyview/basecamera/ICamera$IRespondListener;

    return-object v0
.end method

.method private declared-synchronized addCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 708
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lobject/p2pipcam/utils/DataBaseHelper;->createCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    monitor-exit p0

    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static changerCameraStatus(I)V
    .locals 0
    .param p0, "status"    # I

    .prologue
    .line 139
    sput p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraStatus:I

    .line 140
    return-void
.end method

.method public static delAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "dev_name"    # Ljava/lang/String;
    .param p1, "dev_wifi"    # Ljava/lang/String;

    .prologue
    .line 946
    const-string v0, "APMODEIPCAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, p1}, Lobject/p2pipcam/adapter/CameraListAdapter;->delCamera(Ljava/lang/String;)Z

    .line 949
    :cond_0
    return-void
.end method

.method private declared-synchronized delCameraFromdb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 690
    monitor-enter p0

    const/4 v0, 0x0

    .line 691
    .local v0, "bRes":Z
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v1, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->deleteCamera(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    const/4 v0, 0x1

    .line 694
    :cond_0
    monitor-exit p0

    return v0

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private findView()V
    .locals 6

    .prologue
    const v5, 0x7f08012c

    .line 253
    const v2, 0x7f0800a0

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    .line 254
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 257
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 259
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 260
    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 259
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imageButtonRefresh:Landroid/widget/ImageButton;

    .line 261
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 262
    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 261
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 263
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    new-instance v3, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imageButtonRefresh:Landroid/widget/ImageButton;

    new-instance v3, Lobject/p2pwificam/clientActivity/IpcamClientActivity$13;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$13;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    .line 295
    const v2, 0x7f08012b

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->imgConfig:Landroid/widget/ImageView;

    .line 296
    const v2, 0x7f0800f8

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnSelectAll:Landroid/widget/Button;

    .line 297
    const v2, 0x7f0800f9

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnSelectReverse:Landroid/widget/Button;

    .line 298
    const v2, 0x7f0800fa

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnDelCamera:Landroid/widget/Button;

    .line 299
    const v2, 0x7f0800f7

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delBottomLayout:Landroid/widget/LinearLayout;

    .line 305
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const v2, 0x7f080032

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f06004f

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f0800fe

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method

.method private getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 24
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "isAlarm"    # Z

    .prologue
    .line 1474
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1475
    .local v7, "date":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v8, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 1477
    .local v15, "strDate":Ljava/lang/String;
    const-string v17, ""

    .line 1478
    .local v17, "titlePrompt":Ljava/lang/String;
    const-string v16, ""

    .line 1479
    .local v16, "title":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1480
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v11, 0x0

    .line 1481
    .local v11, "intent":Landroid/content/Intent;
    const-string v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mCustomMgr:Landroid/app/NotificationManager;

    .line 1482
    if-eqz p3, :cond_6

    .line 1483
    const/4 v9, 0x0

    .line 1484
    .local v9, "flag":Z
    const-string v5, ""

    .line 1485
    .local v5, "CamName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchAllCameras()Landroid/database/Cursor;

    move-result-object v6

    .line 1486
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1487
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v9, :cond_3

    .line 1498
    :cond_1
    if-eqz v6, :cond_2

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1503
    :cond_2
    if-nez v9, :cond_4

    .line 1504
    const/16 v20, 0x0

    .line 1543
    .end local v5    # "CamName":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flag":Z
    :goto_1
    return-object v20

    .line 1488
    .restart local v5    # "CamName":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "flag":Z
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1489
    .local v12, "name":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1490
    .local v10, "id":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1491
    .local v18, "user":Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1492
    .local v14, "pwd":Ljava/lang/String;
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "notification  name:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1494
    move-object v5, v12

    .line 1495
    const/4 v9, 0x1

    goto :goto_0

    .line 1506
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v18    # "user":Ljava/lang/String;
    :cond_4
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "alarm name:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v15}, Lobject/p2pipcam/utils/DataBaseHelper;->insertAlarmLogToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1508
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1509
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-class v20, Lobject/p2pwificam/clientActivity/AlarmLogActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1510
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v20, "cameraid"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const-string v20, "camera_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    const-string v20, "log_content"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    move-object/from16 v16, v5

    .line 1523
    .end local v5    # "CamName":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flag":Z
    :goto_2
    new-instance v20, Landroid/app/Notification;

    const v21, 0x7f020010

    .line 1524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1523
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1527
    const v20, 0x7f020010

    .line 1528
    const/high16 v21, 0x8000000

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1530
    new-instance v19, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1531
    const v21, 0x7f03003d

    .line 1530
    invoke-direct/range {v19 .. v21}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1532
    .local v19, "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v13, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080177

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080179

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080178

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080176

    const v22, 0x7f020010

    invoke-virtual/range {v20 .. v22}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1539
    if-eqz p3, :cond_5

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mCustomMgr:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1543
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 1516
    .end local v19    # "views":Landroid/widget/RemoteViews;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f060000

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1517
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1516
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x7f060000

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1519
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    const-class v20, Lobject/p2pwificam/clientActivity/StartActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method private initCameraList()V
    .locals 11

    .prologue
    .line 712
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    .line 713
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v9}, Lcom/easyview/camera/CameraList;->Clear()V

    .line 714
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v9}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchAllCameras()Landroid/database/Cursor;

    move-result-object v3

    .line 716
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 717
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 743
    sget-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 748
    :cond_1
    sget-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 749
    new-instance v9, Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {v9, p0, p0}, Lobject/p2pipcam/adapter/CameraListAdapter;-><init>(Landroid/content/Context;Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    sput-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    .line 750
    new-instance v9, Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-direct {v9, p0}, Lobject/p2pipcam/adapter/CameraEditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    .line 751
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    sget-object v10, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 752
    if-eqz v3, :cond_2

    .line 753
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 756
    :cond_2
    new-instance v5, Lobject/p2pwificam/clientActivity/IpcamClientActivity$16;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$16;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    .line 770
    .local v5, "listener":Lcom/easyview/basecamera/ICameraParamListener;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v9, v5}, Lcom/easyview/camera/CameraList;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 771
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->AlarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    invoke-virtual {v9, v10}, Lcom/easyview/camera/CameraList;->SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V

    .line 773
    sget-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 775
    const v9, 0x7f08012d

    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 780
    :cond_3
    return-void

    .line 718
    .end local v5    # "listener":Lcom/easyview/basecamera/ICameraParamListener;
    :cond_4
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, "name":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "did":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 721
    .local v8, "user":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, "pwd":Ljava/lang/String;
    sget-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9, v6, v4, v8, v7}, Lobject/p2pipcam/adapter/CameraListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 725
    sget-object v9, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v9, v4}, Lobject/p2pipcam/adapter/CameraListAdapter;->getFirstPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 726
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 728
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 730
    :cond_5
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v9, v6, v4, v8, v7}, Lcom/easyview/camera/CameraList;->Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 731
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v9, v4}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    .line 736
    .local v2, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v2, v0}, Lcom/easyview/basecamera/BaseCamera;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 737
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isBell()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v1, v2

    .line 739
    check-cast v1, Lcom/easyview/ppcs/PPCSCamera;

    .line 740
    .local v1, "c":Lcom/easyview/ppcs/PPCSCamera;
    const/16 v9, 0x2710

    iput v9, v1, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    goto/16 :goto_0
.end method

.method private setControlListener()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnSelectReverse:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnDelCamera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method private showDelSureDialog()V
    .locals 3

    .prologue
    .line 655
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 656
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 657
    const v1, 0x7f06000c

    .line 658
    new-instance v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$15;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 687
    return-void
.end method

.method private showPlayLastBmp(Ljava/lang/String;)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 465
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$14;->start()V

    .line 478
    return-void
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 1673
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030034

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1684
    .local v1, "contentView":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v7, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1686
    .local v2, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1688
    new-instance v4, Lobject/p2pwificam/clientActivity/IpcamClientActivity$19;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$19;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1701
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1703
    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 1705
    const v4, 0x7f080163

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1706
    .local v3, "v":Landroid/widget/TextView;
    new-instance v4, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;

    invoke-direct {v4, p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$20;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1714
    const v4, 0x7f080164

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1715
    .local v0, "cbx":Landroid/widget/CheckBox;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_event_notification(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1716
    new-instance v4, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;

    invoke-direct {v4, p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1726
    return-void
.end method


# virtual methods
.method public BSMsgNotifyData(Ljava/lang/String;II)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "param"    # I

    .prologue
    .line 1050
    const-string v2, "IpcamClientActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1052
    .local v0, "bd":Landroid/os/Bundle;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1053
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 1054
    const-string v2, "msgparam"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    const-string v2, "did"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1057
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1058
    return-void
.end method

.method public BSSnapshotNotify(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bImage"    # [B
    .param p3, "len"    # I

    .prologue
    .line 1062
    const/4 v1, 0x0

    invoke-static {p2, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1063
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1064
    const-string v1, "IpcamClientActivity"

    const-string v2, "bmp can\'t be decode..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v1, p1, v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdateCameraImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->PPPPMsgHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public EditDevice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1630
    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v0

    .line 1632
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1633
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 1634
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 1633
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1635
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    .line 1638
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1639
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1651
    :goto_0
    return-void

    .line 1649
    :cond_0
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    goto :goto_0
.end method

.method public EditFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1654
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    if-eqz v0, :cond_0

    .line 1656
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    .line 1657
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 1658
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    .line 1657
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1659
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delBottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1663
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1664
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    .line 1669
    :cond_0
    return-void
.end method

.method public addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delCameraFromdb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, p1}, Lobject/p2pipcam/adapter/CameraListAdapter;->delCamera(Ljava/lang/String;)Z

    .line 889
    invoke-static {p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    .line 890
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 892
    :cond_0
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    .line 893
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;

    .line 894
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, p2, p1, p3, p4}, Lobject/p2pipcam/adapter/CameraListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 895
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    move-object v8, p3

    .line 897
    .local v8, "userName":Ljava/lang/String;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 901
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v0, p2, p1, v8, p4}, Lcom/easyview/camera/CameraList;->Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 902
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 905
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v0, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v7

    .line 906
    .local v7, "camera":Lcom/easyview/basecamera/BaseCamera;
    if-eqz v7, :cond_2

    .line 908
    invoke-virtual {v7}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 909
    invoke-virtual {v7}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 910
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v7, v0}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 912
    :cond_2
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isBell()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v6, v7

    .line 914
    check-cast v6, Lcom/easyview/ppcs/PPCSCamera;

    .line 915
    .local v6, "c":Lcom/easyview/ppcs/PPCSCamera;
    const/16 v0, 0x2710

    iput v0, v6, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    .line 919
    .end local v6    # "c":Lcom/easyview/ppcs/PPCSCamera;
    :cond_3
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->start()V

    .line 944
    .end local v7    # "camera":Lcom/easyview/basecamera/BaseCamera;
    .end local v8    # "userName":Ljava/lang/String;
    :goto_0
    return-void

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    .line 935
    invoke-direct/range {v0 .. v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->UpdataCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 936
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v0, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v7

    .line 937
    .restart local v7    # "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v7}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 938
    invoke-virtual {v7}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 939
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v7, v0}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    goto :goto_0

    .line 942
    .end local v7    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_5
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    goto :goto_0
.end method

.method public callBackAlarmParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "motion_armed"    # I
    .param p3, "motion_sensitivity"    # I
    .param p4, "input_armed"    # I
    .param p5, "ioin_level"    # I
    .param p6, "iolinkage"    # I
    .param p7, "ioout_level"    # I
    .param p8, "alermpresetsit"    # I
    .param p9, "mail"    # I
    .param p10, "snapshot"    # I
    .param p11, "record"    # I
    .param p12, "upload_interval"    # I
    .param p13, "schedule_enable"    # I
    .param p14, "schedule_sun_0"    # I
    .param p15, "schedule_sun_1"    # I
    .param p16, "schedule_sun_2"    # I
    .param p17, "schedule_mon_0"    # I
    .param p18, "schedule_mon_1"    # I
    .param p19, "schedule_mon_2"    # I
    .param p20, "schedule_tue_0"    # I
    .param p21, "schedule_tue_1"    # I
    .param p22, "schedule_tue_2"    # I
    .param p23, "schedule_wed_0"    # I
    .param p24, "schedule_wed_1"    # I
    .param p25, "schedule_wed_2"    # I
    .param p26, "schedule_thu_0"    # I
    .param p27, "schedule_thu_1"    # I
    .param p28, "schedule_thu_2"    # I
    .param p29, "schedule_fri_0"    # I
    .param p30, "schedule_fri_1"    # I
    .param p31, "schedule_fri_2"    # I
    .param p32, "schedule_sat_0"    # I
    .param p33, "schedule_sat_1"    # I
    .param p34, "schedule_sat_2"    # I

    .prologue
    .line 1778
    const-string v0, "IpcamClientActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " motion_armed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, p1, p2}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdataCameraAlarm(Ljava/lang/String;I)Z

    .line 1780
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1781
    return-void
.end method

.method public callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 1301
    sput-object p3, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    .line 1302
    sput-object p4, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    .line 1303
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 1304
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 1305
    sput-object p3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 1306
    sput-object p4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 1307
    const-string v0, "strDIDtag"

    const-string v1, "Ipc"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v0, "strDIDtag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strCamName:ipc"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "strDID:ipc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-virtual {v0, p2, p3, p4}, Lobject/p2pipcam/adapter/SearchListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    :cond_0
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 1785
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1786
    return-void
.end method

.method public callBackUserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "user1"    # Ljava/lang/String;
    .param p3, "pwd1"    # Ljava/lang/String;
    .param p4, "user2"    # Ljava/lang/String;
    .param p5, "pwd2"    # Ljava/lang/String;
    .param p6, "user3"    # Ljava/lang/String;
    .param p7, "pwd3"    # Ljava/lang/String;

    .prologue
    .line 1075
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, p1, p6, p7}, Lobject/p2pipcam/adapter/CameraListAdapter;->upadeUserAuthority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public getDevInfo(Lobject/p2pipcam/bean/CameraParamsBean;)V
    .locals 20
    .param p1, "bean"    # Lobject/p2pipcam/bean/CameraParamsBean;

    .prologue
    .line 1342
    invoke-virtual/range {p1 .. p1}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v15

    .line 1343
    .local v15, "wifi_name":Ljava/lang/String;
    const-string v16, ""

    .line 1344
    .local v16, "wifi_pw":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiOpen()V

    .line 1345
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Wifi="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getWifiType()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lobject/p2pipcam/utils/MyWifiUtils;->getConnectedSSID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lobject/p2pipcam/utils/MyWifiUtils;->getConnectedSSID()Ljava/lang/String;

    move-result-object v10

    .line 1347
    .local v10, "nowWifiName":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1348
    const-string v17, "strDIDtag"

    const-string v18, "\u8fde\u63a5"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static/range {v15 .. v16}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-wide/16 v17, 0x7d0

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_0
    :goto_0
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getWifiType:===="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getWifiType()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lobject/p2pipcam/utils/MyWifiUtils;->getConnectedSSID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string v17, "camera_info"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->preference:Landroid/content/SharedPreferences;

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->preference:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "camera_user"

    const-string v19, "admin"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1363
    .local v6, "cameraUser":Ljava/lang/String;
    const v17, 0x7f060003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1364
    .local v12, "searchPort":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1365
    .local v11, "port":I
    invoke-static {v11, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartSearch(ILjava/lang/String;)V

    .line 1368
    const-wide/16 v17, 0x7d0

    :try_start_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1373
    :goto_1
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopSearch()V

    .line 1374
    sget-object v5, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    .line 1375
    .local v5, "camName":Ljava/lang/String;
    sget-object v4, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    .line 1376
    .local v4, "camDID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strcamUser:Ljava/lang/String;

    .line 1377
    .local v14, "strUser":Ljava/lang/String;
    const-string v13, "888888"

    .line 1379
    .local v13, "strPwd":Ljava/lang/String;
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "strName:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strDID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strUser:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strPwd:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "888888"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getWifiType()Z

    move-result v3

    .line 1381
    .local v3, "ISwifi":Z
    const/4 v9, 0x0

    .line 1382
    .local v9, "iscount":I
    :cond_1
    if-eqz v3, :cond_2

    .line 1399
    :goto_2
    if-eqz v3, :cond_4

    .line 1401
    if-eqz v4, :cond_3

    .line 1402
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "strName:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strDID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strUser:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strPwd:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "888888"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "strName:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strDID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strUser:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "strPwd:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "888888"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u7b2c\u4e00\u6b21:---"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-static {v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    .line 1417
    const-string v17, "888888"

    const/16 v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v14, v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1422
    const-wide/16 v17, 0x7d0

    :try_start_2
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1428
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1429
    new-instance v8, Landroid/content/Intent;

    const-class v17, Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1430
    .local v8, "in":Landroid/content/Intent;
    const-string v17, "camera_type"

    .line 1431
    const/16 v18, 0x1

    .line 1430
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1432
    const-string v17, "stream_type"

    .line 1433
    const/16 v18, 0x3

    .line 1432
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v17, "camera_name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v17, "cameraid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    const-string v17, "camera_user"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    const-string v17, "camera_pwd"

    const-string v18, "888888"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string v17, "camera_type"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1440
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1441
    const v17, 0x7f040001

    const v18, 0x7f040005

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    .line 1442
    const/16 v17, 0x0

    sput-object v17, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    .line 1443
    const/16 v17, 0x0

    sput-object v17, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    .line 1453
    .end local v8    # "in":Landroid/content/Intent;
    :goto_4
    return-void

    .line 1353
    .end local v3    # "ISwifi":Z
    .end local v4    # "camDID":Ljava/lang/String;
    .end local v5    # "camName":Ljava/lang/String;
    .end local v6    # "cameraUser":Ljava/lang/String;
    .end local v9    # "iscount":I
    .end local v11    # "port":I
    .end local v12    # "searchPort":Ljava/lang/String;
    .end local v13    # "strPwd":Ljava/lang/String;
    .end local v14    # "strUser":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1355
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1369
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "cameraUser":Ljava/lang/String;
    .restart local v11    # "port":I
    .restart local v12    # "searchPort":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1371
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1383
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "ISwifi":Z
    .restart local v4    # "camDID":Ljava/lang/String;
    .restart local v5    # "camName":Ljava/lang/String;
    .restart local v9    # "iscount":I
    .restart local v13    # "strPwd":Ljava/lang/String;
    .restart local v14    # "strUser":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 1384
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "strDID:----"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-static/range {v15 .. v16}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-wide/16 v17, 0x7d0

    :try_start_3
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1392
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getWifiType()Z

    move-result v3

    .line 1393
    const-string v17, "strDIDtag"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "getWifiType:===="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/16 v17, 0x5

    move/from16 v0, v17

    if-le v9, v0, :cond_1

    goto/16 :goto_2

    .line 1388
    :catch_2
    move-exception v7

    .line 1390
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1423
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v7

    .line 1425
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1447
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 1451
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method public getWifiInfo()V
    .locals 3

    .prologue
    .line 1249
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiListString:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1250
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiOpen()V

    .line 1251
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiStartScan()V

    .line 1253
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiCheckState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1257
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiResultList:Ljava/util/List;

    .line 1263
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->getConfiguration()V

    .line 1264
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiListString:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1265
    const-string v1, "WIFIButtonListener"

    const-string v2, "dataChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiResultList:Ljava/util/List;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->wifiListString:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->scanResultToString(Ljava/util/List;Ljava/util/List;)V

    .line 1268
    :cond_0
    return-void

    .line 1254
    :cond_1
    const-string v1, "WifiState"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v2}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiCheckState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getWifiType()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1078
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1079
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1080
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    .line 455
    invoke-super {p0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 456
    if-ne p1, v1, :cond_0

    .line 457
    if-ne p2, v1, :cond_0

    .line 458
    const-string v1, "did"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "did":Ljava/lang/String;
    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPlayLastBmp(Ljava/lang/String;)V

    .line 462
    .end local v0    # "did":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 400
    :sswitch_0
    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->getCount()I

    move-result v0

    .line 401
    .local v0, "count":I
    const-string v1, "IpcamClientActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Edit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    if-eqz v1, :cond_1

    .line 403
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    .line 404
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 405
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    .line 404
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 406
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    sget-object v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 420
    :cond_1
    if-lez v0, :cond_2

    .line 421
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    .line 422
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 421
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 423
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCameraListHeader:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    .line 426
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->delBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->btnEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 430
    :cond_2
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    goto/16 :goto_0

    .line 435
    .end local v0    # "count":I
    :sswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1, v5}, Lobject/p2pipcam/adapter/CameraEditAdapter;->selectAll(Z)V

    .line 436
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 439
    :sswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1, v4}, Lobject/p2pipcam/adapter/CameraEditAdapter;->reverseSelect(Z)V

    .line 440
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 443
    :sswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    iget-boolean v1, v1, Lobject/p2pipcam/adapter/CameraEditAdapter;->hasSelect:Z

    if-eqz v1, :cond_0

    .line 444
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showDelSureDialog()V

    goto/16 :goto_0

    .line 448
    :sswitch_4
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPopupWindow(Landroid/view/View;)V

    goto/16 :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800f8 -> :sswitch_1
        0x7f0800f9 -> :sswitch_2
        0x7f0800fa -> :sswitch_3
        0x7f0800fe -> :sswitch_4
        0x7f08012c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->requestWindowFeature(I)Z

    .line 146
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->setContentView(I)V

    .line 147
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findView()V

    .line 148
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->setControlListener()V

    .line 149
    new-instance v0, Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {v0, p0, p0}, Lobject/p2pipcam/adapter/CameraListAdapter;-><init>(Landroid/content/Context;Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    sput-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    .line 150
    new-instance v0, Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/CameraEditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    .line 151
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->cameraListView:Landroid/widget/ListView;

    sget-object v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 155
    new-instance v0, Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/SearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 157
    new-instance v0, Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/MyWifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    .line 168
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->initCameraList()V

    .line 170
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f060097

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V

    .line 175
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setIpcamClientInterface(Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;)V

    .line 176
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAlarmInterface(Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;)V

    .line 178
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Init()V

    .line 179
    invoke-static {}, Lcom/easyview/tutk/TUTKCamera;->init()V

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    sput-object p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 978
    sput-object v2, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 979
    const-string v0, "IpcamClientActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v0}, Lcom/easyview/camera/CameraList;->Stop()V

    .line 981
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v0, v2}, Lcom/easyview/camera/CameraList;->SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V

    .line 982
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    if-eqz v0, :cond_0

    .line 983
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 985
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 990
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 991
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move v3, p3

    .line 1091
    .local v3, "index":I
    const-string v7, "IpcamClientActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onItemClick "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    add-int/lit8 v3, p3, -0x1

    .line 1095
    if-nez p3, :cond_1

    .line 1096
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    .local v2, "in":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 1098
    const v7, 0x7f040001

    const v8, 0x7f040005

    invoke-virtual {p0, v7, v8}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    .line 1099
    const-string v7, "tag"

    const-string v8, "header"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v2    # "in":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    if-eqz v7, :cond_0

    .line 1104
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    if-eqz v7, :cond_0

    .line 1105
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v7, v3}, Lobject/p2pipcam/adapter/CameraEditAdapter;->getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 1106
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, "pwd":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1111
    .restart local v2    # "in":Landroid/content/Intent;
    const-string v7, "camera_option"

    .line 1112
    const/4 v8, 0x2

    .line 1111
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1113
    const-string v7, "camera_name"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const-string v7, "cameraid"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string v7, "camera_user"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v7, "camera_pwd"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 1118
    const v7, 0x7f040001

    const v8, 0x7f040005

    invoke-virtual {p0, v7, v8}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1729
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 1730
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showSureDialog(Landroid/content/Context;)V

    .line 1745
    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1734
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1735
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isNeedAppBackgroud()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1737
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->finish()V

    .line 1743
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1740
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 968
    const-string v0, "IpcamClientActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 970
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V

    .line 971
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setIpcamClientInterface(Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;)V

    .line 972
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAlarmInterface(Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;)V

    .line 973
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/CameraListAdapter;->QueryParams()V

    .line 975
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "IpcamClientActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onResume()V

    .line 793
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 952
    const-string v1, "IpcamClientActivity"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 954
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    if-nez v1, :cond_0

    .line 955
    new-instance v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    .line 956
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 957
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "object.ipcam.client.camerainforeceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v1, "back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v1, "other"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v1, "refresh_adapter_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v1, "object.ipcam.client.pushinforeceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->receiver:Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 965
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public scanResultToString(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, "listScan":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, "listStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1289
    return-void

    .line 1273
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1275
    .local v2, "strScan":Landroid/net/wifi/ScanResult;
    iget-object v1, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1276
    .local v1, "str":Ljava/lang/String;
    const-string v3, "IPC-AP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1277
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAlarm(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1035
    sget-object v4, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v4, p1}, Lobject/p2pipcam/adapter/CameraListAdapter;->getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v1

    .line 1036
    .local v1, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getAlarm()I

    move-result v4

    rsub-int/lit8 v0, v4, 0x1

    .line 1037
    .local v0, "alarm":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-virtual {v1, v0}, Lobject/p2pipcam/bean/CameraParamsBean;->setAlarm(I)V

    .line 1039
    invoke-virtual {v1}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, "did":Ljava/lang/String;
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    check-cast v2, Lcom/easyview/camera/EVBaseCamera;

    .line 1041
    .local v2, "camera":Lcom/easyview/camera/EVBaseCamera;
    if-eqz v2, :cond_0

    .line 1043
    invoke-virtual {v2}, Lcom/easyview/camera/EVBaseCamera;->getAlarm()Lcom/easyview/bean/AlermBean;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 1044
    invoke-virtual {v2}, Lcom/easyview/camera/EVBaseCamera;->getAlarm()Lcom/easyview/bean/AlermBean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/easyview/camera/EVBaseCamera;->setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method public showLightView(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 1223
    sget-object v7, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/adapter/CameraListAdapter;->getOnItem(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 1224
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    if-nez v0, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 1230
    .local v6, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v5

    .line 1231
    .local v5, "pwd":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getMode()I

    move-result v4

    .line 1233
    .local v4, "p2pMode":I
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    .local v2, "in":Landroid/content/Intent;
    const-string v7, "camera_type"

    .line 1235
    const/4 v8, 0x1

    .line 1234
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1236
    const-string v7, "stream_type"

    .line 1237
    const/4 v8, 0x3

    .line 1236
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1238
    const-string v7, "camera_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v7, "cameraid"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const-string v7, "camera_user"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    const-string v7, "camera_pwd"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v7, "camera_type"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1244
    const/4 v7, 0x2

    invoke-virtual {p0, v2, v7}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1245
    const v7, 0x7f040001

    const v8, 0x7f040005

    invoke-virtual {p0, v7, v8}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public showPlayView(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    .line 1125
    move v4, p1

    .line 1138
    .local v4, "index":I
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->isEdited:Z

    if-eqz v10, :cond_1

    .line 1139
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    if-eqz v10, :cond_0

    .line 1140
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-virtual {v10, v4}, Lobject/p2pipcam/adapter/CameraEditAdapter;->getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 1141
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1142
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v9

    .line 1144
    .local v9, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v7

    .line 1145
    .local v7, "pwd":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1146
    .local v3, "in":Landroid/content/Intent;
    const-string v10, "camera_option"

    .line 1147
    const/4 v11, 0x2

    .line 1146
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const-string v10, "camera_name"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v10, "cameraid"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const-string v10, "camera_user"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    const-string v10, "camera_pwd"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 1153
    const v10, 0x7f040001

    const v11, 0x7f040005

    invoke-virtual {p0, v10, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    .line 1220
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v2    # "did":Ljava/lang/String;
    .end local v3    # "in":Landroid/content/Intent;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "pwd":Ljava/lang/String;
    .end local v9    # "user":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    sget-object v10, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v10, v4}, Lobject/p2pipcam/adapter/CameraListAdapter;->getOnItem(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v0

    .line 1157
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "APMODEIPCAM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1163
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    const v11, 0x7f060013

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1165
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V

    .line 1166
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;

    invoke-direct {v11, p0, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$18;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pipcam/bean/CameraParamsBean;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1174
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 1178
    :cond_2
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v8

    .line 1179
    .local v8, "status":I
    const/4 v10, 0x5

    if-eq v8, v10, :cond_0

    .line 1182
    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    .line 1183
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 1184
    .restart local v2    # "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v9

    .line 1185
    .restart local v9    # "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v7

    .line 1187
    .restart local v7    # "pwd":Ljava/lang/String;
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;

    invoke-virtual {v10, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    .line 1188
    .local v1, "camera":Lcom/easyview/basecamera/BaseCamera;
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->getActivePeriod(I)I

    move-result v10

    const/16 v11, 0x1388

    if-le v10, v11, :cond_0

    .line 1190
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 1191
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 1192
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    goto :goto_0

    .line 1198
    .end local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    .end local v2    # "did":Ljava/lang/String;
    .end local v7    # "pwd":Ljava/lang/String;
    .end local v9    # "user":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v2

    .line 1199
    .restart local v2    # "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1200
    .restart local v5    # "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v9

    .line 1201
    .restart local v9    # "user":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v7

    .line 1202
    .restart local v7    # "pwd":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getMode()I

    move-result v6

    .line 1204
    .local v6, "p2pMode":I
    new-instance v3, Landroid/content/Intent;

    const-class v10, Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {v3, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1205
    .restart local v3    # "in":Landroid/content/Intent;
    const-string v10, "camera_type"

    .line 1206
    const/4 v11, 0x1

    .line 1205
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    const-string v10, "stream_type"

    .line 1208
    const/4 v11, 0x3

    .line 1207
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    const-string v10, "camera_name"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v10, "cameraid"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    const-string v10, "camera_user"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string v10, "camera_pwd"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    const-string v10, "camera_type"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    const/4 v10, 0x2

    invoke-virtual {p0, v3, v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1216
    const v10, 0x7f040001

    const v11, 0x7f040005

    invoke-virtual {p0, v10, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public showSetting(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const v10, 0x7f040005

    const v9, 0x7f040001

    .line 994
    sget-object v7, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/adapter/CameraListAdapter;->getItemCamera(I)Lobject/p2pipcam/bean/CameraParamsBean;

    move-result-object v2

    .line 995
    .local v2, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v6

    .line 996
    .local v6, "status":I
    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "APwifiname":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v7}, Lobject/p2pipcam/utils/MyWifiUtils;->getConnectedSSID()Ljava/lang/String;

    move-result-object v5

    .line 998
    .local v5, "nowWifiName":Ljava/lang/String;
    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "devWifiName":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1002
    const/4 v1, 0x1

    .line 1003
    .local v1, "authority":Z
    if-eqz v1, :cond_0

    .line 1004
    new-instance v4, Landroid/content/Intent;

    .line 1005
    const-class v7, Lobject/p2pwificam/clientActivity/SettingActivity;

    .line 1004
    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1006
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "cameraid"

    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v7, "camera_name"

    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 1009
    invoke-virtual {p0, v9, v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    .line 1032
    .end local v1    # "authority":Z
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1011
    .restart local v1    # "authority":Z
    :cond_0
    const v7, 0x7f060066

    invoke-virtual {p0, v7}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    goto :goto_0

    .line 1013
    .end local v1    # "authority":Z
    :cond_1
    const-string v7, "APMODEIPCAM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1016
    new-instance v4, Landroid/content/Intent;

    .line 1017
    const-class v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 1016
    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1018
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "cameraid"

    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v7, "camera_name"

    invoke-virtual {v2}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v7, "\u4e00\u952e\u914d\u7f6e\u65f6\u95f4\u8f83\u957f\uff0c\u8bf7\u8010\u5fc3\u64cd\u4f5c\uff01"

    invoke-virtual {p0, v7}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 1023
    invoke-virtual {p0, v9, v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1030
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    const v7, 0x7f060060

    invoke-virtual {p0, v7}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showToast(I)V

    goto :goto_0
.end method
