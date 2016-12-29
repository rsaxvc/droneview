.class public final Landroid/support/v4/speech/tts/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/RequestConfig$Builder;
    }
.end annotation


# instance fields
.field private final mAudioParams:Landroid/os/Bundle;

.field private final mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

.field private final mVoiceParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/speech/tts/VoiceInfo;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "voiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;
    .param p2, "voiceParams"    # Landroid/os/Bundle;
    .param p3, "audioParams"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/support/v4/speech/tts/RequestConfig;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    .line 190
    iput-object p2, p0, Landroid/support/v4/speech/tts/RequestConfig;->mVoiceParams:Landroid/os/Bundle;

    .line 191
    iput-object p3, p0, Landroid/support/v4/speech/tts/RequestConfig;->mAudioParams:Landroid/os/Bundle;

    .line 192
    return-void
.end method

.method static synthetic access$0(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/support/v4/speech/tts/VoiceInfo;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    return-object v0
.end method

.method static synthetic access$1(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mVoiceParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mAudioParams:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getAudioParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mAudioParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getVoice()Landroid/support/v4/speech/tts/VoiceInfo;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    return-object v0
.end method

.method public getVoiceParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig;->mVoiceParams:Landroid/os/Bundle;

    return-object v0
.end method
