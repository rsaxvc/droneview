.class public Lobject/p2pwificam/clientActivity/CallActivity;
.super Landroid/app/Activity;
.source "CallActivity.java"


# static fields
.field public static MSG_CALL_AUDIO:I

.field public static MSG_CALL_OFF:I

.field public static MSG_CALL_ON:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private AnimationDrawableTask:Ljava/lang/Runnable;

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private activity:I

.field private animArrowDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animArrowDrawableDown:Landroid/graphics/drawable/AnimationDrawable;

.field private animArrowDrawableLeft:Landroid/graphics/drawable/AnimationDrawable;

.field private animArrowDrawableUp:Landroid/graphics/drawable/AnimationDrawable;

.field private camera_channel:I

.field private conn_status:Ljava/lang/String;

.field private dev_nickname:Ljava/lang/String;

.field private dev_uuid:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private imageCamera:Landroid/widget/ImageView;

.field private imageID:[I

.field private imgView:[Landroid/widget/ImageView;

.field private imgView_getup_arrow:Landroid/widget/ImageView;

.field private imgView_getup_arrow_down:Landroid/widget/ImageView;

.field private imgView_getup_arrow_left:Landroid/widget/ImageView;

.field private imgView_getup_arrow_up:Landroid/widget/ImageView;

.field private mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private openRunnable:Ljava/lang/Runnable;

.field private preference:Landroid/content/SharedPreferences;

.field private sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

.field private state:Ljava/lang/Boolean;

.field private strName:Ljava/lang/String;

.field private textTitle:Landroid/widget/TextView;

.field thread:Ljava/lang/Thread;

.field private view_acc:Ljava/lang/String;

.field private view_pwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "QINZDLOCK"

    sput-object v0, Lobject/p2pwificam/clientActivity/CallActivity;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    sput v0, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_ON:I

    .line 61
    const/4 v0, 0x2

    sput v0, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_OFF:I

    .line 62
    const/4 v0, 0x3

    sput v0, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_AUDIO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 47
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView_getup_arrow:Landroid/widget/ImageView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView_getup_arrow_left:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 48
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView_getup_arrow_up:Landroid/widget/ImageView;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView_getup_arrow_down:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView:[Landroid/widget/ImageView;

    .line 50
    new-array v0, v5, [Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->animArrowDrawable:Landroid/graphics/drawable/AnimationDrawable;

    aput-object v1, v0, v6

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->animArrowDrawableLeft:Landroid/graphics/drawable/AnimationDrawable;

    aput-object v1, v0, v4

    .line 51
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->animArrowDrawableUp:Landroid/graphics/drawable/AnimationDrawable;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity;->animArrowDrawableDown:Landroid/graphics/drawable/AnimationDrawable;

    aput-object v2, v0, v1

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imageID:[I

    .line 57
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mContext:Landroid/content/Context;

    .line 63
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->strName:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->dev_uuid:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->dev_nickname:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->conn_status:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->view_acc:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->view_pwd:Ljava/lang/String;

    .line 72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->state:Ljava/lang/Boolean;

    .line 73
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->textTitle:Landroid/widget/TextView;

    .line 74
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imageCamera:Landroid/widget/ImageView;

    .line 77
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity;->thread:Ljava/lang/Thread;

    .line 242
    new-instance v0, Lobject/p2pwificam/clientActivity/CallActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallActivity$1;-><init>(Lobject/p2pwificam/clientActivity/CallActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->AnimationDrawableTask:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lobject/p2pwificam/clientActivity/CallActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallActivity$2;-><init>(Lobject/p2pwificam/clientActivity/CallActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lobject/p2pwificam/clientActivity/CallActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallActivity$3;-><init>(Lobject/p2pwificam/clientActivity/CallActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->openRunnable:Ljava/lang/Runnable;

    .line 36
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x7f08008b
        0x7f08008a
        0x7f080086
        0x7f080088
    .end array-data
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/CallActivity;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/CallActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->AnimationDrawableTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/CallActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->state:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/CallActivity;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->stopService()V

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/CallActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/CallActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->state:Ljava/lang/Boolean;

    return-object v0
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 145
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->strName:Ljava/lang/String;

    .line 147
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 150
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 151
    .local v1, "currDisplay":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 152
    .local v4, "displayWidth":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 153
    .local v3, "displayHeight":I
    mul-int/lit8 v8, v3, 0x1

    div-int/lit8 v0, v8, 0x3

    .line 154
    .local v0, "curr":I
    mul-int/lit8 v8, v3, 0x1

    div-int/lit8 v2, v8, 0x4

    .line 155
    .local v2, "currr":I
    const-string v8, "zdclock"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "displayWidth == "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   displayHeight == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   curr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const v8, 0x7f080082

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 177
    const v8, 0x7f080081

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 179
    .local v6, "linearlayout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v8, v0, -0x16

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 183
    const/16 v8, 0x14

    invoke-virtual {v7, v11, v11, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v8, 0x4

    if-lt v5, v8, :cond_0

    .line 205
    return-void

    .line 193
    :cond_0
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView:[Landroid/widget/ImageView;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imageID:[I

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aput-object v8, v9, v5

    .line 194
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imgView:[Landroid/widget/ImageView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v8, v9, v5

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/CallActivity;->stopService(Landroid/content/Intent;)Z

    .line 329
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->finish()V

    .line 331
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 348
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    const/16 v12, 0x400

    const/4 v11, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-object p0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mContext:Landroid/content/Context;

    .line 89
    const-string v8, "isFirst"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lobject/p2pwificam/clientActivity/CallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;

    .line 92
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 93
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "activity"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;

    const-string v9, "activity"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    .local v0, "activity11":Ljava/lang/Boolean;
    const-string v8, "QINZDLOCK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "activity 11111 ==="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/CallActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->getDataFromOther()V

    .line 106
    const v8, 0x7f030015

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->setContentView(I)V

    .line 107
    const v8, 0x7f08008d

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->textTitle:Landroid/widget/TextView;

    .line 108
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->textTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v9}, Lcom/easyview/basecamera/BaseCamera;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v8, 0x7f08008e

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imageCamera:Landroid/widget/ImageView;

    .line 111
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v8}, Lcom/easyview/basecamera/BaseCamera;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 114
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->imageCamera:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->initViews()V

    .line 119
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 120
    .local v6, "res":Landroid/content/res/Resources;
    const v8, 0x7f08008c

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 122
    .local v5, "main":Landroid/view/View;
    :try_start_0
    const-string v8, "wallpaper"

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    .line 123
    .local v7, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 124
    .local v3, "ds":Landroid/util/DisplayMetrics;
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 125
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "ds":Landroid/util/DisplayMetrics;
    .end local v7    # "wm":Landroid/app/WallpaperManager;
    :cond_1
    :goto_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->setMainHandler(Landroid/os/Handler;)V

    .line 136
    return-void

    .line 130
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method protected onDestory()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->thread:Ljava/lang/Thread;

    .line 232
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->state:Ljava/lang/Boolean;

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/CallActivity;->stopService(Landroid/content/Intent;)Z

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 354
    const-string v0, "zdclock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyCode ==========="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "zdclock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event.getKeyCode() ==========="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 226
    const-string v1, "zdclock"

    const-string v2, "ZdclockActivity =====super.onPause()999999999999999999"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mArrowDrawable:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->AnimationDrawableTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity;->openRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->thread:Ljava/lang/Thread;

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    const-string v0, "zdclock"

    const-string v1, "ZdclockActivity =====super.onResume()8888888888888888888888888888888888"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 341
    return-void
.end method
