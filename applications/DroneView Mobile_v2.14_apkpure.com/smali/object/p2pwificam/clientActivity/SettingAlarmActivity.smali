.class public Lobject/p2pwificam/clientActivity/SettingAlarmActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;


# instance fields
.field private final ALERMPARAMS:I

.field private TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private final UPLOADTIMETOOLONG:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private alermBean:Lcom/easyview/bean/AlermBean;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private cbxMail:Landroid/widget/CheckBox;

.field private cbxMotionAlerm:Landroid/widget/CheckBox;

.field private cbxRecord:Landroid/widget/CheckBox;

.field private gt:Landroid/view/GestureDetector;

.field private imgSensitiveDrop:Landroid/widget/ImageView;

.field private ioOutLevelPopWindow:Landroid/widget/PopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private motionAlermView:Landroid/view/View;

.field private presteMovePopWindow:Landroid/widget/PopupWindow;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private scrollView:Landroid/widget/ScrollView;

.field private sensitivePopWindow:Landroid/widget/PopupWindow;

.field private settingRunnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private triggerLevelPopWindow:Landroid/widget/PopupWindow;

.field private tvSensitivity:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 59
    const-string v0, "SettingAlermActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->strDID:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cameraName:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z

    .line 63
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TIMEOUT:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ALERMPARAMS:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->UPLOADTIMETOOLONG:I

    .line 68
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->gt:Landroid/view/GestureDetector;

    .line 69
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnOk:Landroid/widget/Button;

    .line 173
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 174
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;

    .line 181
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->imgSensitiveDrop:Landroid/widget/ImageView;

    .line 187
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    .line 189
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;

    .line 192
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMotionAlerm:Landroid/widget/CheckBox;

    .line 193
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    .line 194
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    .line 195
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    .line 196
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    .line 197
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    .line 198
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 237
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->runnable:Ljava/lang/Runnable;

    .line 684
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->settingRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMotionAlerm:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxRecord:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 703
    const v3, 0x7f080246

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMotionAlerm:Landroid/widget/CheckBox;

    .line 706
    const v3, 0x7f08024c

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;

    .line 708
    const v3, 0x7f08024e

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxRecord:Landroid/widget/CheckBox;

    .line 710
    const v3, 0x7f080249

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    .line 717
    const v3, 0x7f08024a

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->imgSensitiveDrop:Landroid/widget/ImageView;

    .line 725
    const v3, 0x7f080247

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;

    .line 728
    const v3, 0x7f08010b

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnOk:Landroid/widget/Button;

    .line 729
    const v3, 0x7f08010a

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 731
    const v3, 0x7f080055

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->scrollView:Landroid/widget/ScrollView;

    .line 733
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 734
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 735
    const v4, 0x7f02015e

    .line 734
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 737
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 738
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 742
    const v3, 0x7f08024b

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 743
    const v3, 0x7f08024d

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 745
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->strDID:Ljava/lang/String;

    .line 816
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cameraName:Ljava/lang/String;

    .line 817
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 818
    return-void
.end method

.method private setAlerm()V
    .locals 3

    .prologue
    .line 662
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alerm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v2}, Lcom/easyview/bean/AlermBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$6;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$6;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 677
    :goto_0
    return-void

    .line 674
    :cond_0
    const v0, 0x7f060148

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->showToast(I)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->imgSensitiveDrop:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMotionAlerm:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxRecord:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$5;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 308
    return-void
.end method

.method private setTimeOut()V
    .locals 4

    .prologue
    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z

    .line 681
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->settingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 682
    return-void
.end method


