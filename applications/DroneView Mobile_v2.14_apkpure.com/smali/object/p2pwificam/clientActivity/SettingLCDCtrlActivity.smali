.class public Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingLCDCtrlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TIMEOUT:I

.field private _camera:Lcom/easyview/ppcs/PPCSCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnOK:Landroid/widget/Button;

.field private editMessage:Landroid/widget/EditText;

.field private editTitle:Landroid/widget/EditText;

.field mhandler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 56
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;

    .line 57
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 62
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->TIMEOUT:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->FAIL:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->SUCCESS:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->PARAMS:I

    .line 66
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 68
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->mhandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->runnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Lcom/easyview/ppcs/PPCSCamera;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->btnBack:Landroid/widget/ImageButton;

    .line 159
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->btnOK:Landroid/widget/Button;

    .line 170
    const v0, 0x7f080228

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f080229

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;

    .line 184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->strDID:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    check-cast v1, Lcom/easyview/ppcs/PPCSCamera;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 195
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->finish()V

    .line 209
    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "PPCS"

    const-string v2, "onClick setting_switch_ok"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v1, v1, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    iget-object v1, v1, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;->text:Lstruct/CString;

    const-string v2, "iso-8859-1"

    invoke-virtual {v1, v0, v2}, Lstruct/CString;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    new-instance v2, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$4;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V

    invoke-virtual {v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->setLCDText(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x7f080214
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->getDataFromOther()V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->requestWindowFeature(I)Z

    .line 124
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->setContentView(I)V

    .line 125
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 127
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0600cd

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 129
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->findView()V

    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->mhandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/ppcs/PPCSCamera;->queryLCDText(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 201
    return-void
.end method
