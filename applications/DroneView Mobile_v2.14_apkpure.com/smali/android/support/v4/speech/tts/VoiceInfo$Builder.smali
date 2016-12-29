.class final Landroid/support/v4/speech/tts/VoiceInfo$Builder;
.super Ljava/lang/Object;
.source "VoiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/VoiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private additionalFeatures:Landroid/os/Bundle;

.field private latency:I

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field private params:Landroid/os/Bundle;

.field private privateData:Ljava/lang/Object;

.field private quality:I

.field private requiresNetworkConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->quality:I

    .line 123
    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->latency:I

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/speech/tts/VoiceInfo;)V
    .locals 1
    .param p1, "voiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;

    .prologue
    const/16 v0, 0x12c

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->quality:I

    .line 123
    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->latency:I

    .line 137
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mName:Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$0(Landroid/support/v4/speech/tts/VoiceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->name:Ljava/lang/String;

    .line 138
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mLocale:Ljava/util/Locale;
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$1(Landroid/support/v4/speech/tts/VoiceInfo;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->locale:Ljava/util/Locale;

    .line 139
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mQuality:I
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$2(Landroid/support/v4/speech/tts/VoiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->quality:I

    .line 140
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mLatency:I
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$3(Landroid/support/v4/speech/tts/VoiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->latency:I

    .line 141
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mRequiresNetworkConnection:Z
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$4(Landroid/support/v4/speech/tts/VoiceInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->requiresNetworkConnection:Z

    .line 142
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mParams:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$5(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->params:Landroid/os/Bundle;

    .line 143
    # getter for: Landroid/support/v4/speech/tts/VoiceInfo;->mAdditionalFeatures:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->access$6(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->additionalFeatures:Landroid/os/Bundle;

    .line 144
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/speech/tts/VoiceInfo;
    .locals 9

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Locale can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    new-instance v0, Landroid/support/v4/speech/tts/VoiceInfo;

    iget-object v1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->locale:Ljava/util/Locale;

    iget v3, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->quality:I

    iget v4, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->latency:I

    .line 229
    iget-boolean v5, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->requiresNetworkConnection:Z

    .line 230
    iget-object v6, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->params:Landroid/os/Bundle;

    if-nez v6, :cond_3

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 232
    :goto_0
    iget-object v7, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->additionalFeatures:Landroid/os/Bundle;

    if-nez v7, :cond_4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 233
    :goto_1
    iget-object v8, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->privateData:Ljava/lang/Object;

    .line 228
    invoke-direct/range {v0 .. v8}, Landroid/support/v4/speech/tts/VoiceInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Object;)V

    return-object v0

    .line 231
    :cond_3
    iget-object v6, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->params:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_0

    .line 233
    :cond_4
    iget-object v7, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->additionalFeatures:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    goto :goto_1
.end method

.method public setAdditionalFeatures(Landroid/os/Bundle;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "additionalFeatures"    # Landroid/os/Bundle;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->additionalFeatures:Landroid/os/Bundle;

    .line 183
    return-object p0
.end method

.method public setLatency(I)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "latency"    # I

    .prologue
    .line 198
    iput p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->latency:I

    .line 199
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->locale:Ljava/util/Locale;

    .line 164
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->name:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setParamsWithDefaults(Landroid/os/Bundle;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 173
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->params:Landroid/os/Bundle;

    .line 174
    return-object p0
.end method

.method public setPrivateData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "privateData"    # Ljava/lang/Object;

    .prologue
    .line 214
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->privateData:Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public setQuality(I)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 190
    iput p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->quality:I

    .line 191
    return-object p0
.end method

.method public setRequiresNetworkConnection(Z)Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    .locals 0
    .param p1, "requiresNetworkConnection"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->requiresNetworkConnection:Z

    .line 207
    return-object p0
.end method
