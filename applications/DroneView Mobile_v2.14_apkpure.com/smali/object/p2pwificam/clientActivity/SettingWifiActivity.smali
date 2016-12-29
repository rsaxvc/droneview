.class public Lobject/p2pwificam/clientActivity/SettingWifiActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lobject/p2pwificam/clientActivity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;"
    }
.end annotation


# static fields
.field private static final INITTIMEOUT:I = 0x2710


# instance fields
.field private CAMERAPARAM:I

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

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnManager:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private cbxShowPwd:Landroid/widget/CheckBox;

.field private changeWifiFlag:Z

.field private editPwd:Landroid/widget/EditText;

.field private editText_wifi_chanal:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imgDropDown:Landroid/widget/ImageView;

.field private isConnected:Z

.field private isTimerOver:Z

.field private mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mTimerTimeOut:Ljava/util/Timer;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private pwdView:Landroid/view/View;

.field private result:I

.field private runnable:Ljava/lang/Runnable;

.field private scanDialog:Landroid/app/ProgressDialog;

.field private settingRunnable:Ljava/lang/Runnable;

.field private signalView:Landroid/view/View;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvCameraName:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvPrompt:Landroid/widget/TextView;

.field private tvSafe:Landroid/widget/TextView;

.field private tvSigal:Landroid/widget/TextView;

.field private wifiBean:Lcom/easyview/bean/WifiBean;

.field private wifi_ap_prefixs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 70
    const-string v0, "SettingWifiActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->changeWifiFlag:Z

    .line 74
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->successFlag:Z

    .line 76
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->END:I

    .line 78
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WIFIPARAMS:I

    .line 79
    iput v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->SCANPARAMS:I

    .line 80
    iput v4, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->OVER:I

    .line 81
    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->TIMEOUT:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->CAMERAPARAM:I

    .line 84
    iput v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->NO:I

    .line 85
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WEP:I

    .line 86
    iput v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WPA_PSK_AES:I

    .line 87
    iput v4, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WPA_PSK_TKIP:I

    .line 88
    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WPA2_PSK_AES:I

    .line 89
    const/4 v0, 0x5

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->WPA2_PSK_TKIP:I

    .line 91
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isTimerOver:Z

    .line 112
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isConnected:Z

    .line 119
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->handler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->runnable:Ljava/lang/Runnable;

    .line 573
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->settingRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isTimerOver:Z

    return v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mTimerTimeOut:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lobject/p2pipcam/adapter/WifiScanListAdapter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->settingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->result:I

    return v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSigal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->signalView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isTimerOver:Z

    return-void
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/SettingWifiActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->result:I

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isConnected:Z

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findView()V
    .locals 5

    .prologue
    .line 359
    const v3, 0x7f0802df

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->imgDropDown:Landroid/widget/ImageView;

    .line 360
    const v3, 0x7f0802dc

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;

    .line 361
    const v3, 0x7f0802db

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 362
    const v3, 0x7f0802eb

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    .line 363
    const v3, 0x7f0802ec

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    .line 364
    const v3, 0x7f0802de

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;

    .line 365
    const v3, 0x7f0802e0

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;

    .line 366
    const v3, 0x7f0802e5

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;

    .line 367
    const v3, 0x7f0802e3

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSigal:Landroid/widget/TextView;

    .line 368
    const v3, 0x7f0802ea

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 369
    const v3, 0x7f0802e7

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnManager:Landroid/widget/Button;

    .line 370
    const v3, 0x7f0802e9

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;

    .line 371
    const v3, 0x7f0802e1

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->signalView:Landroid/view/View;

    .line 372
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvCameraName:Landroid/widget/TextView;

    .line 373
    const v3, 0x7f0802e6

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    .line 374
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 375
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 376
    const v4, 0x7f02015e

    .line 375
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 379
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 381
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;

    .line 332
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->cameraName:Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 335
    return-void
.end method

