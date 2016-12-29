.class Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;
.super Ljava/lang/Object;
.source "DoorBellMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DoorBellMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 51
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 52
    .local v2, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 53
    .local v3, "max":I
    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 54
    .local v0, "current":I
    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float v1, v5, v6

    .line 57
    .local v1, "fVolume":F
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->playMode:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$0(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)I

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 58
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 59
    const v7, 0x7f050003

    .line 58
    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$1(Lobject/p2pwificam/clientActivity/DoorBellMusicService;Landroid/media/MediaPlayer;)V

    .line 63
    :goto_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$2(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$2(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 65
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$2(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/media/MediaPlayer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 66
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$2(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 70
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->getApplicationContext()Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v5, v7}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-static {v6, v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$3(Lobject/p2pwificam/clientActivity/DoorBellMusicService;Landroid/os/Vibrator;)V

    .line 71
    const/4 v5, 0x4

    new-array v4, v5, [J

    fill-array-data v4, :array_0

    .line 72
    .local v4, "pattern":[J
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    # getter for: Lobject/p2pwificam/clientActivity/DoorBellMusicService;->vibrator:Landroid/os/Vibrator;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$4(Lobject/p2pwificam/clientActivity/DoorBellMusicService;)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 74
    .end local v4    # "pattern":[J
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DoorBellMusicService$1;->this$0:Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-virtual {v6}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050005

    invoke-static {v6, v7}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/DoorBellMusicService;->access$1(Lobject/p2pwificam/clientActivity/DoorBellMusicService;Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 71
    nop

    :array_0
    .array-data 8
        0x64
        0x190
        0x64
        0x190
    .end array-data
.end method
