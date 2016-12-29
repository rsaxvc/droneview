.class Lcom/tutk/IOTC/Camera$AVChannel;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVChannel"
.end annotation


# instance fields
.field public AudioBPS:I

.field public AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

.field public IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

.field public LastFrame:Landroid/graphics/Bitmap;

.field public VideoBPS:I

.field public VideoFPS:I

.field public VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

.field private volatile mAVIndex:I

.field private mAudioCodec:I

.field private volatile mChannel:I

.field private mServiceType:J

.field private mViewAcc:Ljava/lang/String;

.field private mViewPwd:Ljava/lang/String;

.field public mbMute:Z

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;

.field public threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

.field public threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

.field public threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

.field public threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

.field public threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

.field public threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "channel"    # I
    .param p3, "view_acc"    # Ljava/lang/String;
    .param p4, "view_pwd"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2803
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2784
    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I

    .line 2785
    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAVIndex:I

    .line 2786
    iput-wide v2, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mServiceType:J

    .line 2862
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 2863
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 2864
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 2865
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    .line 2866
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    .line 2868
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    .line 2804
    iput p2, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I

    .line 2805
    iput-object p3, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mViewAcc:Ljava/lang/String;

    .line 2806
    iput-object p4, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mViewPwd:Ljava/lang/String;

    .line 2807
    iput-wide v2, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mServiceType:J

    .line 2809
    const/4 v0, 0x0

    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    .line 2811
    iput-object v1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->LastFrame:Landroid/graphics/Bitmap;

    .line 2813
    new-instance v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-direct {v0, p1, v1}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$IOCtrlQueue;)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    .line 2814
    new-instance v0, Lcom/tutk/IOTC/AVFrameQueue;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 2815
    new-instance v0, Lcom/tutk/IOTC/AVFrameQueue;

    invoke-direct {v0}, Lcom/tutk/IOTC/AVFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 2817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    .line 2818
    return-void
.end method

.method static synthetic access$0(Lcom/tutk/IOTC/Camera$AVChannel;)I
    .locals 1

    .prologue
    .line 2784
    iget v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I

    return v0
.end method


# virtual methods
.method public declared-synchronized SetMute(Z)V
    .locals 1
    .param p1, "bMute"    # Z

    .prologue
    .line 2845
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2846
    monitor-exit p0

    return-void

    .line 2845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAVIndex()I
    .locals 1

    .prologue
    .line 2825
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAVIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioCodec()I
    .locals 1

    .prologue
    .line 2837
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAudioCodec:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 2821
    iget v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I

    return v0
.end method

.method public declared-synchronized getServiceType()J
    .locals 2

    .prologue
    .line 2833
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mServiceType:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getViewAcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mViewAcc:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mViewPwd:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setAVIndex(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 2829
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAVIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2830
    monitor-exit p0

    return-void

    .line 2829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioCodec(I)V
    .locals 1
    .param p1, "codec"    # I

    .prologue
    .line 2841
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAudioCodec:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2842
    monitor-exit p0

    return-void

    .line 2841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServiceType(J)V
    .locals 4
    .param p1, "serviceType"    # J

    .prologue
    .line 2849
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mServiceType:J

    .line 2850
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x8d

    :goto_0
    iput v0, p0, Lcom/tutk/IOTC/Camera$AVChannel;->mAudioCodec:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    monitor-exit p0

    return-void

    .line 2851
    :cond_0
    const/16 v0, 0x8b

    goto :goto_0

    .line 2849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
