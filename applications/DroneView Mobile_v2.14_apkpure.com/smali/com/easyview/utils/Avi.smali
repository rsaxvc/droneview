.class public Lcom/easyview/utils/Avi;
.super Ljava/lang/Object;
.source "Avi.java"


# static fields
.field public static final AUDIO_FRAME:I = 0x1

.field private static final MAX_BUF_SIZE:I = 0x2a3000

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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    const-string v1, "ev_avi"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 100
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 101
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(ev_avi,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/easyview/utils/Avi;->_handle:I

    .line 11
    const v0, 0x2a3000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/utils/Avi;->_buffer:[B

    .line 12
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/utils/Avi;->_frameInfo:[B

    .line 14
    iput v1, p0, Lcom/easyview/utils/Avi;->_frame_size:I

    .line 15
    iput v1, p0, Lcom/easyview/utils/Avi;->_duration:I

    .line 16
    iput v1, p0, Lcom/easyview/utils/Avi;->_height:I

    .line 17
    iput v1, p0, Lcom/easyview/utils/Avi;->_width:I

    .line 18
    iput v1, p0, Lcom/easyview/utils/Avi;->_bitrate:I

    .line 19
    iput v1, p0, Lcom/easyview/utils/Avi;->_framerate:I

    .line 5
    return-void
.end method

.method private static native close(I)I
.end method

.method private static native getFrame(I[BI[BI)I
.end method

.method private static native open(Ljava/lang/String;[BI)I
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/easyview/utils/Avi;->_handle:I

    invoke-static {v0}, Lcom/easyview/utils/Avi;->close(I)I

    .line 35
    return-void
.end method

.method public Duration()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/easyview/utils/Avi;->_duration:I

    return v0
.end method

.method public EOF()Z
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/easyview/utils/Avi;->_frame_size:I

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Frame()[B
    .locals 5

    .prologue
    .line 38
    iget v0, p0, Lcom/easyview/utils/Avi;->_handle:I

    iget-object v1, p0, Lcom/easyview/utils/Avi;->_buffer:[B

    const v2, 0x2a3000

    iget-object v3, p0, Lcom/easyview/utils/Avi;->_frameInfo:[B

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/easyview/utils/Avi;->getFrame(I[BI[BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_frame_size:I

    .line 39
    invoke-virtual {p0}, Lcom/easyview/utils/Avi;->GetFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41
    iget v0, p0, Lcom/easyview/utils/Avi;->_duration:I

    iget-object v1, p0, Lcom/easyview/utils/Avi;->_frameInfo:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/easyview/utils/Avi;->_duration:I

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_buffer:[B

    return-object v0
.end method

.method public GetFrameType()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_frameInfo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    return v0
.end method

.method public Open(Ljava/lang/String;)I
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lcom/easyview/utils/Avi;->open(Ljava/lang/String;[BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_handle:I

    .line 23
    invoke-virtual {p0}, Lcom/easyview/utils/Avi;->TotalDuration()I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_frame_size:I

    .line 24
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_height:I

    .line 25
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_width:I

    .line 26
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_bitrate:I

    .line 27
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/easyview/utils/Avi;->_framerate:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/utils/Avi;->_duration:I

    .line 30
    iget v0, p0, Lcom/easyview/utils/Avi;->_handle:I

    return v0
.end method

.method public TotalDuration()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/easyview/utils/Avi;->_fileInfo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v0

    return v0
.end method

.method public frameSize()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/easyview/utils/Avi;->_frame_size:I

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/easyview/utils/Avi;->_bitrate:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/easyview/utils/Avi;->_framerate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/easyview/utils/Avi;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/easyview/utils/Avi;->_width:I

    return v0
.end method

.method public isAudioFrame()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/easyview/utils/Avi;->GetFrameType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoFrame()Z
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/easyview/utils/Avi;->GetFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
