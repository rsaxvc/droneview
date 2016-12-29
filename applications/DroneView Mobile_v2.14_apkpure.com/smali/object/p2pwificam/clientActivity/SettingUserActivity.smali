.class public Lobject/p2pwificam/clientActivity/SettingUserActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingUserActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
    }
.end annotation


# instance fields
.field private CAMERAPARAM:I

.field private final FAILED:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private adminName:Ljava/lang/String;

.field private adminNewPwd:Ljava/lang/String;

.field private adminPwd:Ljava/lang/String;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private cameraName:Ljava/lang/String;

.field private cboxShowVisitorPwd:Landroid/widget/CheckBox;

.field private cbxShowPwd:Landroid/widget/CheckBox;

.field private editConfirmPwd:Landroid/widget/EditText;

.field private editName:Landroid/widget/EditText;

.field private editNewPwd:Landroid/widget/EditText;

.field private editPwd:Landroid/widget/EditText;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private mHandler:Landroid/os/Handler;

.field private oldpwd3:Ljava/lang/String;

.field private operatorName:Ljava/lang/String;

.field private operatorPwd:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private settingRunnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private visitorName:Ljava/lang/String;

.field private visitorPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 44
    const-string v0, "SettingUserActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->CAMERAPARAM:I

    .line 47
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TIMEOUT:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->FAILED:I

    .line 49
    iput v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->SUCCESS:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->PARAMS:I

    .line 51
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cameraName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorName:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorPwd:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorPwd:Ljava/lang/String;

    .line 57
    const-string v0, "admin"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    .line 62
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editPwd:Landroid/widget/EditText;

    .line 64
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editNewPwd:Landroid/widget/EditText;

    .line 65
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editConfirmPwd:Landroid/widget/EditText;

    .line 68
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    .line 69
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnOk:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 71
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 72
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 81
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cboxShowVisitorPwd:Landroid/widget/CheckBox;

    .line 82
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    .line 84
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingUserActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->runnable:Ljava/lang/Runnable;

    .line 319
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingUserActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->settingRunnable:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Lobject/p2pipcam/utils/DataBaseHelper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/SettingUserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cameraName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingUserActivity;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z

    return v0
.end method

.method private findView()V
    .locals 4

    .prologue
    .line 219
    const v2, 0x7f0802d4

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    .line 220
    const v2, 0x7f0802d5

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editPwd:Landroid/widget/EditText;

    .line 221
    const v2, 0x7f0802d7

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editNewPwd:Landroid/widget/EditText;

    .line 222
    const v2, 0x7f0802d9

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editConfirmPwd:Landroid/widget/EditText;

    .line 224
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 227
    const v2, 0x7f0802da

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    .line 235
    const v2, 0x7f0802d3

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnOk:Landroid/widget/Button;

    .line 236
    const v2, 0x7f0802d2

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 240
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 241
    const v3, 0x7f02015e

    .line 240
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 246
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    .line 214
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cameraName:Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 216
    return-void
.end method

.method private setLisetener()V
    .locals 5

    .prologue
    .line 185
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->cbxShowPwd:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v1, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;

    const v4, 0x7f0802d4

    invoke-direct {v1, p0, v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;I)V

    .line 192
    .local v1, "myNameTextWatch":Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    new-instance v3, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;

    const v4, 0x7f0802d5

    invoke-direct {v3, p0, v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;I)V

    .line 194
    .local v3, "myPwdTextWatch":Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    new-instance v2, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;

    const v4, 0x7f0802d7

    invoke-direct {v2, p0, v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;I)V

    .line 196
    .local v2, "myNewPwdTextWatch":Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editNewPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;

    const v4, 0x7f0802d9

    invoke-direct {v0, p0, v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;I)V

    .line 200
    .local v0, "myConfirmPwdTextWatch":Lobject/p2pwificam/clientActivity/SettingUserActivity$MyTextWatch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    return-void
.end method

.method private setUser()V
    .locals 9

    .prologue
    .line 266
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const v0, 0x7f0600d5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    .line 312
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const v0, 0x7f0600d6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->getPwd()Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "oldpwd":Ljava/lang/String;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    const v0, 0x7f0600d7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adminPwd == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminNewPwd =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminNewPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorName:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorPwd:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorName:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorPwd:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adminName==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adminPwd== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  visitorName== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visitorPwd ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "operatorName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "operatorPwd == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oldpwd3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorName:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->visitorPwd:Ljava/lang/String;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorName:Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorPwd:Ljava/lang/String;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPUserSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->oldpwd3:Ljava/lang/String;

    new-instance v3, Lobject/p2pwificam/clientActivity/SettingUserActivity$4;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/easyview/basecamera/BaseCamera;->setPassword(Ljava/lang/String;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto/16 :goto_0

    .line 310
    .end local v8    # "oldpwd":Ljava/lang/String;
    :cond_4
    const v0, 0x7f0600d3

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    goto/16 :goto_0
.end method

.method private settingTimeOut()V
    .locals 4

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->successFlag:Z

    .line 316
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->settingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method


# virtual methods
.method public callBackPPPPMsgNotifyData(Ljava/lang/String;II)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "param"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    if-nez p2, :cond_0

    .line 478
    iput p3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->CAMERAPARAM:I

    .line 481
    :cond_0
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

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

    .line 468
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    return-void
.end method

.method public callBackUserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "user1"    # Ljava/lang/String;
    .param p3, "pwd1"    # Ljava/lang/String;
    .param p4, "user2"    # Ljava/lang/String;
    .param p5, "pwd2"    # Ljava/lang/String;
    .param p6, "user3"    # Ljava/lang/String;
    .param p7, "pwd3"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pwd1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    const-string v2, " user2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pwd2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    const-string v2, " pwd3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-object p6, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;

    .line 450
    iput-object p7, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;

    .line 451
    iput-object p4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorName:Ljava/lang/String;

    .line 452
    iput-object p5, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->operatorPwd:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 399
    :pswitch_0
    if-eqz p2, :cond_0

    .line 400
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 401
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editNewPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 402
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editConfirmPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 406
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editNewPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 407
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->editConfirmPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x7f0802da
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->setUser()V

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->finish()V

    .line 257
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x7f0802d2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->getDataFromOther()V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->requestWindowFeature(I)Z

    .line 169
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->setContentView(I)V

    .line 175
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 176
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->findView()V

    .line 177
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->setLisetener()V

    .line 178
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setUserInterface(Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;)V

    .line 182
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 393
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 160
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->overridePendingTransition(II)V

    .line 161
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 162
    return-void
.end method
