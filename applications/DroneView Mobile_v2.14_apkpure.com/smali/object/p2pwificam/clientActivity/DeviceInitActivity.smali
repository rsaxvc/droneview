.class public Lobject/p2pwificam/clientActivity/DeviceInitActivity;
.super Landroid/app/Activity;
.source "DeviceInitActivity.java"

# interfaces
.implements Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;,
        Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step:[I = null

.field public static final DEV_AP_PREFIX:Ljava/lang/String; = "EVCAM-"


# instance fields
.field private _camInfo:Lcom/easyview/common/EV_NetInfo;

.field private _cgiUtils:Lcom/easyview/common/CgiUtils;

.field private _config_success:Z

.field private _dev_ssid:Ljava/lang/String;

.field private _find_p2p:Z

.field private _p2p_id:Ljava/lang/String;

.field private _p2p_name:Ljava/lang/String;

.field private _text_password:Landroid/widget/EditText;

.field private _thread:Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;

.field private _tvSSID:Landroid/widget/TextView;

.field private _wifiPassword:Ljava/lang/String;

.field private _wifiUtils:Lcom/easyview/common/WifiUtils;

.field private btnCancel:Landroid/widget/Button;

.field private btnCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private btnConfigListener:Landroid/view/View$OnClickListener;

.field private btnOK:Landroid/widget/Button;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private progressdlg:Landroid/app/ProgressDialog;

.field private wifi_ap_prefixs:[Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->$SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->values()[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->COINFIG_FAIL:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_FINISH:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONFIG_WIFI:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->CONNECT_NET:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->FIND_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_AP:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_DEV:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->$SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 59
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 92
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$1;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnConfigListener:Landroid/view/View$OnClickListener;

    .line 365
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$2;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_find_p2p:Z

    return-void
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_config_success:Z

    return v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_text_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_thread:Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_thread:Lobject/p2pwificam/clientActivity/DeviceInitActivity$ThreadConfig;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->doConfig(Ljava/lang/Thread;)V

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_id:Ljava/lang/String;

    return-void
.end method

.method private doConfig(Ljava/lang/Thread;)V
    .locals 13
    .param p1, "thead"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v8, 0x0

    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_config_success:Z

    .line 202
    sget-object v6, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->SEARCH_AP:Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .line 203
    .local v6, "step":Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;
    const/4 v4, 0x1

    .line 204
    .local v4, "run":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v4, :cond_2

    .line 306
    :cond_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8}, Lcom/easyview/common/WifiUtils;->Connect()Z

    .line 307
    const-string v8, ""

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showMessage(Ljava/lang/String;)V

    .line 308
    if-nez v4, :cond_1

    .line 310
    new-instance v8, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    :cond_1
    return-void

    .line 207
    :cond_2
    const-string v8, "%s \u2026"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getStepMessage(Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showMessage(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->$SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step()[I

    move-result-object v8

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 300
    const/4 v4, 0x0

    .line 304
    :cond_3
    :goto_1
    invoke-static {}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->values()[Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    move-result-object v8

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-object v6, v8, v9

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->searchDeviceWifiAP()Z

    move-result v8

    if-nez v8, :cond_3

    .line 216
    const/4 v4, 0x0

    .line 218
    goto :goto_1

    .line 222
    :pswitch_1
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 225
    const/4 v4, 0x0

    .line 227
    goto :goto_1

    .line 231
    :pswitch_2
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/easyview/common/CamUtils;->SearchOneInfo(I)Lcom/easyview/common/EV_NetInfo;

    move-result-object v8

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    .line 232
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    if-nez v8, :cond_4

    .line 234
    const/4 v4, 0x0

    .line 236
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_find_p2p:Z

    .line 237
    const v8, 0x7f060005

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "supportTUTK":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 240
    new-instance v8, Lobject/p2pwificam/clientActivity/DeviceInitActivity$6;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$6;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    invoke-static {v8}, Lcom/easyview/tutk/TUTKCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;)V

    .line 249
    :cond_5
    iget-boolean v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_find_p2p:Z

    if-nez v8, :cond_3

    .line 251
    const-string v8, "camera_info"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 252
    .local v3, "preference":Landroid/content/SharedPreferences;
    const-string v8, "camera_user"

    const-string v9, "admin"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "cameraUser":Ljava/lang/String;
    const v8, 0x7f060003

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "searchPort":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, "port":I
    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 257
    new-instance v8, Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$7;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V

    invoke-static {v8, v2}, Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V

    .line 264
    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 274
    .end local v0    # "cameraUser":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "preference":Landroid/content/SharedPreferences;
    .end local v5    # "searchPort":Ljava/lang/String;
    .end local v7    # "supportTUTK":Ljava/lang/String;
    :pswitch_3
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_cgiUtils:Lcom/easyview/common/CgiUtils;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    iget-object v9, v9, Lcom/easyview/common/EV_NetInfo;->IP:Ljava/lang/String;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v10}, Lcom/easyview/common/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiPassword:Ljava/lang/String;

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v12}, Lcom/easyview/common/WifiUtils;->getKeyType()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/easyview/common/CgiUtils;->ConfigWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 279
    :pswitch_4
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8}, Lcom/easyview/common/WifiUtils;->Connect()Z

    goto/16 :goto_1

    .line 284
    :pswitch_5
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    const/16 v9, 0x32

    invoke-static {v8, v9}, Lcom/easyview/common/CamUtils;->findInfo(Lcom/easyview/common/EV_NetInfo;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 286
    const/4 v8, 0x1

    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_config_success:Z

    .line 287
    const v8, 0x7f0601d0

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showToastText(I)V

    .line 288
    const v8, 0x7f0601d0

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showMessage(Ljava/lang/String;)V

    .line 295
    :goto_2
    const/4 v4, 0x0

    .line 296
    goto/16 :goto_1

    .line 292
    :cond_6
    const v8, 0x7f0601d1

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showToastText(I)V

    .line 293
    const v8, 0x7f0601d1

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getStepMessage(Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;)Ljava/lang/String;
    .locals 4
    .param p1, "step"    # Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->$SWITCH_TABLE$object$p2pwificam$clientActivity$DeviceInitActivity$Config_Step()[I

    move-result-object v0

    invoke-virtual {p1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$Config_Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    const-string v0, ""

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const v0, 0x7f0601ca

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_1
    const v0, 0x7f0601cb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_2
    const v0, 0x7f0601cc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_3
    const v0, 0x7f0601cd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_4
    const v0, 0x7f0601ce

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_5
    const v0, 0x7f0601cf

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private searchDeviceWifiAP()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 145
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 146
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v7, 0x14

    if-lt v1, v7, :cond_0

    .line 172
    :goto_1
    return v6

    .line 148
    :cond_0
    const/16 v3, -0x3c

    .line 149
    .local v3, "level":I
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v7}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 165
    const/16 v7, -0x3c

    if-le v3, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    .line 149
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 151
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v10, v9

    move v7, v6

    :goto_3
    if-ge v7, v10, :cond_1

    aget-object v4, v9, v7

    .line 153
    .local v4, "prefix":Ljava/lang/String;
    iget-object v11, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 155
    iget v7, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v7, v3, :cond_1

    .line 157
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v7, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_dev_ssid:Ljava/lang/String;

    .line 158
    iget v3, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 161
    goto :goto_2

    .line 151
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 167
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 168
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$5;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$5;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private showToastText(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 122
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$4;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;I)V

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method private showToastText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$3;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity$3;-><init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method


# virtual methods
.method public callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    .line 392
    iput-object p4, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_id:Ljava/lang/String;

    .line 393
    iput-object p3, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_name:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const v0, 0x7f0601c9

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->showToastText(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f0601d9

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->setContentView(I)V

    .line 68
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_text_password:Landroid/widget/EditText;

    .line 69
    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_tvSSID:Landroid/widget/TextView;

    .line 71
    new-instance v1, Lcom/easyview/common/WifiUtils;

    invoke-direct {v1, p0}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    .line 72
    new-instance v1, Lcom/easyview/common/CgiUtils;

    invoke-direct {v1}, Lcom/easyview/common/CgiUtils;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_cgiUtils:Lcom/easyview/common/CgiUtils;

    .line 73
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_tvSSID:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v2}, Lcom/easyview/common/WifiUtils;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;

    .line 76
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnConfigListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancel:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancel:Landroid/widget/Button;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V

    .line 81
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 83
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 84
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 85
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;

    const v2, 0x7f06009a

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 88
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    .line 91
    return-void
.end method
