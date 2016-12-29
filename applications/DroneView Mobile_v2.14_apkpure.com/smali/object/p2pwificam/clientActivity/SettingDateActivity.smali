.class public Lobject/p2pwificam/clientActivity/SettingDateActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingDateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;


# instance fields
.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnCheckOut:Landroid/widget/Button;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private dateBean:Lcom/easyview/bean/DateBean;

.field private editTimeZone:Landroid/widget/EditText;

.field private imgTimeZoneDown:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private scrollView:Landroid/widget/ScrollView;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private timeZonePopWindow:Landroid/widget/PopupWindow;

.field private tvCameraName:Landroid/widget/TextView;

.field private tvDeviceTime:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 62
    const-string v0, "SettingDateActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->FAIL:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->SUCCESS:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->PARAMS:I

    .line 68
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->TIMEOUT:I

    .line 72
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;

    .line 261
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;

    .line 262
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    .line 265
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->imgTimeZoneDown:Landroid/widget/ImageButton;

    .line 268
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    .line 270
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->scrollView:Landroid/widget/ScrollView;

    .line 272
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    .line 273
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnOk:Landroid/widget/Button;

    .line 274
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 275
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCheckOut:Landroid/widget/Button;

    .line 276
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvCameraName:Landroid/widget/TextView;

    .line 420
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingDateActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->runnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingDateActivity;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Lcom/easyview/bean/DateBean;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingDateActivity;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDeviceTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkDeviceAsPhoneTime()V
    .locals 8

    .prologue
    .line 786
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 787
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8

    .line 788
    .local v3, "tz":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 789
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 790
    .local v1, "now":I
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tz:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tz:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v4, v1}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 793
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v4, v3}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 794
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    new-instance v6, Lobject/p2pwificam/clientActivity/SettingDateActivity$6;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$6;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    invoke-virtual {v4, v5, v6}, Lcom/easyview/basecamera/BaseCamera;->setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 802
    return-void
.end method

.method private findView()V
    .locals 5

    .prologue
    .line 457
    const v3, 0x7f080250

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnOk:Landroid/widget/Button;

    .line 458
    const v3, 0x7f08024f

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 459
    const v3, 0x7f080257

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCheckOut:Landroid/widget/Button;

    .line 461
    const v3, 0x7f080252

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvDeviceTime:Landroid/widget/Button;

    .line 462
    const v3, 0x7f080255

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    .line 466
    const v3, 0x7f080256

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->imgTimeZoneDown:Landroid/widget/ImageButton;

    .line 471
    const v3, 0x7f080055

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->scrollView:Landroid/widget/ScrollView;

    .line 472
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->tvCameraName:Landroid/widget/TextView;

    .line 475
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 476
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 477
    const v4, 0x7f02015e

    .line 476
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 480
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 482
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 920
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 921
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->strDID:Ljava/lang/String;

    .line 922
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->cameraName:Ljava/lang/String;

    .line 923
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 924
    return-void
.end method

.method private setDate()V
    .locals 3

    .prologue
    .line 770
    const-string v0, "tag"

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "now:0  tz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getTz()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 772
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getNtp_enable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v2}, Lcom/easyview/bean/DateBean;->getNtp_ser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 775
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingDateActivity$5;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 783
    return-void
.end method

.method private setDeviceTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "millisutc"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 280
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 289
    :goto_0
    return-object v2

    .line 281
    :cond_0
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 282
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 284
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 289
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->imgTimeZoneDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 435
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->btnCheckOut:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingDateActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 454
    return-void
.end method

