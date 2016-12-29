.class public Lobject/p2pipcam/utils/SearchBellUtil;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;,
        Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;,
        Lobject/p2pipcam/utils/SearchBellUtil$_Step;
    }
.end annotation


# instance fields
.field private _UID:Ljava/lang/String;

.field private _addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

.field private _context:Landroid/app/Activity;

.field private _dev_ssid:Ljava/lang/String;

.field private _deviceName:Ljava/lang/String;

.field private _port:I

.field private _stopSearch:Z

.field private _wifiUtils:Lcom/easyview/common/WifiUtils;

.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private progressdlg:Landroid/app/ProgressDialog;

.field private wifi_ap_prefixs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    .line 33
    const-string v3, ""

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    .line 34
    const-string v3, ""

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_deviceName:Ljava/lang/String;

    .line 40
    iput-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    .line 41
    iput-boolean v5, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    .line 62
    new-instance v3, Lobject/p2pipcam/utils/SearchBellUtil$1;

    invoke-direct {v3, p0}, Lobject/p2pipcam/utils/SearchBellUtil$1;-><init>(Lobject/p2pipcam/utils/SearchBellUtil;)V

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 45
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    .line 46
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    .line 47
    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 48
    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    const v4, 0x7f060097

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    iput-boolean v5, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    .line 51
    new-instance v3, Lcom/easyview/common/WifiUtils;

    invoke-direct {v3, p1}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    .line 53
    invoke-static {p1}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cameraUser":Ljava/lang/String;
    const v3, 0x7f060003

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "searchPort":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_port:I

    .line 57
    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v3, 0x7f0a0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->wifi_ap_prefixs:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/SearchBellUtil;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    return-void
.end method

.method static synthetic access$10(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_deviceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/SearchBellUtil;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lobject/p2pipcam/utils/SearchBellUtil;->search()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/SearchBellUtil;)Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lobject/p2pipcam/utils/SearchBellUtil;->searchDeviceWifiAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/SearchBellUtil;)Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_deviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pipcam/utils/SearchBellUtil;)Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lobject/p2pipcam/utils/SearchBellUtil;->isDeviceWifiAp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    return-void
.end method

.method private isDeviceWifiAp()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v3}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 146
    :goto_1
    return v2

    .line 141
    :cond_0
    aget-object v0, v4, v3

    .line 142
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    const/4 v2, 0x1

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private search()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v4, Lobject/p2pipcam/utils/SearchBellUtil$2;

    invoke-direct {v4, p0}, Lobject/p2pipcam/utils/SearchBellUtil$2;-><init>(Lobject/p2pipcam/utils/SearchBellUtil;)V

    .line 76
    iget v5, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_port:I

    .line 70
    invoke-static {v4, v5}, Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V

    .line 77
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 78
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/4 v4, 0x4

    if-lt v1, v4, :cond_2

    .line 88
    :cond_0
    iget-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    :cond_1
    :goto_1
    return v3

    .line 80
    :cond_2
    iget-boolean v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    if-nez v4, :cond_1

    .line 82
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_2
    iget-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 83
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private searchDeviceWifiAP()Z
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 94
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 96
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v9, 0xa

    if-lt v1, v9, :cond_3

    .line 106
    :cond_0
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    const v10, 0x7f0601ca

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lobject/p2pipcam/utils/SearchBellUtil;->showMessage(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    move v1, v0

    .line 108
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/4 v9, 0x6

    if-lt v1, v9, :cond_4

    :cond_1
    move v7, v8

    .line 136
    :cond_2
    return v7

    .line 98
    :cond_3
    iget-boolean v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    if-nez v9, :cond_0

    .line 99
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->WifiEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 101
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 102
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 110
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "count":I
    :cond_4
    iget-boolean v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    if-nez v9, :cond_1

    .line 111
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 131
    :cond_6
    const-wide/16 v9, 0x3e8

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    .line 132
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 111
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 112
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-boolean v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    if-nez v9, :cond_6

    .line 113
    iget-object v11, p0, Lobject/p2pipcam/utils/SearchBellUtil;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v12, v11

    move v9, v8

    :goto_2
    if-ge v9, v12, :cond_5

    aget-object v3, v11, v9

    .line 114
    .local v3, "prefix":Ljava/lang/String;
    iget-object v13, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 115
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    const v11, 0x7f0601cb

    invoke-virtual {v9, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v11, v7, [Ljava/lang/Object;

    iget-object v12, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lobject/p2pipcam/utils/SearchBellUtil;->showMessage(Ljava/lang/String;)V

    .line 116
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    iget-object v11, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 117
    iget-object v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    const v11, 0x7f0601cc

    invoke-virtual {v9, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v11, v7, [Ljava/lang/Object;

    iget-object v12, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lobject/p2pipcam/utils/SearchBellUtil;->showMessage(Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x0

    .local v5, "s_count":I
    move v6, v5

    .line 119
    .end local v5    # "s_count":I
    .local v6, "s_count":I
    :goto_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "s_count":I
    .restart local v5    # "s_count":I
    const/16 v9, 0x8

    if-ge v6, v9, :cond_5

    .line 121
    iget-boolean v9, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_stopSearch:Z

    if-nez v9, :cond_5

    .line 122
    invoke-direct {p0}, Lobject/p2pipcam/utils/SearchBellUtil;->search()Z

    move-result v9

    if-nez v9, :cond_2

    move v6, v5

    .end local v5    # "s_count":I
    .restart local v6    # "s_count":I
    goto :goto_3

    .line 113
    .end local v6    # "s_count":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 132
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;

    new-instance v1, Lobject/p2pipcam/utils/SearchBellUtil$3;

    invoke-direct {v1, p0, p1}, Lobject/p2pipcam/utils/SearchBellUtil$3;-><init>(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method


# virtual methods
.method public StartSearch(Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;)Ljava/lang/String;
    .locals 3
    .param p1, "listener"    # Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    .prologue
    .line 188
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    .line 189
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;-><init>(Lobject/p2pipcam/utils/SearchBellUtil;Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;

    return-object v0
.end method
