.class public Lobject/p2pwificam/clientActivity/SettingMailActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    }
.end annotation


# instance fields
.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private cbxCheck:Landroid/widget/CheckBox;

.field private cbxView:Landroid/view/View;

.field private editReceiver1:Landroid/widget/EditText;

.field private editReceiver2:Landroid/widget/EditText;

.field private editReceiver3:Landroid/widget/EditText;

.field private editSSL:Landroid/widget/EditText;

.field private editSender:Landroid/widget/EditText;

.field private editSmtpPort:Landroid/widget/EditText;

.field private editSmtpPwd:Landroid/widget/EditText;

.field private editSmtpServer:Landroid/widget/EditText;

.field private editSmtpUser:Landroid/widget/EditText;

.field private imgBtnSSLDown:Landroid/widget/ImageButton;

.field private imgBtnSmtpServerDown:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mailBean:Lcom/easyview/bean/MailBean;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private smtpPopWindow:Landroid/widget/PopupWindow;

.field private sslPopWindow:Landroid/widget/PopupWindow;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvCameraName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 53
    const-string v0, "SettingMailActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->FAIL:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->SUCCESS:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->PARAMS:I

    .line 58
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cameraName:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSender:Landroid/widget/EditText;

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;

    .line 62
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    .line 63
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver1:Landroid/widget/EditText;

    .line 64
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver2:Landroid/widget/EditText;

    .line 65
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver3:Landroid/widget/EditText;

    .line 67
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSmtpServerDown:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSSLDown:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxCheck:Landroid/widget/CheckBox;

    .line 70
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;

    .line 71
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    .line 72
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpUser:Landroid/widget/EditText;

    .line 73
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPwd:Landroid/widget/EditText;

    .line 74
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    .line 75
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    .line 76
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->TIMEOUT:I

    .line 78
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 79
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->tvCameraName:Landroid/widget/TextView;

    .line 81
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingMailActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->runnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingMailActivity;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpUser:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSender:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    return-object v0
.end method

.method private findView()V
    .locals 5

    .prologue
    .line 188
    const v3, 0x7f08029f

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSender:Landroid/widget/EditText;

    .line 189
    const v3, 0x7f0802a1

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    .line 190
    const v3, 0x7f0802a4

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;

    .line 191
    const v3, 0x7f0802ab

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpUser:Landroid/widget/EditText;

    .line 192
    const v3, 0x7f0802ad

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPwd:Landroid/widget/EditText;

    .line 194
    const v3, 0x7f0802af

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver1:Landroid/widget/EditText;

    .line 195
    const v3, 0x7f0802b1

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver2:Landroid/widget/EditText;

    .line 196
    const v3, 0x7f0802b3

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver3:Landroid/widget/EditText;

    .line 199
    const v3, 0x7f0802a7

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    .line 201
    const v3, 0x7f0802a2

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSmtpServerDown:Landroid/widget/ImageButton;

    .line 202
    const v3, 0x7f0802a8

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSSLDown:Landroid/widget/ImageButton;

    .line 204
    const v3, 0x7f0802a6

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxCheck:Landroid/widget/CheckBox;

    .line 205
    const v3, 0x7f0802a9

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;

    .line 207
    const v3, 0x7f08029e

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->btnOk:Landroid/widget/Button;

    .line 208
    const v3, 0x7f08029d

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 210
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->tvCameraName:Landroid/widget/TextView;

    .line 212
    const v3, 0x7f080055

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 213
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 217
    const v4, 0x7f02015e

    .line 216
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 220
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 222
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->strDID:Ljava/lang/String;

    .line 183
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cameraName:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 185
    return-void
.end method