# virtual methods
.method public CallBack_AlarmParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 2
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
    .line 834
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "CallBack_AlarmParams-------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p1}, Lcom/easyview/bean/AlermBean;->setDid(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p2}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 838
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p3}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 839
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p4}, Lcom/easyview/bean/AlermBean;->setInput_armed(I)V

    .line 840
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p5}, Lcom/easyview/bean/AlermBean;->setIoin_level(I)V

    .line 841
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p6}, Lcom/easyview/bean/AlermBean;->setIolinkage(I)V

    .line 842
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p7}, Lcom/easyview/bean/AlermBean;->setIoout_level(I)V

    .line 843
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p8}, Lcom/easyview/bean/AlermBean;->setAlermpresetsit(I)V

    .line 844
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p9}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    .line 845
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p10}, Lcom/easyview/bean/AlermBean;->setSnapshot(I)V

    .line 846
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p11}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    .line 847
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, p12}, Lcom/easyview/bean/AlermBean;->setUpload_interval(I)V

    .line 848
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_enable(I)V

    .line 850
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_0(I)V

    .line 851
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_1(I)V

    .line 852
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_2(I)V

    .line 853
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_0(I)V

    .line 854
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_1(I)V

    .line 855
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_2(I)V

    .line 856
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_0(I)V

    .line 857
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_1(I)V

    .line 858
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_2(I)V

    .line 859
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_0(I)V

    .line 860
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_1(I)V

    .line 861
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_2(I)V

    .line 862
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_0(I)V

    .line 863
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_1(I)V

    .line 864
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_2(I)V

    .line 865
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_0(I)V

    .line 866
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_1(I)V

    .line 867
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_2(I)V

    .line 868
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_0(I)V

    .line 869
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_1(I)V

    .line 870
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_2(I)V

    .line 871
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 872
    return-void
.end method

