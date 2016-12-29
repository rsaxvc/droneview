.class public Lnet/iwebrtc/audioprocess/sdk/AudioProcess;
.super Ljava/lang/Object;
.source "AudioProcess.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioProcess"


# instance fields
.field private nativeAudioProcess:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 10
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_process"

    aput-object v4, v0, v3

    .line 11
    .local v0, "LIBS":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 18
    return-void

    .line 13
    :cond_0
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "AudioProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t load lib: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->nativeAudioProcess:J

    .line 24
    return-void
.end method

.method private native create()J
.end method


# virtual methods
.method public native AnalyzeReverseStream10msData([BI)Z
.end method

.method public calculateBufferSize(III)I
    .locals 1
    .param p1, "sample_rate"    # I
    .param p2, "number_bytes_per_sample"    # I
    .param p3, "channels"    # I

    .prologue
    .line 31
    mul-int v0, p1, p3

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public native destroy()Z
.end method

.method public native init(III)Z
.end method

.method public native processStream10msData([BI[B)Z
.end method