.method private isAP()Z
    .locals 8

    .prologue
    .line 663
    new-instance v3, Lcom/easyview/common/WifiUtils;

    invoke-direct {v3, p0}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    .line 664
    .local v3, "wifiUtils":Lcom/easyview/common/WifiUtils;
    invoke-virtual {v3}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "ssid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 666
    .local v0, "isConnectAP":Z
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 674
    :goto_1
    return v0

    .line 666
    :cond_0
    aget-object v1, v5, v4

    .line 668
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    const/4 v0, 0x1

    .line 671
    goto :goto_1

    .line 666
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private judgeAP()V
    .locals 9

    .prologue
    .line 639
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isConnected:Z

    if-nez v5, :cond_1

    .line 660
    :cond_0
    return-void

    .line 640
    :cond_1
    new-instance v4, Lcom/easyview/common/WifiUtils;

    invoke-direct {v4, p0}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    .line 641
    .local v4, "wifiUtils":Lcom/easyview/common/WifiUtils;
    invoke-virtual {v4}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "ssid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 643
    .local v0, "isConnectAP":Z
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v7, :cond_3

    .line 651
    :goto_1
    if-eqz v0, :cond_0

    .line 652
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v5}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v4}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 655
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 657
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;

    invoke-static {v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPRebootDevice(Ljava/lang/String;)I

    goto :goto_2

    .line 643
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    aget-object v1, v6, v5

    .line 645
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 647
    const/4 v0, 0x1

    .line 648
    goto :goto_1

    .line 643
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->imgDropDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnManager:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 356
    return-void
.end method

.method private setTimeOut()V
    .locals 4

    .prologue
    .line 456
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    .line 465
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mTimerTimeOut:Ljava/util/Timer;

    .line 466
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mTimerTimeOut:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 467
    return-void
.end method

.method private setWifi()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 470
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-nez v6, :cond_0

    .line 471
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 472
    :cond_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 473
    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/WifiBean;->setChannel(I)V

    .line 478
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->changeWifiFlag:Z

    if-eqz v6, :cond_5

    .line 479
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editPwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "pwd":Ljava/lang/String;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "ssid":Ljava/lang/String;
    :try_start_0
    const-string v6, "GBK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 483
    .local v0, "bs":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ssid":Ljava/lang/String;
    .local v5, "ssid":Ljava/lang/String;
    move-object v4, v5

    .line 489
    .end local v0    # "bs":[B
    .end local v5    # "ssid":Ljava/lang/String;
    .restart local v4    # "ssid":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v6}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v6

    if-nez v6, :cond_2

    .line 490
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/easyview/bean/WifiBean;->setWpa_psk(Ljava/lang/String;)V

    .line 491
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/easyview/bean/WifiBean;->setKey1(Ljava/lang/String;)V

    .line 507
    :goto_1
    :try_start_1
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setttingTimeOut()V

    .line 510
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    new-instance v8, Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$9;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/easyview/basecamera/BaseCamera;->setWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 520
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    const/4 v7, 0x1

    .line 518
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 521
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ssid":Ljava/lang/String;
    :goto_2
    return-void

    .line 475
    :cond_1
    const v6, 0x7f0600b4

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->showToast(I)V

    goto :goto_2

    .line 484
    .restart local v3    # "pwd":Ljava/lang/String;
    .restart local v4    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 493
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 494
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v6}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 495
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v6, v3}, Lcom/easyview/bean/WifiBean;->setKey1(Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v6, v3}, Lcom/easyview/bean/WifiBean;->setWpa_psk(Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :cond_3
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v6, v3}, Lcom/easyview/bean/WifiBean;->setWpa_psk(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :cond_4
    const v6, 0x7f06001d

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->showToast(I)V

    goto :goto_2

    .line 534
    :catch_1
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    const v6, 0x7f0600bc

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->showToast(I)V

    .line 536
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->finish()V

    .line 560
    const-string v6, "taggg"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v8}, Lcom/easyview/bean/WifiBean;->getChannel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v8}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setttingTimeOut()V
    .locals 4

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->successFlag:Z

    .line 570
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->settingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 571
    return-void
.end method


# virtual methods
.method public callBackPPPPMsgNotifyData(Ljava/lang/String;II)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "param"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    if-nez p2, :cond_0

    .line 759
    iput p3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->CAMERAPARAM:I

    .line 762
    :cond_0
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 747
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput p3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->result:I

    .line 749
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    return-void
.end method

