.class public Lobject/p2pwificam/clientActivity/AudioTalkActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AudioTalkActivity.java"

# interfaces
.implements Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff


# instance fields
.field private AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

.field private final LOG_TAG:Ljava/lang/String;

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

.field private bAudioRecordStart:Z

.field private bAudioStart:Z

.field private customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

.field private imageCamera:Landroid/widget/ImageView;

.field private nP2PMode:I

.field private playType:I

.field private preference:Landroid/content/SharedPreferences;

.field private stopAudio:Landroid/widget/ImageButton;

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private streamType:I

.field private textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 33
    const-string v0, "AudioTalkActivity"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->streamType:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->nP2PMode:I

    .line 38
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 39
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 40
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->bAudioStart:Z

    .line 41
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 42
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->bAudioRecordStart:Z

    .line 44
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    .line 47
    iput v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->playType:I

    .line 48
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->textTitle:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->imageCamera:Landroid/widget/ImageView;

    .line 30
    return-void
.end method

.method private StartAudio()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 137
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStart()Z

    .line 138
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartAudio(Ljava/lang/String;)I

    .line 135
    monitor-exit p0

    .line 140
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private StartTalk()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StartRecord()V

    .line 153
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartTalk(Ljava/lang/String;)I

    .line 155
    :cond_0
    return-void
.end method

.method private StopAudio()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStop()V

    .line 145
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 146
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopAudio(Ljava/lang/String;)I

    .line 143
    monitor-exit p0

    .line 148
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private StopTalk()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StopRecord()V

    .line 164
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopTalk(Ljava/lang/String;)I

    .line 166
    :cond_0
    return-void
.end method

.method private findview()V
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->stopAudio:Landroid/widget/ImageButton;

    .line 132
    return-void
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 117
    const-string v0, "playactivitytest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    .line 121
    const/4 v1, 0x2

    .line 120
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 122
    return-void
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "stream_type"

    .line 101
    const/4 v2, 0x3

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->streamType:I

    .line 102
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strName:Ljava/lang/String;

    .line 103
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    .line 104
    const-string v1, "camera_type"

    .line 105
    const/4 v2, 0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->nP2PMode:I

    .line 107
    const-string v1, "play_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->playType:I

    .line 108
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 109
    const-string v1, "AudioTalkActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "strDIDtag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strDID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nP2PMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->nP2PMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method private releaseTalk()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->releaseRecord()V

    .line 159
    return-void
.end method


# virtual methods
.method public AudioRecordData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 249
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->bAudioRecordStart:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->strDID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPTalkAudioData(Ljava/lang/String;[BI)I

    .line 253
    :cond_0
    return-void
.end method

.method public callBaceVideoData([BIIII)V
    .locals 0
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 210
    return-void
.end method

.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 224
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v2}, Lcom/easyview/talkutils/AudioPlayer;->isAudioPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v1, Lcom/easyview/talkutils/CustomBufferHead;

    invoke-direct {v1}, Lcom/easyview/talkutils/CustomBufferHead;-><init>()V

    .line 228
    .local v1, "head":Lcom/easyview/talkutils/CustomBufferHead;
    new-instance v0, Lcom/easyview/talkutils/CustomBufferData;

    invoke-direct {v0}, Lcom/easyview/talkutils/CustomBufferData;-><init>()V

    .line 229
    .local v0, "data":Lcom/easyview/talkutils/CustomBufferData;
    iput p2, v1, Lcom/easyview/talkutils/CustomBufferHead;->length:I

    .line 230
    const v2, 0xff00ff

    iput v2, v1, Lcom/easyview/talkutils/CustomBufferHead;->startcode:I

    .line 231
    iput-object v1, v0, Lcom/easyview/talkutils/CustomBufferData;->head:Lcom/easyview/talkutils/CustomBufferHead;

    .line 232
    iput-object p1, v0, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    .line 233
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v2, v0}, Lcom/easyview/talkutils/CustomBuffer;->addData(Lcom/easyview/talkutils/CustomBufferData;)Z

    goto :goto_0
.end method

.method public callBackCameraParamNotify(Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "resolution"    # I
    .param p3, "brightness"    # I
    .param p4, "contrast"    # I
    .param p5, "hue"    # I
    .param p6, "saturation"    # I
    .param p7, "flip"    # I

    .prologue
    .line 202
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 0
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 243
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x1

    .line 55
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v3, "isFirst"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->preference:Landroid/content/SharedPreferences;

    .line 58
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->preference:Landroid/content/SharedPreferences;

    const-string v4, "activity"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 59
    .local v2, "isfirst":Ljava/lang/Boolean;
    const-string v3, "AudioTalkActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio    isfirst: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 61
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "activity"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getDataFromOther()V

    .line 64
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 66
    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->requestWindowFeature(I)Z

    .line 67
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->findview()V

    .line 70
    const v3, 0x7f080073

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->textTitle:Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->textTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v4}, Lcom/easyview/basecamera/BaseCamera;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v3, 0x7f080074

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->imageCamera:Landroid/widget/ImageView;

    .line 74
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v3}, Lcom/easyview/basecamera/BaseCamera;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 77
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->imageCamera:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_0
    new-instance v3, Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v3}, Lcom/easyview/talkutils/CustomBuffer;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 82
    new-instance v3, Lcom/easyview/talkutils/AudioPlayer;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v3, p0, v4}, Lcom/easyview/talkutils/AudioPlayer;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomBuffer;)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 83
    new-instance v3, Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-direct {v3, p0, p0}, Lcom/easyview/talkutils/CustomAudioRecorder;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 84
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 85
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getCameraParams()V

    .line 87
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->bAudioRecordStart:Z

    .line 88
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->bAudioStart:Z

    .line 89
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->StartTalk()V

    .line 90
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->StartAudio()V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->StopAudio()V

    .line 181
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->StopTalk()V

    .line 182
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->releaseTalk()V

    .line 186
    const-string v1, "isFirst"

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->preference:Landroid/content/SharedPreferences;

    .line 187
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "activity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method public stopAudio(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    const-string v0, "audio_talk"

    const-string v1, "1111111111111111111111111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AudioTalkActivity;->finish()V

    .line 174
    return-void
.end method
