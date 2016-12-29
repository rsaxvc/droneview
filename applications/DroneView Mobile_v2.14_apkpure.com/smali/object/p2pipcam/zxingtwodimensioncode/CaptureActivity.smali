.class public Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private cancelScanButton:Landroid/widget/Button;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initBeepSound()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 185
    const v1, 0x7f050001

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 187
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    iget-object v2, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 142
    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;-><init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    .line 141
    iput-object v2, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 137
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .prologue
    .line 200
    iget-boolean v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 203
    :cond_0
    iget-boolean v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->vibrate:Z

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 205
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 207
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->drawViewfinder()V

    .line 178
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->inactivityTimer:Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;

    invoke-virtual {v3}, Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;->onActivity()V

    .line 115
    invoke-direct {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 116
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "resultString":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "Scan failed!"

    .line 120
    const/4 v4, 0x0

    .line 119
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->finish()V

    .line 130
    return-void

    .line 123
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v1, "resultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->init(Landroid/content/Context;)V

    .line 53
    const v0, 0x7f08031e

    invoke-virtual {p0, v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    .line 54
    const v0, 0x7f08031f

    invoke-virtual {p0, v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->cancelScanButton:Landroid/widget/Button;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->hasSurface:Z

    .line 56
    new-instance v0, Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;

    invoke-direct {v0, p0}, Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->inactivityTimer:Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->inactivityTimer:Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/InactivityTimer;->shutdown()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;->quitSynchronously()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->handler:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivityHandler;

    .line 98
    :cond_0
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->closeDriver()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    const v3, 0x7f08031d

    invoke-virtual {p0, v3}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 63
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 64
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->hasSurface:Z

    if-eqz v3, :cond_1

    .line 65
    invoke-direct {p0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 70
    :goto_0
    iput-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 71
    iput-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 73
    iput-boolean v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->playBeep:Z

    .line 74
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->playBeep:Z

    .line 78
    :cond_0
    invoke-direct {p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->initBeepSound()V

    .line 79
    iput-boolean v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->vibrate:Z

    .line 82
    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->cancelScanButton:Landroid/widget/Button;

    new-instance v4, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity$1;

    invoke-direct {v4, p0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity$1;-><init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 67
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 150
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 154
    iget-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->hasSurface:Z

    .line 156
    invoke-direct {p0, p1}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 159
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->hasSurface:Z

    .line 165
    return-void
.end method
