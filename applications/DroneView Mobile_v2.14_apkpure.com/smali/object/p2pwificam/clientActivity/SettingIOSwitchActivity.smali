.class public Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "SettingIOSwitchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CameraName:Ljava/lang/String;

.field private final FAIL:I

.field private final PARAMS:I

.field private final SUCCESS:I

.field private TIMEOUT:I

.field private _camera:Lcom/easyview/ppcs/PPCSCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnOK:Landroid/widget/Button;

.field private btnSettingButton:Landroid/widget/Button;

.field private checkBox:[Landroid/widget/CheckBox;

.field private editText:[Landroid/widget/EditText;

.field mhandler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field runnable:Ljava/lang/Runnable;

.field private strDID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 44
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 53
    new-array v0, v1, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    .line 54
    new-array v0, v1, [Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    .line 58
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 60
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->TIMEOUT:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->FAIL:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->SUCCESS:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->PARAMS:I

    .line 64
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 66
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;-><init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->mhandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;-><init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->runnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Lcom/easyview/ppcs/PPCSCamera;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)[Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    return-object v0
.end method

.method private findView()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->btnBack:Landroid/widget/ImageButton;

    .line 143
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->btnOK:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 146
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 147
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    .line 148
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v6

    .line 149
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const v0, 0x7f080220

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v7

    .line 150
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const/4 v2, 0x5

    const v0, 0x7f080222

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 151
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const/4 v2, 0x6

    const v0, 0x7f080224

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 152
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    const/4 v2, 0x7

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 154
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v3

    .line 155
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v4

    .line 156
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v5

    .line 157
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v6

    .line 158
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v7

    .line 159
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const/4 v2, 0x5

    const v0, 0x7f080223

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 160
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const/4 v2, 0x6

    const v0, 0x7f080225

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 161
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    const/4 v2, 0x7

    const v0, 0x7f080227

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v1, v2

    .line 167
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->strDID:Ljava/lang/String;

    .line 176
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->CameraName:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    check-cast v1, Lcom/easyview/ppcs/PPCSCamera;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->finish()V

    .line 192
    const v2, 0x7f040006

    const/high16 v3, 0x7f040000

    invoke-virtual {p0, v2, v3}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 196
    :pswitch_1
    const-string v2, "PPCS"

    const-string v3, "onClick setting_switch_ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 204
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    new-instance v3, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$4;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$4;-><init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V

    invoke-virtual {v2, v3}, Lcom/easyview/ppcs/PPCSCamera;->setIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v2, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->enable:I

    .line 201
    :goto_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v2, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->Name:Lstruct/CString;

    invoke-virtual {v2, v1}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v2, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->enable:I

    goto :goto_2

    .line 188
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
    .line 104
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->getDataFromOther()V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->requestWindowFeature(I)Z

    .line 108
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->setContentView(I)V

    .line 109
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 111
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0600cd

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 113
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->findView()V

    .line 115
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->mhandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$3;-><init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/ppcs/PPCSCamera;->getIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 184
    return-void
.end method