.method private showTimeZonePopWindow()V
    .locals 37

    .prologue
    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 917
    :goto_0
    return-void

    .line 831
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v33

    .line 832
    const v34, 0x7f03005c

    const/16 v35, 0x0

    .line 831
    invoke-virtual/range {v33 .. v35}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 834
    .local v3, "layout":Landroid/widget/LinearLayout;
    const v33, 0x7f08025c

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 833
    check-cast v23, Landroid/widget/Button;

    .line 835
    .local v23, "zoneMiddleIsland":Landroid/widget/Button;
    const v33, 0x7f08025e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 836
    .local v19, "zoneHawaii":Landroid/widget/Button;
    const v33, 0x7f08025f

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 838
    .local v5, "zoneAlaska":Landroid/widget/Button;
    const v33, 0x7f080260

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 837
    check-cast v29, Landroid/widget/Button;

    .line 840
    .local v29, "zonePacificTime":Landroid/widget/Button;
    const v33, 0x7f080261

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 839
    check-cast v25, Landroid/widget/Button;

    .line 842
    .local v25, "zoneMountainTime":Landroid/widget/Button;
    const v33, 0x7f080262

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 841
    check-cast v24, Landroid/widget/Button;

    .line 844
    .local v24, "zoneMiddlePartTime":Landroid/widget/Button;
    const v33, 0x7f080264

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 843
    check-cast v16, Landroid/widget/Button;

    .line 846
    .local v16, "zoneEasternTime":Landroid/widget/Button;
    const v33, 0x7f080266

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 845
    check-cast v28, Landroid/widget/Button;

    .line 848
    .local v28, "zoneOceanTime":Landroid/widget/Button;
    const v33, 0x7f080268

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 847
    check-cast v27, Landroid/widget/Button;

    .line 850
    .local v27, "zoneNewfoundland":Landroid/widget/Button;
    const v33, 0x7f08026a

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 849
    check-cast v11, Landroid/widget/Button;

    .line 852
    .local v11, "zoneBrasilia":Landroid/widget/Button;
    const v33, 0x7f08026c

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 851
    check-cast v14, Landroid/widget/Button;

    .line 854
    .local v14, "zoneCenterOcean":Landroid/widget/Button;
    const v33, 0x7f08026e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 853
    check-cast v13, Landroid/widget/Button;

    .line 856
    .local v13, "zoneCapeVerdeIsland":Landroid/widget/Button;
    const v33, 0x7f080270

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 855
    check-cast v17, Landroid/widget/Button;

    .line 858
    .local v17, "zoneGreenWich":Landroid/widget/Button;
    const v33, 0x7f080272

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 857
    check-cast v12, Landroid/widget/Button;

    .line 859
    .local v12, "zoneBrussels":Landroid/widget/Button;
    const v33, 0x7f080274

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 861
    .local v6, "zoneAthens":Landroid/widget/Button;
    const v33, 0x7f080276

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 860
    check-cast v26, Landroid/widget/Button;

    .line 863
    .local v26, "zoneNairobi":Landroid/widget/Button;
    const v33, 0x7f080278

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 862
    check-cast v32, Landroid/widget/Button;

    .line 864
    .local v32, "zoneTeheran":Landroid/widget/Button;
    const v33, 0x7f08027a

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 865
    .local v8, "zoneBaku":Landroid/widget/Button;
    const v33, 0x7f08027c

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 867
    .local v22, "zoneKebuer":Landroid/widget/Button;
    const v33, 0x7f08027e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 866
    check-cast v21, Landroid/widget/Button;

    .line 869
    .local v21, "zoneIslamambad":Landroid/widget/Button;
    const v33, 0x7f080280

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 868
    check-cast v20, Landroid/widget/Button;

    .line 871
    .local v20, "zoneIslamabad":Landroid/widget/Button;
    const v33, 0x7f080282

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 870
    check-cast v4, Landroid/widget/Button;

    .line 873
    .local v4, "zoneAlamotu":Landroid/widget/Button;
    const v33, 0x7f080284

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 872
    check-cast v9, Landroid/widget/Button;

    .line 875
    .local v9, "zoneBangkok":Landroid/widget/Button;
    const v33, 0x7f080286

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 874
    check-cast v10, Landroid/widget/Button;

    .line 876
    .local v10, "zoneBeijing":Landroid/widget/Button;
    const v33, 0x7f080288

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 877
    .local v30, "zoneSeoul":Landroid/widget/Button;
    const v33, 0x7f08028a

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 878
    .local v15, "zoneDarwin":Landroid/widget/Button;
    const v33, 0x7f08028c

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 880
    .local v18, "zoneGuam":Landroid/widget/Button;
    const v33, 0x7f08028e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 879
    check-cast v31, Landroid/widget/Button;

    .line 882
    .local v31, "zoneSoulumen":Landroid/widget/Button;
    const v33, 0x7f080290

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 881
    check-cast v7, Landroid/widget/Button;

    .line 884
    .local v7, "zoneAuckland":Landroid/widget/Button;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 901
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    new-instance v33, Landroid/widget/PopupWindow;

    const/16 v34, -0x2

    const/16 v35, -0x2

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->imgTimeZoneDown:Landroid/widget/ImageButton;

    move-object/from16 v34, v0

    const/16 v35, -0x136

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v36}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public callBackDatetimeParams(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "now"    # I
    .param p3, "tz"    # I
    .param p4, "ntp_enable"    # I
    .param p5, "ntp_svr"    # Ljava/lang/String;

    .prologue
    .line 975
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallBack_DatetimeParams  now =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tz == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v0, p2}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 977
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v0, p3}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 978
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v0, p4}, Lcom/easyview/bean/DateBean;->setNtp_enable(I)V

    .line 979
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    invoke-virtual {v0, p5}, Lcom/easyview/bean/DateBean;->setNtp_ser(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 981
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->TAG:Ljava/lang/String;

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

    .line 991
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 992
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 966
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 767
    :goto_0
    :pswitch_0
    return-void

    .line 488
    :pswitch_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->setDate()V

    goto :goto_0

    .line 491
    :pswitch_2
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->finish()V

    .line 492
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 495
    :pswitch_3
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->checkDeviceAsPhoneTime()V

    goto :goto_0

    .line 503
    :pswitch_4
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->showTimeZonePopWindow()V

    goto :goto_0

    .line 546
    :pswitch_5
    const-string v0, "tag"

    const-string v1, "\u4e2d\u9014\u5c9b 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 548
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, -0x9ab0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 549
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 550
    const-string v0, "tag"

    const-string v1, "\u4e2d\u9014\u5c9b 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 554
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, -0x8ca0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 555
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 558
    :pswitch_7
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 559
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x7e90

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 562
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 565
    :pswitch_8
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 566
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x7080

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 570
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 573
    :pswitch_9
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 574
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x6270

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 578
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 581
    :pswitch_a
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 582
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x5460

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 586
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 589
    :pswitch_b
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 590
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x4650

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 594
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 597
    :pswitch_c
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 598
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x3840

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 601
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 604
    :pswitch_d
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 605
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x3138

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 609
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600eb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 612
    :pswitch_e
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 613
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x2a30

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 617
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 620
    :pswitch_f
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 621
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0x1c20

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 625
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ed

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 628
    :pswitch_10
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 629
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, -0xe10

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 633
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ee

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 636
    :pswitch_11
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 637
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 640
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ef

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 643
    :pswitch_12
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 644
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 648
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 651
    :pswitch_13
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 652
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x1c20

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 655
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 658
    :pswitch_14
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 659
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x2a30

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 663
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 666
    :pswitch_15
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 667
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x3138

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 671
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 674
    :pswitch_16
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 675
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x3840

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 678
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 681
    :pswitch_17
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 682
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x3f48

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 685
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 688
    :pswitch_18
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 689
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x4650

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 693
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 696
    :pswitch_19
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 697
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x4d58

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 701
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 704
    :pswitch_1a
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 705
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x5460

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 709
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 712
    :pswitch_1b
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 713
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x6270

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 717
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 720
    :pswitch_1c
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 721
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x7080

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 725
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 728
    :pswitch_1d
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 729
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const/16 v1, 0x7e90

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 732
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 735
    :pswitch_1e
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 736
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, 0x8598

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 739
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600fc

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 742
    :pswitch_1f
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 743
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, 0x8ca0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 746
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600fd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 749
    :pswitch_20
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 750
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, 0x9ab0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 754
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600fe

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 757
    :pswitch_21
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 758
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    const v1, 0xa8c0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 762
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->editTimeZone:Landroid/widget/EditText;

    const v1, 0x7f0600ff

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x7f08024f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_21
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 397
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->getDataFromOther()V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->requestWindowFeature(I)Z

    .line 399
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->setContentView(I)V

    .line 400
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 401
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 402
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060106

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 404
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->findView()V

    .line 406
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->setListener()V

    .line 407
    new-instance v0, Lcom/easyview/bean/DateBean;

    invoke-direct {v0}, Lcom/easyview/bean/DateBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    .line 409
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setDateTimeInterface(Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;)V

    .line 410
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 411
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->dateBean:Lcom/easyview/bean/DateBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingDateActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingDateActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->getTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 418
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 928
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 929
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 390
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->overridePendingTransition(II)V

    .line 391
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 392
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 946
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    .line 954
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 933
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity;->timeZonePopWindow:Landroid/widget/PopupWindow;

    .line 941
    :cond_0
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
