.class public Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingOpenLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;


# instance fields
.field private CameraName:Ljava/lang/String;

.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnOK:Landroid/widget/Button;

.field private btnSettingButton:Landroid/widget/Button;

.field private edtNewPWD:Landroid/widget/EditText;

.field private edtOldPWD:Landroid/widget/EditText;

.field private enable_pairing:Landroid/widget/Button;

.field private lockbean:Lobject/p2pipcam/bean/LockBean;

.field mhandler:Landroid/os/Handler;

.field private myradiogroup:Lobject/p2pipcam/utils/myRadioGroup;

.field private openTime:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popv:Landroid/view/View;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private radioButton1:Landroid/widget/RadioButton;

.field private radioButton2:Landroid/widget/RadioButton;

.field private radioButton3:Landroid/widget/RadioButton;

.field private radioButton4:Landroid/widget/RadioButton;

.field private radioButton5:Landroid/widget/RadioButton;

.field private radioButton6:Landroid/widget/RadioButton;

.field private radioButton7:Landroid/widget/RadioButton;

.field private radioButton8:Landroid/widget/RadioButton;

.field private radioGroup1:Landroid/widget/RadioGroup;

.field runnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 67
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 69
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->TIMEOUT:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->FAIL:I

    .line 71
    iput v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->SUCCESS:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->PARAMS:I

    .line 75
    iput v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    .line 78
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 81
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->mhandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->runnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton3:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton4:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton5:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton6:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton7:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton8:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    return v0
.end method

.method private findView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 187
    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->btnBack:Landroid/widget/ImageButton;

    .line 188
    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->btnOK:Landroid/widget/Button;

    .line 190
    const v0, 0x7f080239

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->enable_pairing:Landroid/widget/Button;

    .line 192
    const v0, 0x7f08022e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtOldPWD:Landroid/widget/EditText;

    .line 193
    const v0, 0x7f08022f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtNewPWD:Landroid/widget/EditText;

    .line 196
    const v0, 0x7f080231

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton1:Landroid/widget/RadioButton;

    .line 197
    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton2:Landroid/widget/RadioButton;

    .line 198
    const v0, 0x7f080233

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton3:Landroid/widget/RadioButton;

    .line 199
    const v0, 0x7f080234

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton4:Landroid/widget/RadioButton;

    .line 200
    const v0, 0x7f080235

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton5:Landroid/widget/RadioButton;

    .line 201
    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton6:Landroid/widget/RadioButton;

    .line 202
    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton7:Landroid/widget/RadioButton;

    .line 203
    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton8:Landroid/widget/RadioButton;

    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtOldPWD:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtNewPWD:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->enable_pairing:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtNewPWD:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 218
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtOldPWD:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton4:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton5:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton6:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton7:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton8:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->strDID:Ljava/lang/String;

    .line 238
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->CameraName:Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 240
    return-void
.end method

