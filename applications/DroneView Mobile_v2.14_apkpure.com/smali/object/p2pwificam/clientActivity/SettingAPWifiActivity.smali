.class public Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;"
    }
.end annotation


# static fields
.field private static final INITTIMEOUT:I = 0x2710

.field static devCamName:Ljava/lang/String;

.field static devDID:Ljava/lang/String;


# instance fields
.field private CAMERAPARAM:I

.field private CameraType:I

.field private final END:I

.field private LOG_TAG:Ljava/lang/String;

.field private final NO:I

.field private final OVER:I

.field private final SCANPARAMS:I

.field private final TIMEOUT:I

.field private final WEP:I

.field private final WIFIPARAMS:I

.field private final WPA2_PSK_AES:I

.field private final WPA2_PSK_TKIP:I

.field private final WPA_PSK_AES:I

.field private final WPA_PSK_TKIP:I

.field private _thread:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;

.field private btnCancel:Landroid/widget/Button;

.field private btnConfiguration:Landroid/widget/Button;

.field private btnManager:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private cbxShowPwd:Landroid/widget/CheckBox;

.field private changeWifiFlag:Z

.field private devAPDID:Ljava/lang/String;

.field devhandler:Landroid/os/Handler;

.field dishandler:Landroid/os/Handler;

.field donehandler:Landroid/os/Handler;

.field private editPwd:Landroid/widget/EditText;

.field private editText_wifi_chanal:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field private imgDropDown:Landroid/widget/ImageView;

.field private isTimerOver:Z

.field private listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

.field listhandler:Landroid/os/Handler;

.field private localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

.field private mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

.field public mHadler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field public mRunnable:Ljava/lang/Runnable;

.field private mThread:Ljava/lang/Thread;

.field private mTimerTimeOut:Ljava/util/Timer;

.field private option:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field private progressdlg:Landroid/app/ProgressDialog;

.field private pwdView:Landroid/view/View;

.field private result:I

.field private signalView:Landroid/view/View;

.field private strOldDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvName:Landroid/widget/TextView;

.field private tvPrompt:Landroid/widget/TextView;

.field private tvSafe:Landroid/widget/TextView;

.field private tvSigal:Landroid/widget/TextView;

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

.field wifi_name:Ljava/lang/String;

.field wifi_pwd:Ljava/lang/String;

.field wifihandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 144
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 85
    const-string v0, "SettingWifiActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->LOG_TAG:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->changeWifiFlag:Z

    .line 89
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->successFlag:Z

    .line 91
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->END:I

    .line 93
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WIFIPARAMS:I

    .line 94
    iput v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->SCANPARAMS:I

    .line 95
    iput v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->OVER:I

    .line 96
    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->TIMEOUT:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->CAMERAPARAM:I

    .line 99
    iput v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->NO:I

    .line 100
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WEP:I

    .line 101
    iput v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WPA_PSK_AES:I

    .line 102
    iput v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WPA_PSK_TKIP:I

    .line 103
    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WPA2_PSK_AES:I

    .line 104
    const/4 v0, 0x5

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->WPA2_PSK_TKIP:I

    .line 106
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->isTimerOver:Z

    .line 130
    const v0, 0xffff

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->strOldDID:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 140
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->CameraType:I

    .line 342
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifihandler:Landroid/os/Handler;

    .line 464
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->donehandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->handler:Landroid/os/Handler;

    .line 625
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devhandler:Landroid/os/Handler;

    .line 682
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->dishandler:Landroid/os/Handler;

    .line 700
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->listhandler:Landroid/os/Handler;

    .line 832
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mRunnable:Ljava/lang/Runnable;

    .line 853
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$8;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mHadler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->done()V

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->_thread:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->_thread:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 867
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->refresh()V

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->doConfig()V

    return-void
.end method

