.class public Lobject/p2pwificam/clientActivity/MediaPlayActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "MediaPlayActivity.java"

# interfaces
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;,
        Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;
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

.field private is_play:Z

.field private layoutConnPrompt:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;

.field private m_AudioTrack:Landroid/media/AudioTrack;

.field private m_textTimestampTextView:Landroid/widget/TextView;

.field mediaPlayer:Landroid/media/MediaPlayer;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private nTimestamp:J

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private playImg:Landroid/widget/ImageView;

.field private playSeekBar:Landroid/widget/SeekBar;

.field private strDID:Ljava/lang/String;

.field private strFilePath:Ljava/lang/String;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private thread_run:Z

.field private videoDataLen:I

.field private videodata:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 66
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videodata:[B

    .line 67
    iput v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videoDataLen:I

    .line 68
    iput v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoWidth:I

    .line 69
    iput v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoHeight:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nTimestamp:J

    .line 73
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    .line 75
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->isPlaySeekBar:Z

    .line 83
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->thread_run:Z

    .line 84
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->is_play:Z

    .line 85
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 86
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;

    .line 88
    iput v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I

    .line 89
    iput v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I

    .line 90
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->exit:Z

    .line 125
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->mHandler:Landroid/os/Handler;

    .line 185
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 324
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$2;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->dataListener:Lcom/easyview/basecamera/ICameraDataListener;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->layoutConnPrompt:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I

    return v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I

    return v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/MediaPlayActivity;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I

    return-void
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->strFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/MediaPlayActivity;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->thread_run:Z

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->thread_run:Z

    return v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->is_play:Z

    return v0
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videoDataLen:I

    return v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nTimestamp:J

    return-wide v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 294
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->layoutConnPrompt:Landroid/widget/LinearLayout;

    .line 296
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playSeekBar:Landroid/widget/SeekBar;

    .line 298
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 299
    new-instance v0, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 300
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 302
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 305
    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_textTimestampTextView:Landroid/widget/TextView;

    .line 306
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->strDID:Ljava/lang/String;

    .line 287
    const-string v1, "recordIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->_recordIndex:I

    .line 288
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->strFilePath:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 290
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->dataListener:Lcom/easyview/basecamera/ICameraDataListener;

    invoke-virtual {v1, v2}, Lcom/easyview/basecamera/BaseCamera;->AddDataListener(Lcom/easyview/basecamera/ICameraDataListener;)V

    .line 291
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lobject/p2pwificam/clientActivity/MediaPlayActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$3;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 262
    return-void
.end method


# virtual methods
.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 343
    const-string v0, "PlayBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioData: len :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 379
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

    .line 361
    iget v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I

    .line 362
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videodata:[B

    .line 363
    iput p3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videoDataLen:I

    .line 364
    iput p4, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoWidth:I

    .line 365
    iput p5, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoHeight:I

    .line 368
    if-ne p2, v1, :cond_0

    .line 369
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public initAudioDev()Z
    .locals 11

    .prologue
    const/16 v0, 0x1f40

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 382
    const/4 v4, 0x2

    .line 383
    .local v4, "audioFormat":I
    const/4 v8, 0x0

    .line 385
    .local v8, "mMinBufSize":I
    const/4 v3, 0x2

    .line 386
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 387
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--audio, mMinBufSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    :cond_0
    move v0, v10

    .line 401
    :goto_0
    return v0

    .line 394
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    mul-int/lit8 v5, v8, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 395
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    move v0, v9

    .line 401
    goto :goto_0

    .line 396
    :catch_0
    move-exception v7

    .line 397
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v10

    .line 398
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x80

    .line 188
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getDataFromOther()V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->requestWindowFeature(I)Z

    .line 191
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 192
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 194
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->setContentView(I)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->setRequestedOrientation(I)V

    .line 197
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->findView()V

    .line 198
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->setListener()V

    .line 240
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->initAudioDev()Z

    .line 241
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->start()V

    .line 242
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->exit:Z

    .line 317
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->recordStop()V

    .line 320
    const/4 v0, 0x0

    invoke-static {v0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayBackInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;)V

    .line 322
    const-string v0, "tag"

    const-string v1, "PlayBackActivity  onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 268
    :pswitch_0
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->isPlaySeekBar:Z

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->isPlaySeekBar:Z

    .line 270
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->isPlaySeekBar:Z

    .line 273
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
