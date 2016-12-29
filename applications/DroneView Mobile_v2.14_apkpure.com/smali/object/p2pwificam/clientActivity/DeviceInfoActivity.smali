.class public Lobject/p2pwificam/clientActivity/DeviceInfoActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "DeviceInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final FAILED:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private final TIMEOUT:I

.field private final UPGRADE_CHECK:I

.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private btnUpgrade:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private sdcardBean:Lcom/easyview/bean/SdcardBean;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvDeviceVersion:Landroid/widget/TextView;

.field private tvUpgradeVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 27
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvDeviceVersion:Landroid/widget/TextView;

    .line 28
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvUpgradeVersion:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnBack:Landroid/widget/ImageButton;

    .line 30
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnOk:Landroid/widget/Button;

    .line 31
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->TIMEOUT:I

    .line 32
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->strDID:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 34
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->successFlag:Z

    .line 35
    iput v2, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->FAILED:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->SUCCESS:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->PARAMS:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->UPGRADE_CHECK:I

    .line 40
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnUpgrade:Landroid/widget/Button;

    .line 44
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->handler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->runnable:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method private FormatSdCard()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$6;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$6;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 189
    const v0, 0x7f0601c1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->showToast(I)V

    .line 190
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->finish()V

    .line 191
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvDeviceVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvUpgradeVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 133
    const v1, 0x7f08020d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvDeviceVersion:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f08020f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvUpgradeVersion:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnBack:Landroid/widget/ImageButton;

    .line 137
    const v1, 0x7f080210

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnUpgrade:Landroid/widget/Button;

    .line 139
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnUpgrade:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f080212

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 141
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->strDID:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    check-cast v1, Lcom/easyview/camera/EVBaseCamera;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 114
    return-void
.end method

.method private setLister()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 209
    :pswitch_0
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x7f0802d0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 153
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->finish()V

    goto :goto_0

    .line 156
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$4;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->upgradeDevice(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$5;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$5;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->upgradeCheck(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f080210 -> :sswitch_1
        0x7f080212 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->getDataFromOther()V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->requestWindowFeature(I)Z

    .line 91
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->setContentView(I)V

    .line 92
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060171

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findView()V

    .line 98
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->setLister()V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$3;-><init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->queryDeviceInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->overridePendingTransition(II)V

    .line 83
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 84
    return-void
.end method