.method public callBackAlarmParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 4
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
    .line 965
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    const-string v2, "CallBack_AlarmParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v1, "SettingAlermActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "motion_armed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 967
    const-string v3, "motion_sensitivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 968
    const-string v3, "input_armed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ioin_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 969
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iolinkage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    const-string v3, "ioout_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alermpresetsit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 971
    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "snapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 972
    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 973
    const-string v3, "upload_interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 974
    const-string v3, "schedule_enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 975
    const-string v3, "schedule_sun_0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "schedule_sun_1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 976
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v1, "tagg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "record = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p1}, Lcom/easyview/bean/AlermBean;->setDid(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p2}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 981
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p3}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 982
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p4}, Lcom/easyview/bean/AlermBean;->setInput_armed(I)V

    .line 983
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p5}, Lcom/easyview/bean/AlermBean;->setIoin_level(I)V

    .line 984
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p6}, Lcom/easyview/bean/AlermBean;->setIolinkage(I)V

    .line 985
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p7}, Lcom/easyview/bean/AlermBean;->setIoout_level(I)V

    .line 986
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p8}, Lcom/easyview/bean/AlermBean;->setAlermpresetsit(I)V

    .line 987
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p9}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    .line 988
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p10}, Lcom/easyview/bean/AlermBean;->setSnapshot(I)V

    .line 989
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v1, p11}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    .line 990
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    move/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/easyview/bean/AlermBean;->setUpload_interval(I)V

    .line 991
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_enable(I)V

    .line 993
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_0(I)V

    .line 994
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_1(I)V

    .line 995
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_2(I)V

    .line 996
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_0(I)V

    .line 997
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_1(I)V

    .line 998
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_2(I)V

    .line 999
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_0(I)V

    .line 1000
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_1(I)V

    .line 1001
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_2(I)V

    .line 1002
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_0(I)V

    .line 1003
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_1(I)V

    .line 1004
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_2(I)V

    .line 1005
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_0(I)V

    .line 1006
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_1(I)V

    .line 1007
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_2(I)V

    .line 1008
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_0(I)V

    .line 1009
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_1(I)V

    .line 1010
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_2(I)V

    .line 1011
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_0(I)V

    .line 1012
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_1(I)V

    .line 1013
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_2(I)V

    .line 1015
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1017
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 1022
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alerm set result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1025
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 751
    :sswitch_0
    if-eqz p2, :cond_0

    .line 752
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 753
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 756
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 779
    :sswitch_1
    if-eqz p2, :cond_1

    .line 780
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    goto :goto_0

    .line 787
    :sswitch_2
    if-eqz p2, :cond_2

    .line 788
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    goto :goto_0

    .line 790
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    goto :goto_0

    .line 749
    :sswitch_data_0
    .sparse-switch
        0x7f080246 -> :sswitch_0
        0x7f08024c -> :sswitch_1
        0x7f08024e -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 314
    :sswitch_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->setAlerm()V

    goto :goto_0

    .line 317
    :sswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->finish()V

    .line 318
    const v5, 0x7f040006

    const/high16 v6, 0x7f040000

    invoke-virtual {p0, v5, v6}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 424
    :sswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 427
    :cond_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 430
    :cond_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    .line 431
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 434
    :cond_3
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 435
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 437
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 438
    const v6, 0x7f03000e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 437
    check-cast v0, Landroid/widget/LinearLayout;

    .line 452
    .local v0, "layout1":Landroid/widget/LinearLayout;
    const v5, 0x7f080067

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 451
    check-cast v4, Landroid/widget/TextView;

    .line 454
    .local v4, "sensitive4":Landroid/widget/TextView;
    const v5, 0x7f080068

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 453
    check-cast v3, Landroid/widget/TextView;

    .line 456
    .local v3, "sensitive3":Landroid/widget/TextView;
    const v5, 0x7f080069

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 455
    check-cast v2, Landroid/widget/TextView;

    .line 458
    .local v2, "sensitive2":Landroid/widget/TextView;
    const v5, 0x7f08006a

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 457
    check-cast v1, Landroid/widget/TextView;

    .line 465
    .local v1, "sensitive1":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    new-instance v5, Landroid/widget/PopupWindow;

    const/16 v6, 0xa0

    .line 470
    const/4 v7, -0x2

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 469
    iput-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    .line 471
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    const/16 v7, -0x78

    const/16 v8, 0xa

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 543
    .end local v0    # "layout1":Landroid/widget/LinearLayout;
    .end local v1    # "sensitive1":Landroid/widget/TextView;
    .end local v2    # "sensitive2":Landroid/widget/TextView;
    .end local v3    # "sensitive3":Landroid/widget/TextView;
    .end local v4    # "sensitive4":Landroid/widget/TextView;
    :sswitch_3
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 544
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 546
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    const v6, 0x7f060168

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 549
    :sswitch_4
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 550
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 552
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    const v6, 0x7f060167

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 556
    :sswitch_5
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 557
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 559
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    const v6, 0x7f060166

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 563
    :sswitch_6
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 564
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 567
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;

    const v6, 0x7f060165

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x7f080067 -> :sswitch_3
        0x7f080068 -> :sswitch_4
        0x7f080069 -> :sswitch_5
        0x7f08006a -> :sswitch_6
        0x7f08010a -> :sswitch_1
        0x7f08010b -> :sswitch_0
        0x7f08024a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->requestWindowFeature(I)Z

    .line 205
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->getDataFromOther()V

    .line 206
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->setContentView(I)V

    .line 207
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06014b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    new-instance v0, Lcom/easyview/bean/AlermBean;

    invoke-direct {v0}, Lcom/easyview/bean/AlermBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;

    .line 214
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->findView()V

    .line 215
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->setListener()V

    .line 216
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAlarmInterface(Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;)V

    .line 217
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 218
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V

    .line 229
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 876
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 877
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 880
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 883
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 886
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 889
    :cond_3
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 893
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 896
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 899
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 900
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 902
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 905
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 233
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->overridePendingTransition(II)V

    .line 234
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 235
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 911
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 937
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->sensitivePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 939
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->presteMovePopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 944
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->triggerLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 947
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->ioOutLevelPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 950
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 699
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->gt:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
