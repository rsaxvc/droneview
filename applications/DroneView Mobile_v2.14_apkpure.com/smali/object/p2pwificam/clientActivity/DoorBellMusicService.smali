.class public Lobject/p2pwificam/clientActivity/DoorBellMusicService;
.super Landroid/app/Service;
.source "DoorBellMusicService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DoorBellMusicService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private playMode:I

.field private runnablePlay:Ljava/lang/Runnable;

.field private uri:Landroid/net/Uri;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->uri:Landroid/net/Uri;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;-><init>(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->runnablePlay:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->playMode:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DoorBellMusicService;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DoorBellMusicService;Landroid/os/Vibrator;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "DoorBellMusicService"

    const-string v1, "onCreate()  ================="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->uri:Landroid/net/Uri;

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "DoorBellMusicService"

    const-string v1, "onDestroy()  ================="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 85
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 89
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 40
    const-string v0, "DoorBellMusicService"

    const-string v1, "onStart()  ================="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "playMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->playMode:I

    .line 43
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->runnablePlay:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    goto :goto_0
.end method
