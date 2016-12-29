.class public final Landroid/support/v4/speech/tts/RequestConfig$Builder;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioParams:Landroid/os/Bundle;

.field private mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

.field private mVoiceParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/speech/tts/VoiceInfo;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "currentVoiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;
    .param p2, "voiceParams"    # Landroid/os/Bundle;
    .param p3, "audioParams"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    .line 39
    iput-object p2, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mVoiceParams:Landroid/os/Bundle;

    .line 40
    iput-object p3, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mAudioParams:Landroid/os/Bundle;

    .line 41
    return-void
.end method

.method public static newBuilder()Landroid/support/v4/speech/tts/RequestConfig$Builder;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/speech/tts/RequestConfig$Builder;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/speech/tts/RequestConfig$Builder;-><init>(Landroid/support/v4/speech/tts/VoiceInfo;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newBuilder(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/support/v4/speech/tts/RequestConfig$Builder;
    .locals 4
    .param p0, "prototype"    # Landroid/support/v4/speech/tts/RequestConfig;

    .prologue
    .line 57
    new-instance v2, Landroid/support/v4/speech/tts/RequestConfig$Builder;

    # getter for: Landroid/support/v4/speech/tts/RequestConfig;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;
    invoke-static {p0}, Landroid/support/v4/speech/tts/RequestConfig;->access$0(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v3

    .line 58
    # getter for: Landroid/support/v4/speech/tts/RequestConfig;->mVoiceParams:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/support/v4/speech/tts/RequestConfig;->access$1(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 59
    # getter for: Landroid/support/v4/speech/tts/RequestConfig;->mAudioParams:Landroid/os/Bundle;
    invoke-static {p0}, Landroid/support/v4/speech/tts/RequestConfig;->access$2(Landroid/support/v4/speech/tts/RequestConfig;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 57
    invoke-direct {v2, v3, v0, v1}, Landroid/support/v4/speech/tts/RequestConfig$Builder;-><init>(Landroid/support/v4/speech/tts/VoiceInfo;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v2
.end method

.method private setParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 160
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 162
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, [B

    if-eqz v0, :cond_1

    .line 163
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 164
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 165
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 166
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 167
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 168
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 169
    check-cast p3, Ljava/lang/Float;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 170
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 171
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 173
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal type of object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/support/v4/speech/tts/RequestConfig;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Landroid/support/v4/speech/tts/RequestConfig;

    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    iget-object v2, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mVoiceParams:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mAudioParams:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/speech/tts/RequestConfig;-><init>(Landroid/support/v4/speech/tts/VoiceInfo;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 184
    .local v0, "config":Landroid/support/v4/speech/tts/RequestConfig;
    return-object v0
.end method

.method public setAudioParam(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/speech/tts/RequestConfig$Builder;
    .locals 1
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mAudioParams:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-object p0
.end method

.method public setAudioParamPan(F)V
    .locals 2
    .param p1, "pan"    # F

    .prologue
    .line 156
    const-string v0, "pan"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setAudioParam(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/speech/tts/RequestConfig$Builder;

    .line 157
    return-void
.end method

.method public setAudioParamStream(I)V
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 138
    const-string v0, "streamType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setAudioParam(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/speech/tts/RequestConfig$Builder;

    .line 139
    return-void
.end method

.method public setAudioParamVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 147
    const-string v0, "volume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setAudioParam(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/speech/tts/RequestConfig$Builder;

    .line 148
    return-void
.end method

.method public setVoice(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/support/v4/speech/tts/RequestConfig$Builder;
    .locals 1
    .param p1, "voice"    # Landroid/support/v4/speech/tts/VoiceInfo;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    .line 65
    invoke-virtual {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->getParamsWithDefaults()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mVoiceParams:Landroid/os/Bundle;

    .line 66
    return-object p0
.end method

.method public setVoiceParam(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/speech/tts/RequestConfig$Builder;
    .locals 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 90
    const-string v2, "Couldn\'t set voice parameter, no voice is set"

    .line 89
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    invoke-virtual {v1}, Landroid/support/v4/speech/tts/VoiceInfo;->getParamsWithDefaults()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "defaultValue":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is not available in set voice with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mCurrentVoiceInfo:Landroid/support/v4/speech/tts/VoiceInfo;

    invoke-virtual {v3}, Landroid/support/v4/speech/tts/VoiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    instance-of v1, p2, Landroid/support/v4/speech/tts/VoiceInfo;

    if-eqz v1, :cond_2

    .line 101
    check-cast p2, Landroid/support/v4/speech/tts/VoiceInfo;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/speech/tts/VoiceInfo;->getName()Ljava/lang/String;

    move-result-object p2

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is of different type. Value passed has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but should have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_3
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfig$Builder;->mVoiceParams:Landroid/os/Bundle;

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method