.method private getLockPara()V
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 155
    new-array v1, v5, [B

    .line 157
    .local v1, "ret":[B
    new-array v0, v3, [B

    .line 159
    .local v0, "data":[B
    const v2, 0x10000326

    invoke-static {v2}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 160
    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/16 v2, 0x28

    invoke-static {v2}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 162
    invoke-static {v0, v4, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->strDID:Ljava/lang/String;

    invoke-static {v2, v1, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->DoorBellCmd(Ljava/lang/String;[BI)I

    .line 166
    return-void
.end method

.method private getOpenTime()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    .line 343
    const/4 v1, 0x0

    .line 345
    .local v1, "i":I
    new-array v0, v5, [Landroid/widget/RadioButton;

    const/4 v3, 0x0

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton1:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton2:Landroid/widget/RadioButton;

    aput-object v3, v0, v2

    const/4 v3, 0x2

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton3:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton4:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton5:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton6:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton7:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton8:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 346
    .local v0, "RadioButtonArray":[Landroid/widget/RadioButton;
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    .line 358
    :goto_1
    return v2

    .line 349
    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 346
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public callBackpenLockParams(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 368
    new-array v1, v6, [B

    .line 369
    .local v1, "ret":[B
    invoke-static {p2, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v0

    .line 371
    .local v0, "cmd":I
    const-string v3, "settingOpenLock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd  === "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p2, v6, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v2

    .line 376
    .local v2, "retcode":I
    const-string v3, "settingOpenLock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retcode  === "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v3, 0x326

    if-eq v0, v3, :cond_0

    .line 387
    const/16 v3, 0x28

    invoke-static {p2, v3, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v3

    iput v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    .line 389
    const/4 v2, 0x3

    .line 390
    const-string v3, "settingOpenLock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openTime111111  === "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 338
    :goto_0
    :pswitch_0
    return-void

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->finish()V

    .line 254
    const v5, 0x7f040006

    const/high16 v6, 0x7f040000

    invoke-virtual {p0, v5, v6}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->getOpenTime()I

    move-result v5

    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    .line 260
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtOldPWD:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "oldPwd":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->edtNewPWD:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "newPwd":Ljava/lang/String;
    const-string v5, "settingOpenLock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldPwd= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v5, "settingOpenLock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newPwd= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, "bSetPwd":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 272
    :cond_0
    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v10, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 276
    :cond_1
    const v5, 0x7f0600cb

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->showToast(I)V

    goto :goto_0

    .line 281
    :cond_2
    const-string v5, "settingOpenLock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldPwd= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v5, "settingOpenLock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newPwd= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    invoke-virtual {v5, v3}, Lobject/p2pipcam/bean/LockBean;->setOldLockPwd(Ljava/lang/String;)V

    .line 285
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    invoke-virtual {v5, v2}, Lobject/p2pipcam/bean/LockBean;->setNewLockPwd(Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    invoke-virtual {v5, v11}, Lobject/p2pipcam/bean/LockBean;->setCmd(I)V

    .line 287
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    iget v6, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    invoke-virtual {v5, v6}, Lobject/p2pipcam/bean/LockBean;->setOpenLockTime(I)V

    .line 288
    const-string v5, "ViewRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lockbean.toString() 11111111111111= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    invoke-virtual {v7}, Lobject/p2pipcam/bean/LockBean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v5, 0x30

    new-array v4, v5, [B

    .line 290
    .local v4, "ret":[B
    const/16 v5, 0x326

    invoke-static {v5}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 292
    .local v1, "data":[B
    invoke-static {v1, v8, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const/16 v5, 0x28

    invoke-static {v5}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 294
    invoke-static {v1, v8, v4, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/LockBean;->arrary()[B

    move-result-object v1

    .line 296
    const/16 v5, 0x28

    invoke-static {v1, v8, v4, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->strDID:Ljava/lang/String;

    const/16 v6, 0x30

    invoke-static {v5, v4, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->DoorBellCmd(Ljava/lang/String;[BI)I

    goto/16 :goto_0

    .line 304
    .end local v0    # "bSetPwd":Z
    .end local v1    # "data":[B
    .end local v2    # "newPwd":Ljava/lang/String;
    .end local v3    # "oldPwd":Ljava/lang/String;
    .end local v4    # "ret":[B
    :pswitch_3
    iput v11, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 309
    :pswitch_4
    const/4 v5, 0x2

    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 313
    :pswitch_5
    const/4 v5, 0x3

    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 317
    :pswitch_6
    iput v9, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 320
    :pswitch_7
    const/4 v5, 0x5

    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 323
    :pswitch_8
    iput v10, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 327
    :pswitch_9
    const/4 v5, 0x7

    iput v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 331
    :pswitch_a
    iput v12, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I

    goto/16 :goto_0

    .line 335
    :pswitch_b
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/easyview/basecamera/BaseCamera;->enablePairing(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f08022c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->getDataFromOther()V

    .line 135
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->requestWindowFeature(I)Z

    .line 137
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->setContentView(I)V

    .line 138
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 139
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 140
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0600c6

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->mhandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->findView()V

    .line 145
    new-instance v0, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    .line 146
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->getLockPara()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 246
    return-void
.end method