.method private setListener()V
    .locals 10

    .prologue
    .line 225
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSmtpServerDown:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSSLDown:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxCheck:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v2, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    .line 232
    const v8, 0x7f0802af

    .line 231
    invoke-direct {v2, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 233
    .local v2, "myTextWitchReceiver1":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver1:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    new-instance v3, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    .line 235
    const v8, 0x7f0802b1

    .line 234
    invoke-direct {v3, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 236
    .local v3, "myTextWitchReceiver2":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver2:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    new-instance v4, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    .line 238
    const v8, 0x7f0802b3

    .line 237
    invoke-direct {v4, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 239
    .local v4, "myTextWitchReceiver3":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver3:Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    new-instance v5, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    const v8, 0x7f08029f

    invoke-direct {v5, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 245
    .local v5, "myTextWitchSender":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSender:Landroid/widget/EditText;

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    const v8, 0x7f0802a4

    invoke-direct {v0, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 248
    .local v0, "myTextWitchPort":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    new-instance v7, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    const v8, 0x7f0802ab

    invoke-direct {v7, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 251
    .local v7, "myTextWitchUser":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpUser:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    new-instance v1, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    const v8, 0x7f0802ad

    invoke-direct {v1, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 254
    .local v1, "myTextWitchPwd":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPwd:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    new-instance v6, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;

    .line 257
    const v8, 0x7f0802a1

    .line 256
    invoke-direct {v6, p0, v8}, Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;I)V

    .line 258
    .local v6, "myTextWitchServer":Lobject/p2pwificam/clientActivity/SettingMailActivity$MyTextWitch;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v9, Lobject/p2pwificam/clientActivity/SettingMailActivity$4;

    invoke-direct {v9, p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 273
    return-void
.end method

.method private setMail()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0}, Lcom/easyview/bean/MailBean;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setUser(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setPwd(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingMailActivity$5;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity$5;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->setMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 428
    const-string v0, "tag"

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private showSmtpPopWindow()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    .line 447
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 448
    const v10, 0x7f030061

    const/4 v11, 0x0

    .line 447
    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 449
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v9, 0x7f0802b5

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 450
    .local v2, "mail_163":Landroid/widget/TextView;
    const v9, 0x7f0802b4

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 451
    .local v1, "mail_126":Landroid/widget/TextView;
    const v9, 0x7f0802b6

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 454
    .local v3, "mail_21cn":Landroid/widget/TextView;
    const v9, 0x7f0802b7

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 455
    .local v4, "mail_gmail":Landroid/widget/TextView;
    const v9, 0x7f0802b9

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 456
    .local v6, "mail_sina":Landroid/widget/TextView;
    const v9, 0x7f0802b8

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 457
    .local v5, "mail_qq":Landroid/widget/TextView;
    const v9, 0x7f0802ba

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 459
    .local v7, "mail_sohu":Landroid/widget/TextView;
    const v9, 0x7f0802bb

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 462
    .local v8, "mail_tom":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v9, Landroid/widget/PopupWindow;

    .line 476
    invoke-direct {v9, v0, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 475
    iput-object v9, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    .line 477
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSmtpServerDown:Landroid/widget/ImageButton;

    const/16 v11, -0xd2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 479
    return-void
.end method

.method private showSslPopWindow()V
    .locals 7

    .prologue
    .line 432
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 433
    const v4, 0x7f030062

    const/4 v5, 0x0

    .line 432
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 434
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f0802bd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 435
    .local v2, "tvSsl":Landroid/widget/TextView;
    const v3, 0x7f0802bc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 437
    .local v1, "tvNone":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    new-instance v3, Landroid/widget/PopupWindow;

    const/16 v4, 0xa0

    .line 442
    const/4 v5, -0x2

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 441
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    .line 443
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->imgBtnSSLDown:Landroid/widget/ImageButton;

    const/16 v5, -0xa0

    const/4 v6, 0x4

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 444
    return-void
.end method


# virtual methods
.method public callBackMailParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "svr"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "ssl"    # I
    .param p7, "sender"    # Ljava/lang/String;
    .param p8, "auth"    # I
    .param p9, "receiver1"    # Ljava/lang/String;
    .param p10, "receiver2"    # Ljava/lang/String;
    .param p11, "receiver3"    # Ljava/lang/String;
    .param p12, "receiver4"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p7}, Lcom/easyview/bean/MailBean;->setSender(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p2}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p3}, Lcom/easyview/bean/MailBean;->setPort(I)V

    .line 585
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p4}, Lcom/easyview/bean/MailBean;->setUser(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p5}, Lcom/easyview/bean/MailBean;->setPwd(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p8}, Lcom/easyview/bean/MailBean;->setAuth(I)V

    .line 588
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p6}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 589
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p9}, Lcom/easyview/bean/MailBean;->setReceiver1(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p10}, Lcom/easyview/bean/MailBean;->setReceiver2(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p11}, Lcom/easyview/bean/MailBean;->setReceiver3(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p12}, Lcom/easyview/bean/MailBean;->setReceiver4(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 594
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "svr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pwd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sender="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiver1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiver2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiver3="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiver4="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->TAG:Ljava/lang/String;

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

    .line 618
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "cbxBtn"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, p2}, Lcom/easyview/bean/MailBean;->setChecked(Z)V

    .line 549
    const-string v0, "wifisetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isChecked = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz p2, :cond_0

    .line 551
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setAuth(I)V

    .line 552
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v0, v3}, Lcom/easyview/bean/MailBean;->setAuth(I)V

    .line 555
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setUser(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setPwd(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f06011b

    const v5, 0x7f060119

    const v4, 0x7f060117

    const v3, 0x7f060116

    const v2, 0x7f060115

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 301
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->finish()V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setMail()V

    goto :goto_0

    .line 307
    :pswitch_3
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->showSmtpPopWindow()V

    goto :goto_0

    .line 311
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->showSslPopWindow()V

    goto :goto_0

    .line 317
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 319
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    const v1, 0x7f06010d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 322
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 323
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 324
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    const v1, 0x7f06010c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 335
    :pswitch_7
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 336
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 338
    const-string v0, "25"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_8
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 344
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(I)V

    .line 346
    const-string v0, "25"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :pswitch_9
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 350
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 352
    const-string v0, "25"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :pswitch_a
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 367
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    const v1, 0x7f06011e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 369
    const-string v0, "465"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :pswitch_b
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 373
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    .line 375
    const-string v0, "25"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :pswitch_c
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 379
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    const v1, 0x7f06011d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 381
    const-string v0, "465"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :pswitch_d
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 385
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(I)V

    .line 387
    const-string v0, "25"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setPortAndSSL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :pswitch_e
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 397
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x7f08029d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getDataFromOther()V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->requestWindowFeature(I)Z

    .line 148
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setContentView(I)V

    .line 149
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 151
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060123

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 153
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->findView()V

    .line 155
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->setListener()V

    .line 156
    new-instance v0, Lcom/easyview/bean/MailBean;

    invoke-direct {v0}, Lcom/easyview/bean/MailBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    .line 157
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setMailInterface(Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;)V

    .line 158
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->strDID:Ljava/lang/String;

    .line 159
    const/4 v1, 0x4

    .line 158
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingMailActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingMailActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->getMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 483
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 484
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->overridePendingTransition(II)V

    .line 141
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 142
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 566
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->sslPopWindow:Landroid/widget/PopupWindow;

    .line 568
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 570
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->smtpPopWindow:Landroid/widget/PopupWindow;

    .line 572
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setPortAndSSL(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "num":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    invoke-virtual {v1, v0}, Lcom/easyview/bean/MailBean;->setPort(I)V

    .line 279
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const-string v1, "25"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 284
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    const v2, 0x7f06010c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v1, "465"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 289
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;

    const v2, 0x7f06010d

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method
