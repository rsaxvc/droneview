.class public Lobject/p2pwificam/clientActivity/SettingFtpActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingFtpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
    }
.end annotation


# instance fields
.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private final UPLOADTIMETOOLONG:I

.field private cameraName:Ljava/lang/String;

.field private editFtpPort:Landroid/widget/EditText;

.field private editFtpPwd:Landroid/widget/EditText;

.field private editFtpServer:Landroid/widget/EditText;

.field private editFtpUser:Landroid/widget/EditText;

.field private ftpBean:Lobject/p2pipcam/bean/FtpBean;

.field private ftpCancel:Landroid/widget/ImageButton;

.field private ftpOk:Landroid/widget/Button;

.field private mBridgeService:Lobject/p2pwificam/clientActivity/BridgeService;

.field private mHandler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;

.field private successFlag:Z

.field private tvCameraName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 37
    const-string v0, "SettingFtpActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->FAIL:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->SUCCESS:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->PARAMS:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->TIMEOUT:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->UPLOADTIMETOOLONG:I

    .line 45
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->cameraName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 47
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->mBridgeService:Lobject/p2pwificam/clientActivity/BridgeService;

    .line 48
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->runnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingFtpActivity;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpServer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpUser:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->successFlag:Z

    return v0
.end method

.method private findView()V
    .locals 5

    .prologue
    .line 158
    const v3, 0x7f080294

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpOk:Landroid/widget/Button;

    .line 159
    const v3, 0x7f080293

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpCancel:Landroid/widget/ImageButton;

    .line 161
    const v3, 0x7f080296

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpServer:Landroid/widget/EditText;

    .line 162
    const v3, 0x7f080298

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPort:Landroid/widget/EditText;

    .line 163
    const v3, 0x7f08029a

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpUser:Landroid/widget/EditText;

    .line 164
    const v3, 0x7f08029c

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPwd:Landroid/widget/EditText;

    .line 167
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->tvCameraName:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 170
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 171
    const v4, 0x7f02015e

    .line 170
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 176
    return-void
.end method

.method private getDataFromOther()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->strDID:Ljava/lang/String;

    .line 204
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->cameraName:Ljava/lang/String;

    .line 205
    return-void
.end method

.method private setFtp()V
    .locals 8

    .prologue
    .line 194
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bean:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v2}, Lobject/p2pipcam/bean/FtpBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->strDID:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/FtpBean;->getSvr_ftp()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v2}, Lobject/p2pipcam/bean/FtpBean;->getUser()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/FtpBean;->getPwd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/FtpBean;->getDir()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/FtpBean;->getPort()I

    move-result v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v6}, Lobject/p2pipcam/bean/FtpBean;->getMode()I

    move-result v6

    .line 198
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v7}, Lobject/p2pipcam/bean/FtpBean;->getUpload_interval()I

    move-result v7

    .line 195
    invoke-static/range {v0 .. v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPFtpSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    .line 199
    return-void
.end method

.method private setListener()V
    .locals 6

    .prologue
    .line 128
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpCancel:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v2, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;

    const v4, 0x7f080296

    invoke-direct {v2, p0, v4}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;I)V

    .line 131
    .local v2, "serverTW":Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpServer:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;

    const v4, 0x7f080298

    invoke-direct {v0, p0, v4}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;I)V

    .line 133
    .local v0, "portTW":Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPort:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    new-instance v3, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;

    const v4, 0x7f08029a

    invoke-direct {v3, p0, v4}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;I)V

    .line 135
    .local v3, "userTW":Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpUser:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    new-instance v1, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;

    const v4, 0x7f08029c

    invoke-direct {v1, p0, v4}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;I)V

    .line 137
    .local v1, "pwdTW":Lobject/p2pwificam/clientActivity/SettingFtpActivity$MyTextWitch;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPwd:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lobject/p2pwificam/clientActivity/SettingFtpActivity$3;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 155
    return-void
.end method


# virtual methods
.method public callBackFtpParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "svr_ftp"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "dir"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "mode"    # I
    .param p8, "upload_interval"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p2}, Lobject/p2pipcam/bean/FtpBean;->setSvr_ftp(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p8}, Lobject/p2pipcam/bean/FtpBean;->setUpload_interval(I)V

    .line 276
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p3}, Lobject/p2pipcam/bean/FtpBean;->setUser(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p4}, Lobject/p2pipcam/bean/FtpBean;->setPwd(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p6}, Lobject/p2pipcam/bean/FtpBean;->setPort(I)V

    .line 279
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p5}, Lobject/p2pipcam/bean/FtpBean;->setDir(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    invoke-virtual {v0, p7}, Lobject/p2pipcam/bean/FtpBean;->setMode(I)V

    .line 281
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->TAG:Ljava/lang/String;

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

    .line 288
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 182
    :pswitch_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->setFtp()V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->finish()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7f080293
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->getDataFromOther()V

    .line 97
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->requestWindowFeature(I)Z

    .line 99
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->setContentView(I)V

    .line 100
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06013b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 104
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    new-instance v0, Lobject/p2pipcam/bean/FtpBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/FtpBean;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;

    .line 106
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->findView()V

    .line 107
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->setListener()V

    .line 109
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setFtpInterface(Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;)V

    .line 110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->strDID:Ljava/lang/String;

    .line 111
    const/4 v1, 0x4

    .line 110
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->overridePendingTransition(II)V

    .line 91
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 92
    return-void
.end method
