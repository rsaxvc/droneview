.class public Lobject/p2pwificam/clientActivity/EmergencyAlarm;
.super Landroid/app/Service;
.source "EmergencyAlarm.java"


# instance fields
.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 45
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 49
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    .line 32
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 34
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EmergencyAlarm;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 37
    return-void
.end method
