.class public Lobject/p2pwificam/clientActivity/LightActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "LightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LightActivity"

.field private static final MESSAGE_LIGHT:I = 0xb


# instance fields
.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private _light_white:Landroid/widget/SeekBar;

.field private _light_yellow:Landroid/widget/SeekBar;

.field private btnBack:Landroid/widget/ImageButton;

.field private lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private light_white_value:I

.field private light_yellow_value:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 54
    iput v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I

    .line 55
    iput v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I

    .line 56
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_white:Landroid/widget/SeekBar;

    .line 57
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_yellow:Landroid/widget/SeekBar;

    .line 129
    new-instance v0, Lobject/p2pwificam/clientActivity/LightActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/LightActivity$1;-><init>(Lobject/p2pwificam/clientActivity/LightActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 175
    new-instance v0, Lobject/p2pwificam/clientActivity/LightActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/LightActivity$2;-><init>(Lobject/p2pwificam/clientActivity/LightActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/LightActivity;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/LightActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/LightActivity;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I

    return v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/LightActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/LightActivity;)Lcom/easyview/basecamera/BaseCamera;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_white:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_yellow:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/LightActivity;II)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/LightActivity;->setLightValue(II)V

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 88
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->btnBack:Landroid/widget/ImageButton;

    .line 89
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f08013f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 92
    .local v0, "btn":Landroid/widget/ImageButton;
    new-instance v1, Lobject/p2pwificam/clientActivity/LightActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/LightActivity$3;-><init>(Lobject/p2pwificam/clientActivity/LightActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f080142

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 101
    .restart local v0    # "btn":Landroid/widget/ImageButton;
    new-instance v1, Lobject/p2pwificam/clientActivity/LightActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/LightActivity$4;-><init>(Lobject/p2pwificam/clientActivity/LightActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LightActivity;->setLightListener()V

    .line 110
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "cameraid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "strDID":Ljava/lang/String;
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 84
    .end local v1    # "strDID":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setLightListener()V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_white:Landroid/widget/SeekBar;

    .line 114
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_yellow:Landroid/widget/SeekBar;

    .line 115
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_white:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_light_yellow:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/LightActivity$5;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/LightActivity$5;-><init>(Lobject/p2pwificam/clientActivity/LightActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 128
    :cond_0
    return-void
.end method

.method private setLightValue(II)V
    .locals 3
    .param p1, "white_val"    # I
    .param p2, "yellow_val"    # I

    .prologue
    .line 170
    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 171
    .local v0, "sb_white":Landroid/widget/SeekBar;
    const v2, 0x7f080143

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/LightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 172
    .local v1, "sb_yellow":Landroid/widget/SeekBar;
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 173
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 174
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080019

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/LightActivity;->finish()V

    .line 159
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->overridePendingTransition(II)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x2710

    .line 61
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LightActivity;->getDataFromOther()V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LightActivity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/LightActivity;->setContentView(I)V

    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/easyview/basecamera/BaseCamera;->setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 69
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/LightActivity;->findView()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 75
    return-void
.end method