.method public callBackWifiParams(Ljava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "channel"    # I
    .param p5, "mode"    # I
    .param p6, "authtype"    # I
    .param p7, "encryp"    # I
    .param p8, "keyformat"    # I
    .param p9, "defkey"    # I
    .param p10, "key1"    # Ljava/lang/String;
    .param p11, "key2"    # Ljava/lang/String;
    .param p12, "key3"    # Ljava/lang/String;
    .param p13, "key4"    # Ljava/lang/String;
    .param p14, "key1_bits"    # I
    .param p15, "key2_bits"    # I
    .param p16, "key3_bits"    # I
    .param p17, "key4_bits"    # I
    .param p18, "wpa_psk"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v1, "shix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "did:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 687
    const-string v3, " channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " authtype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encryp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 688
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wpa_psk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, p1}, Lcom/easyview/bean/WifiBean;->setDid(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, p2}, Lcom/easyview/bean/WifiBean;->setEnable(I)V

    .line 693
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, p3}, Lcom/easyview/bean/WifiBean;->setSsid(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, p4}, Lcom/easyview/bean/WifiBean;->setChannel(I)V

    .line 695
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setMode(I)V

    .line 696
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    add-int/lit8 v2, p6, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setAuthtype(I)V

    .line 697
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setEncryp(I)V

    .line 698
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKeyformat(I)V

    .line 699
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setDefkey(I)V

    .line 700
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, p10}, Lcom/easyview/bean/WifiBean;->setKey1(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey2(Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey3(Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey4(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey1_bits(I)V

    .line 705
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey2_bits(I)V

    .line 706
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey3_bits(I)V

    .line 707
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setKey4_bits(I)V

    .line 708
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    move-object/from16 v0, p18

    invoke-virtual {v1, v0}, Lcom/easyview/bean/WifiBean;->setWpa_psk(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v2}, Lcom/easyview/bean/WifiBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 711
    return-void
.end method

.method public callBackWifiScanResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "security"    # I
    .param p5, "dbm0"    # I
    .param p6, "dbm1"    # I
    .param p7, "mode"    # I
    .param p8, "channel"    # I
    .param p9, "bEnd"    # I

    .prologue
    .line 719
    const-string v1, "shix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " security:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    const-string v3, " dbm0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dbm1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    const-string v3, " channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bEnd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "\u6709"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Lcom/easyview/bean/WifiScanBean;

    invoke-direct {v0}, Lcom/easyview/bean/WifiScanBean;-><init>()V

    .line 725
    .local v0, "bean":Lcom/easyview/bean/WifiScanBean;
    invoke-virtual {v0, p1}, Lcom/easyview/bean/WifiScanBean;->setDid(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p2}, Lcom/easyview/bean/WifiScanBean;->setSsid(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p8}, Lcom/easyview/bean/WifiScanBean;->setChannel(I)V

    .line 728
    add-int/lit8 v1, p4, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/WifiScanBean;->setSecurity(I)V

    .line 729
    invoke-virtual {v0, p5}, Lcom/easyview/bean/WifiScanBean;->setDbm0(I)V

    .line 730
    invoke-virtual {v0, p3}, Lcom/easyview/bean/WifiScanBean;->setMac(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p7}, Lcom/easyview/bean/WifiScanBean;->setMode(I)V

    .line 732
    invoke-virtual {v0, p6}, Lcom/easyview/bean/WifiScanBean;->setDbm1(I)V

    .line 733
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-virtual {v1, v0}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->addWifiScan(Lcom/easyview/bean/WifiScanBean;)V

    .line 734
    const/4 v1, 0x1

    if-ne p9, v1, :cond_0

    .line 736
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ed3\u675f bEnd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 739
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 587
    if-eqz p2, :cond_0

    .line 588
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 589
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 594
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editPwd:Landroid/widget/EditText;

    .line 592
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f040006

    const/high16 v2, 0x7f040000

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 396
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->clearWifi()V

    .line 397
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->notifyDataSetChanged()V

    .line 398
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    invoke-virtual {v1, v2}, Lcom/easyview/basecamera/BaseCamera;->wifiScan(Lcom/easyview/basecamera/ICamera$IWifiScanListener;)V

    .line 409
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    .line 410
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 411
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 412
    const v3, 0x7f0600bb

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingWifiActivity$7;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$7;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 426
    const-string v1, "wifiScanBean"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifiScanBean"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-virtual {v3}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 428
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setTimeOut()V

    goto :goto_0

    .line 431
    :sswitch_1
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->changeWifiFlag:Z

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 437
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 438
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setWifi()V

    goto :goto_0

    .line 441
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->judgeAP()V

    .line 442
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->finish()V

    .line 443
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 447
    :sswitch_2
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->finish()V

    .line 448
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0802db -> :sswitch_2
        0x7f0802dc -> :sswitch_1
        0x7f0802e7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 279
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getDataFromOther()V

    .line 281
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->requestWindowFeature(I)Z

    .line 282
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setContentView(I)V

    .line 283
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 284
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 285
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0600bd

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 287
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    new-instance v1, Lcom/easyview/bean/WifiBean;

    invoke-direct {v1}, Lcom/easyview/bean/WifiBean;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    .line 289
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->findView()V

    .line 290
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setListener()V

    .line 291
    new-instance v1, Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-direct {v1, p0}, Lobject/p2pipcam/adapter/WifiScanListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    .line 292
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isConnected:Z

    .line 295
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setWifiInterface(Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;)V

    .line 296
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    new-instance v3, Lobject/p2pwificam/clientActivity/SettingWifiActivity$5;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/easyview/basecamera/BaseCamera;->getWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 302
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 303
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    .line 327
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 598
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 604
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->changeWifiFlag:Z

    .line 605
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;

    invoke-virtual {v1, p3}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->getWifiScan(I)Lcom/easyview/bean/WifiScanBean;

    move-result-object v0

    .line 608
    .local v0, "wifiScan":Lcom/easyview/bean/WifiScanBean;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v0}, Lcom/easyview/bean/WifiScanBean;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setSsid(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v0}, Lcom/easyview/bean/WifiScanBean;->getSecurity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setAuthtype(I)V

    .line 610
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v0}, Lcom/easyview/bean/WifiScanBean;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setChannel(I)V

    .line 611
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v0}, Lcom/easyview/bean/WifiScanBean;->getDbm0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setDbm0(I)V

    .line 612
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;

    invoke-virtual {v1, v3}, Lcom/easyview/bean/WifiBean;->setEnable(I)V

    .line 613
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 615
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 273
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->overridePendingTransition(II)V

    .line 274
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 385
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListViewHeight()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 618
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 619
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 622
    :cond_0
    const/4 v5, 0x0

    .line 623
    .local v5, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 628
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 630
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 629
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 631
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 624
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;

    invoke-interface {v0, v1, v6, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 625
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 626
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
