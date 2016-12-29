.class public Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
.super Landroid/app/Activity;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerAudioThread;,
        Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;
    }
.end annotation


# instance fields
.field private _filePath:Ljava/lang/String;

.field private curTime:Landroid/widget/TextView;

.field private g711aOutBuf:[B

.field private isReverseLandscape:Z

.field private is_play:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

.field private m_AudioTrack:Landroid/media/AudioTrack;

.field private msgHandler:Landroid/os/Handler;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private playButton:Landroid/widget/ImageButton;

.field private playProgressBar:Landroid/widget/ProgressBar;

.field private surfaceView:Landroid/view/SurfaceView;

.field private thread_run:Z

.field private totalTime:Landroid/widget/TextView;

.field private tvFileName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/test.avi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    .line 51
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 53
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playProgressBar:Landroid/widget/ProgressBar;

    .line 54
    const/16 v0, 0x280

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->g711aOutBuf:[B

    .line 55
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 56
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 57
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 59
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->tvFileName:Landroid/widget/TextView;

    .line 60
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->curTime:Landroid/widget/TextView;

    .line 61
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->totalTime:Landroid/widget/TextView;

    .line 62
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;

    .line 63
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z

    .line 489
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$1;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->msgHandler:Landroid/os/Handler;

    .line 497
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z

    .line 47
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z

    return-void
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 497
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->totalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z

    return v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->curTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->g711aOutBuf:[B

    return-object v0
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 500
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 524
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 525
    return-void
.end method


# virtual methods
.method public initAudioDev()Z
    .locals 11

    .prologue
    const/16 v0, 0x1f40

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 467
    const/4 v4, 0x2

    .line 468
    .local v4, "audioFormat":I
    const/4 v8, 0x0

    .line 470
    .local v8, "mMinBufSize":I
    const/4 v3, 0x2

    .line 471
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 472
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 473
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--audio, mMinBufSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    :cond_0
    move v0, v10

    .line 486
    :goto_0
    return v0

    .line 479
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    mul-int/lit8 v5, v8, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 480
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    move v0, v9

    .line 486
    goto :goto_0

    .line 481
    :catch_0
    move-exception v7

    .line 482
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v10

    .line 483
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 70
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 71
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->requestWindowFeature(I)Z

    .line 72
    const v1, 0x7f030038

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->setContentView(I)V

    .line 73
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z

    .line 74
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z

    .line 77
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->setRequestedOrientation(I)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->initAudioDev()Z

    .line 81
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 82
    const v1, 0x7f08016b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->tvFileName:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f08016e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playProgressBar:Landroid/widget/ProgressBar;

    .line 85
    const v1, 0x7f08016d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->curTime:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->totalTime:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f08016c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 89
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->tvFileName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v2, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$2;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->startOrientationChangeListener()V

    .line 109
    return-void

    .line 79
    .end local v0    # "in":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 114
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "DecodeActivity"

    const-string v2, "KEY_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z

    .line 119
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 127
    :goto_1
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Landroid/view/Surface;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 137
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 149
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->interrupt()V

    .line 152
    :cond_0
    return-void
.end method
