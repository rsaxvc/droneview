.class public Lobject/p2pwificam/clientActivity/PlayBackActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PlayBackActivity.java"

# interfaces
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff


# instance fields
.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private _recordIndex:I

.field dataListener:Lcom/easyview/basecamera/ICameraDataListener;

.field exit:Z

.field private i1:I

.field private i2:I

.field private isPlaySeekBar:Z

.field private layoutConnPrompt:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private m_textTimestampTextView:Landroid/widget/TextView;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private nTimestamp:J

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private playImg:Landroid/widget/ImageView;

.field private playSeekBar:Landroid/widget/SeekBar;

.field private strDID:Ljava/lang/String;

.field private strFilePath:Ljava/lang/String;

.field private videoDataLen:I

.field private videodata:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 38
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videodata:[B

    .line 39
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videoDataLen:I

    .line 40
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoWidth:I

    .line 41
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoHeight:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nTimestamp:J

    .line 45
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    .line 47
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->isPlaySeekBar:Z

    .line 55
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i1:I

    .line 56
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i2:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->exit:Z

    .line 92
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PlayBackActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PlayBackActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->dataListener:Lcom/easyview/basecamera/ICameraDataListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayBackActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->layoutConnPrompt:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PlayBackActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/PlayBackActivity;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i2:I

    return v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/PlayBackActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i1:I

    return v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/PlayBackActivity;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i2:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PlayBackActivity;)[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PlayBackActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PlayBackActivity;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/PlayBackActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/PlayBackActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/PlayBackActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videoDataLen:I

    return v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/PlayBackActivity;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nTimestamp:J

    return-wide v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/PlayBackActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 229
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playImg:Landroid/widget/ImageView;

    .line 230
    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->layoutConnPrompt:Landroid/widget/LinearLayout;

    .line 231
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playSeekBar:Landroid/widget/SeekBar;

    .line 233
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 234
    new-instance v0, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 235
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 237
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    .line 238
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->strDID:Ljava/lang/String;

    .line 222
    const-string v1, "recordIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->_recordIndex:I

    .line 223
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->strFilePath:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 225
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->dataListener:Lcom/easyview/basecamera/ICameraDataListener;

    invoke-virtual {v1, v2}, Lcom/easyview/basecamera/BaseCamera;->AddDataListener(Lcom/easyview/basecamera/ICameraDataListener;)V

    .line 226
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayBackActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$3;-><init>(Lobject/p2pwificam/clientActivity/PlayBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 197
    return-void
.end method


# virtual methods
.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 275
    const-string v0, "PlayBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioData: len :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 311
    return-void
.end method

.method public callBackPlaybackVideoData([BIIIII)V
    .locals 2
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "timestamp"    # I

    .prologue
    const/4 v1, 0x1

    .line 293
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->i1:I

    .line 294
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videodata:[B

    .line 295
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->videoDataLen:I

    .line 296
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoWidth:I

    .line 297
    iput p5, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->nVideoHeight:I

    .line 300
    if-ne p2, v1, :cond_0

    .line 301
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x80

    .line 155
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->getDataFromOther()V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->requestWindowFeature(I)Z

    .line 158
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 159
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 161
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->setContentView(I)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->setRequestedOrientation(I)V

    .line 164
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->findView()V

    .line 165
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->setListener()V

    .line 166
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayBackInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;)V

    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->strFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->recordPlay(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;-><init>(Lobject/p2pwificam/clientActivity/PlayBackActivity;)V

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->start()V

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->exit:Z

    .line 249
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->recordStop()V

    .line 252
    const/4 v0, 0x0

    invoke-static {v0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayBackInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;)V

    .line 254
    const-string v0, "tag"

    const-string v1, "PlayBackActivity  onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 203
    :pswitch_0
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->isPlaySeekBar:Z

    if-eqz v0, :cond_0

    .line 204
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->isPlaySeekBar:Z

    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->isPlaySeekBar:Z

    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->playSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
