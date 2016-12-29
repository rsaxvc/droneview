.class public Lobject/p2pwificam/clientActivity/SettingSDCardActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingSDCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;


# instance fields
.field private final FAILED:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private final TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnFormatSdCard:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private cbxRecordTime:Landroid/widget/CheckBox;

.field private handler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private recodeModeMenu:Landroid/widget/PopupWindow;

.field private runnable:Ljava/lang/Runnable;

.field private sdcardBean:Lcom/easyview/bean/SdcardBean;

.field private spinRecordLength:Landroid/widget/Spinner;

.field private spinRecordMode:Landroid/widget/Spinner;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvSdRemain:Landroid/widget/TextView;

.field private tvSdStatus:Landroid/widget/TextView;

.field private tvSdTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 48
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdTotal:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdRemain:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdStatus:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;

    .line 55
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordMode:Landroid/widget/Spinner;

    .line 56
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;

    .line 57
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnBack:Landroid/widget/ImageButton;

    .line 58
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnOk:Landroid/widget/Button;

    .line 59
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->TIMEOUT:I

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->strDID:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 63
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->successFlag:Z

    .line 64
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->FAILED:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->SUCCESS:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->PARAMS:I

    .line 67
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    .line 69
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnFormatSdCard:Landroid/widget/Button;

    .line 73
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->handler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->runnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method private FormatSdCard()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$9;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$9;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 326
    const v0, 0x7f0601c1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->showToast(I)V

    .line 327
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->finish()V

    .line 328
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->FormatSdCard()V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdTotal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdRemain:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f0802c7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdTotal:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0802c8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdRemain:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdStatus:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0802cf

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;

    .line 225
    const v0, 0x7f0802cb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordMode:Landroid/widget/Spinner;

    .line 226
    const v0, 0x7f0802d0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;

    .line 227
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnBack:Landroid/widget/ImageButton;

    .line 228
    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnOk:Landroid/widget/Button;

    .line 230
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnFormatSdCard:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnFormatSdCard:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->strDID:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 163
    return-void
.end method

.method private setLister()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    return-void
.end method

.method private setSDCardSchedule()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 336
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 337
    .local v0, "index":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, v2}, Lcom/easyview/bean/SdcardBean;->setRecord_timer(I)V

    .line 340
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordMode:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 341
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, v0}, Lcom/easyview/bean/SdcardBean;->setRecordMode(I)V

    .line 343
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    new-instance v3, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$10;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$10;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/easyview/basecamera/BaseCamera;->setStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 349
    return-void

    .line 338
    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/easyview/bean/SdcardBean;->setRecord_timer(I)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/easyview/bean/SdcardBean;->setRecord_timer(I)V

    goto :goto_0
.end method


# virtual methods
.method public callBackRecordSchParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "record_cover_enable"    # I
    .param p3, "record_timer"    # I
    .param p4, "record_size"    # I
    .param p5, "record_time_enable"    # I
    .param p6, "record_schedule_sun_0"    # I
    .param p7, "record_schedule_sun_1"    # I
    .param p8, "record_schedule_sun_2"    # I
    .param p9, "record_schedule_mon_0"    # I
    .param p10, "record_schedule_mon_1"    # I
    .param p11, "record_schedule_mon_2"    # I
    .param p12, "record_schedule_tue_0"    # I
    .param p13, "record_schedule_tue_1"    # I
    .param p14, "record_schedule_tue_2"    # I
    .param p15, "record_schedule_wed_0"    # I
    .param p16, "record_schedule_wed_1"    # I
    .param p17, "record_schedule_wed_2"    # I
    .param p18, "record_schedule_thu_0"    # I
    .param p19, "record_schedule_thu_1"    # I
    .param p20, "record_schedule_thu_2"    # I
    .param p21, "record_schedule_fri_0"    # I
    .param p22, "record_schedule_fri_1"    # I
    .param p23, "record_schedule_fri_2"    # I
    .param p24, "record_schedule_sat_0"    # I
    .param p25, "record_schedule_sat_1"    # I
    .param p26, "record_schedule_sat_2"    # I
    .param p27, "record_sd_status"    # I
    .param p28, "sdtotal"    # I
    .param p29, "sdfree"    # I
    .param p30, "record_mode"    # I

    .prologue
    .line 394
    const-string v1, "SettingSDCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdtotal:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, p1}, Lcom/easyview/bean/SdcardBean;->setDid(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, p2}, Lcom/easyview/bean/SdcardBean;->setRecord_conver_enable(I)V

    .line 397
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, p3}, Lcom/easyview/bean/SdcardBean;->setRecord_timer(I)V

    .line 398
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, p4}, Lcom/easyview/bean/SdcardBean;->setRecord_size(I)V

    .line 399
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    invoke-virtual {v1, p5}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    .line 400
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    move/from16 v0, p27

    invoke-virtual {v1, v0}, Lcom/easyview/bean/SdcardBean;->setRecord_sd_status(I)V

    .line 401
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    move/from16 v0, p28

    invoke-virtual {v1, v0}, Lcom/easyview/bean/SdcardBean;->setSdtotal(I)V

    .line 402
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    move/from16 v0, p29

    invoke-virtual {v1, v0}, Lcom/easyview/bean/SdcardBean;->setSdfree(I)V

    .line 403
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    move/from16 v0, p30

    invoke-virtual {v1, v0}, Lcom/easyview/bean/SdcardBean;->setRecordMode(I)V

    .line 404
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 410
    const-string v0, "SettingSDCard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paramType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    :cond_0
    return-void
.end method

.method public initRecodeModeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 244
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 245
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "array":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f03003b

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 247
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v3, "view":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 249
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    new-instance v4, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$4;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    .line 259
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 260
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 261
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0x111112

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 263
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$5;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 271
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;

    new-instance v5, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$6;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$6;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 282
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 367
    :pswitch_0
    if-eqz p2, :cond_0

    .line 368
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x7f0802d0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 288
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->finish()V

    goto :goto_0

    .line 291
    :sswitch_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->setSDCardSchedule()V

    goto :goto_0

    .line 294
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    const v1, 0x7f06000c

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$7;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$7;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 303
    const v1, 0x7f06000d

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$8;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$8;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0802c6 -> :sswitch_1
        0x7f0802d1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getDataFromOther()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->requestWindowFeature(I)Z

    .line 138
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->setContentView(I)V

    .line 139
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 140
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 141
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060124

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 143
    new-instance v0, Lcom/easyview/bean/SdcardBean;

    invoke-direct {v0}, Lcom/easyview/bean/SdcardBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    .line 144
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->findView()V

    .line 146
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->setLister()V

    .line 147
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setSDCardInterface(Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;)V

    .line 148
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->getStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 156
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 354
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->overridePendingTransition(II)V

    .line 130
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 131
    return-void
.end method
