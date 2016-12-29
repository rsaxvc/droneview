.class public Lobject/p2pipcam/nativecaller/Avi;
.super Ljava/lang/Object;
.source "Avi.java"


# static fields
.field public static final AUDIO_FRAME:I = 0x1

.field private static final MAX_BUF_SIZE:I = 0x5eec00

.field public static final VIDEO_FRAME:I = 0x2


# instance fields
.field private _bitrate:I

.field private _buffer:[B

.field private _duration:I

.field private _fileInfo:[B

.field private _frameInfo:[B

.field private _frame_size:I

.field private _framerate:I

.field private _handle:I

.field private _height:I

.field private _width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    .line 12
    const v0, 0x5eec00

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_buffer:[B

    .line 13
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_frameInfo:[B

    .line 15
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_frame_size:I

    .line 16
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_duration:I

    .line 17
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_height:I

    .line 18
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_width:I

    .line 19
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_bitrate:I

    .line 20
    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_framerate:I

    .line 6
    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->closeAvi(I)I

    .line 36
    return-void
.end method

.method public Duration()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_duration:I

    return v0
.end method

.method public EOF()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_frame_size:I

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Frame()[B
    .locals 6

    .prologue
    .line 39
    iget v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    iget-object v2, p0, Lobject/p2pipcam/nativecaller/Avi;->_buffer:[B

    const v3, 0x5eec00

    iget-object v4, p0, Lobject/p2pipcam/nativecaller/Avi;->_frameInfo:[B

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->readFrame(I[BI[BI)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_frame_size:I

    .line 40
    invoke-virtual {p0}, Lobject/p2pipcam/nativecaller/Avi;->GetFrameType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_frameInfo:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    .line 43
    .local v0, "duration":I
    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_duration:I

    .line 45
    .end local v0    # "duration":I
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/nativecaller/Avi;->_buffer:[B

    return-object v1
.end method

.method public GetFrameType()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_frameInfo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    return v0
.end method

.method public Open(Ljava/lang/String;)I
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->openAvi(Ljava/lang/String;[BI)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    .line 24
    invoke-virtual {p0}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_frame_size:I

    .line 25
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_height:I

    .line 26
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_width:I

    .line 27
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_bitrate:I

    .line 28
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_framerate:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_duration:I

    .line 31
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    return v0
.end method

.method public SeekNext(I)V
    .locals 1
    .param p1, "pts"    # I

    .prologue
    .line 50
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_handle:I

    invoke-static {v0, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->seekNextKeyFrame(II)I

    .line 51
    return-void
.end method

.method public TotalDuration()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_fileInfo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    return v0
.end method

.method public frameSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_frame_size:I

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_bitrate:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_framerate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lobject/p2pipcam/nativecaller/Avi;->_width:I

    return v0
.end method

.method public isAudioFrame()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0}, Lobject/p2pipcam/nativecaller/Avi;->GetFrameType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoFrame()Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lobject/p2pipcam/nativecaller/Avi;->GetFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