.method private config_wifi(Lcom/easyview/common/EV_NetInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/easyview/common/EV_NetInfo;

    .prologue
    const/4 v7, 0x3

    .line 448
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wifi_name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wifi_pwd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "info.IP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/easyview/common/EV_NetInfo;->IP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "http://%s/cgi-bin/setwifiattr.cgi?cmd=setwifiattr&-wktype=%d&-wepid=0&-enable=1&-ssid=%s&-key=%s&"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 450
    iget-object v6, p1, Lcom/easyview/common/EV_NetInfo;->IP:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 449
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, "u":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    .end local v1    # "u":Ljava/net/URL;
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doConfig()V
    .locals 5

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 425
    .local v1, "hadConfig":Z
    :cond_0
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/easyview/common/EVIPCam;->Search(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 431
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/easyview/common/EV_NetInfo;>;"
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/easyview/common/EV_NetInfo;

    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->config_wifi(Lcom/easyview/common/EV_NetInfo;)V

    .line 439
    const/4 v1, 0x1

    .line 444
    return-void

    .line 426
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/easyview/common/EV_NetInfo;>;"
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private done()V
    .locals 10

    .prologue
    const v9, 0xffff

    .line 769
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 770
    .local v0, "in":Landroid/content/Intent;
    sget-object v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 771
    .local v3, "strDevName":Ljava/lang/String;
    const-string v5, "admin"

    .line 772
    .local v5, "strUser":Ljava/lang/String;
    const-string v4, "888888"

    .line 773
    .local v4, "strPwd":Ljava/lang/String;
    sget-object v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 774
    .local v2, "strDID":Ljava/lang/String;
    const-string v1, "0"

    .line 779
    .local v1, "isdel":Ljava/lang/String;
    const-string v6, "strDIDtag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "devCamName---:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "devDID----:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "strUser:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "strPwd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 781
    const v6, 0x7f060076

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showToast(I)V

    .line 812
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 786
    const v6, 0x7f06007c

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showToast(I)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 791
    const v6, 0x7f060079

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showToast(I)V

    goto :goto_0

    .line 794
    :cond_2
    const-string v6, "object.ipcam.client.camerainforeceiver"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    iget v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    if-ne v6, v9, :cond_3

    .line 796
    const/4 v6, 0x1

    iput v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    .line 798
    :cond_3
    const-string v6, "camera_option"

    iget v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    iget v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    if-eq v6, v9, :cond_4

    .line 800
    const-string v6, "camera_old_id"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->strOldDID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    :cond_4
    const-string v6, "camera_name"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v6, "cameraid"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v6, "camera_user"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v6, "camera_pwd"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v6, "camera_type"

    iget v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->CameraType:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    const-string v6, "cameraName"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cameraName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v6, "devAPDID"

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->finish()V

    goto :goto_0
.end method

.method private findView()V
    .locals 6

    .prologue
    .line 199
    const v4, 0x7f0802df

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->imgDropDown:Landroid/widget/ImageView;

    .line 200
    const v4, 0x7f0802dc

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnOk:Landroid/widget/Button;

    .line 201
    const v4, 0x7f0802db

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnCancel:Landroid/widget/Button;

    .line 202
    const v4, 0x7f0802eb

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    .line 203
    const v4, 0x7f0802ec

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    .line 204
    const v4, 0x7f0802de

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvName:Landroid/widget/TextView;

    .line 205
    const v4, 0x7f0802e0

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvPrompt:Landroid/widget/TextView;

    .line 206
    const v4, 0x7f0802e5

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvSafe:Landroid/widget/TextView;

    .line 207
    const v4, 0x7f0802e3

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvSigal:Landroid/widget/TextView;

    .line 208
    const v4, 0x7f0802ea

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 209
    const v4, 0x7f0802e7

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnManager:Landroid/widget/Button;

    .line 210
    const v4, 0x7f0802e8

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnConfiguration:Landroid/widget/Button;

    .line 211
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnConfiguration:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    const v4, 0x7f0802e9

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->pwdView:Landroid/view/View;

    .line 213
    const v4, 0x7f0802e1

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->signalView:Landroid/view/View;

    .line 215
    const v4, 0x7f0802e6

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    .line 216
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 217
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 218
    const v5, 0x7f02015e

    .line 217
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 221
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 223
    const v4, 0x7f0802e4

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 224
    .local v3, "safelinearLayout":Landroid/widget/LinearLayout;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvName:Landroid/widget/TextView;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvPrompt:Landroid/widget/TextView;

    const-string v5, "\u8bbe\u5907\u70ed\u70b9"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method private getDataFromOther()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;

    .line 185
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cameraName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 869
    const-string v0, "strDIDtag"

    const-string v1, "qq"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u914d\u7f6e\uff0c\u8bf7\u7b49\u5f85\uff01"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 872
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 873
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->imgDropDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnManager:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnConfiguration:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    .line 821
    sput-object p3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 822
    sput-object p4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 823
    const-string v0, "strDIDtag"

    const-string v1, "AP"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-virtual {v0, p2, p3, p4}, Lobject/p2pipcam/adapter/SearchListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :cond_0
    return-void
.end method

.method public getDevInfo()V
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 621
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 624
    return-void
.end method

.method public getWifiInfo()V
    .locals 3

    .prologue
    .line 536
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 537
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiOpen()V

    .line 538
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiStartScan()V

    .line 540
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiCheckState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 544
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiResultList:Ljava/util/List;

    .line 550
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/MyWifiUtils;->getConfiguration()V

    .line 551
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "WIFIButtonListener"

    const-string v2, "dataChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiResultList:Ljava/util/List;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->scanResultToString(Ljava/util/List;Ljava/util/List;)V

    .line 555
    :cond_0
    return-void

    .line 541
    :cond_1
    const-string v1, "WifiState"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-virtual {v2}, Lobject/p2pipcam/utils/MyWifiUtils;->WifiCheckState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getWifiType()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 504
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 505
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 506
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 526
    if-eqz p2, :cond_0

    .line 527
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 528
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 531
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 264
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->pwdView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiInfo()V

    .line 267
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 268
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 271
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->setListViewHeight()V

    goto :goto_0

    .line 276
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 277
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 278
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    const-string v2, "\u6b63\u5728\u914d\u7f6e\uff0c\u8bf7\u52ff\u64cd\u4f5c\uff01"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 280
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 282
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    .line 284
    const-string v1, "strDIDtag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_pwd.length():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 286
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u5c0f\u4e8e8\u4f4d"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :sswitch_2
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showSureDialogPlay(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 334
    :sswitch_3
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->finish()V

    .line 335
    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x7f0802db -> :sswitch_3
        0x7f0802dc -> :sswitch_2
        0x7f0802e7 -> :sswitch_0
        0x7f0802e8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getDataFromOther()V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->requestWindowFeature(I)Z

    .line 156
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "camera_option"

    .line 159
    const v2, 0xffff

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->option:I

    .line 161
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 162
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 164
    new-instance v1, Lobject/p2pipcam/utils/MyWifiUtils;

    invoke-direct {v1, p0}, Lobject/p2pipcam/utils/MyWifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->localWifiUtils:Lobject/p2pipcam/utils/MyWifiUtils;

    .line 167
    new-instance v1, Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-direct {v1, p0}, Lobject/p2pipcam/adapter/SearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->listAdapterSearch:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 169
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->findView()V

    .line 170
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->setListener()V

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 517
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifiListString:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->tvPrompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 519
    const v2, 0x7f0600ba

    .line 518
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->pwdView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->editPwd:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 377
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 379
    const-string v0, "strDIDtag"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "\u6b63\u5728\u8fdb\u884c\u4e00\u952e\u914d\u7f6e\uff01"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->showToast(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    .line 384
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 385
    const-string v0, "strDIDtag"

    const-string v1, "MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 147
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->overridePendingTransition(II)V

    .line 148
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 149
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
    .line 559
    .local p1, "listScan":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, "listStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 576
    return-void

    .line 560
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 562
    .local v2, "strScan":Landroid/net/wifi/ScanResult;
    iget-object v1, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 563
    .local v1, "str":Ljava/lang/String;
    const-string v3, "IPC-AP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 564
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setListViewHeight()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 230
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 231
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v5, 0x0

    .line 236
    .local v5, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 241
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 243
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x2

    .line 242
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 237
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-interface {v0, v1, v6, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 238
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u5b9a\u9000\u51fa\u5f53\u524d\u64cd\u4f5c\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 362
    const v1, 0x7f06000c

    .line 363
    new-instance v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$10;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 373
    return-void
.end method
