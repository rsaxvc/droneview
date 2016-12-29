.class public Lobject/p2pwificam/clientActivity/MediaViewerActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "MediaViewerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Media"


# instance fields
.field private _filePath:Ljava/lang/String;

.field private curTime:Landroid/widget/TextView;

.field private is_play:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

.field private m_AudioTrack:Landroid/media/AudioTrack;

.field private msgHandler:Landroid/os/Handler;

.field private playButton:Landroid/widget/ImageButton;

.field private sb_progress:Landroid/widget/SeekBar;

.field private surfaceView:Landroid/view/SurfaceView;

.field private thread_run:Z

.field private totalTime:Landroid/widget/TextView;

.field private tvFileName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "/test.avi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    .line 47
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 48
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->sb_progress:Landroid/widget/SeekBar;

    .line 49
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 51
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->tvFileName:Landroid/widget/TextView;

    .line 52
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->curTime:Landroid/widget/TextView;

    .line 53
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->totalTime:Landroid/widget/TextView;

    .line 54
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z

    .line 417
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$1;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->msgHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->sb_progress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->totalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->is_play:Z

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z

    return v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->curTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 427
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 447
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 448
    return-void
.end method


# virtual methods
.method public initAudioDev()Z
    .locals 11

    .prologue
    const/16 v0, 0x1f40

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 391
    const/4 v4, 0x2

    .line 392
    .local v4, "audioFormat":I
    const/4 v8, 0x0

    .line 394
    .local v8, "mMinBufSize":I
    const/4 v3, 0x2

    .line 395
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 396
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 398
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--audio, mMinBufSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    .line 401
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    :cond_0
    move v0, v10

    .line 414
    :goto_0
    return v0

    .line 405
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    .line 406
    mul-int/lit8 v5, v8, 0x2

    .line 407
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 405
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 408
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    move v0, v9

    .line 414
    goto :goto_0

    .line 409
    :catch_0
    move-exception v7

    .line 410
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v10

    .line 411
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x80

    .line 61
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->requestWindowFeature(I)Z

    .line 67
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->setRequestedOrientation(I)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->initAudioDev()Z

    .line 73
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 75
    const v1, 0x7f08016b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->tvFileName:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f080170

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->sb_progress:Landroid/widget/SeekBar;

    .line 77
    const v1, 0x7f08016d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->curTime:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->totalTime:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f08016c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;

    .line 80
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 81
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->tvFileName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->_filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v2, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$2;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->startOrientationChangeListener()V

    .line 98
    return-void

    .line 71
    .end local v0    # "in":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 102
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 103
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "DecodeActivity"

    const-string v2, "KEY_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->thread_run:Z

    .line 107
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 115
    :goto_1
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;-><init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Landroid/view/Surface;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->start()V

    .line 133
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 124
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 137
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->mPlayer:Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity$PlayerThread;->interrupt()V

    .line 140
    :cond_0
    return-void
.end method
