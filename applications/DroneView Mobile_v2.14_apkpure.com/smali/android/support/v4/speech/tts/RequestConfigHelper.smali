.class public final Landroid/support/v4/speech/tts/RequestConfigHelper;
.super Ljava/lang/Object;
.source "RequestConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/RequestConfigHelper$ExactLocaleMatcher;,
        Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;,
        Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHighestQualityVoice(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;Z)Landroid/support/v4/speech/tts/VoiceInfo;
    .locals 7
    .param p0, "engineStatus"    # Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .param p1, "voiceScorer"    # Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;
    .param p2, "hasToBeEmbedded"    # Z

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "bestVoice":Landroid/support/v4/speech/tts/VoiceInfo;
    const/4 v0, 0x1

    .line 121
    .local v0, "bestScoreMatch":I
    const/4 v2, 0x0

    .line 123
    .local v2, "bestVoiceQuality":I
    invoke-virtual {p0}, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;->getVoices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    return-object v1

    .line 123
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/speech/tts/VoiceInfo;

    .line 124
    .local v4, "voice":Landroid/support/v4/speech/tts/VoiceInfo;
    invoke-interface {p1, v4}, Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;->scoreVoice(Landroid/support/v4/speech/tts/VoiceInfo;)I

    move-result v3

    .line 125
    .local v3, "score":I
    if-lez v3, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/speech/tts/VoiceInfo;->getRequiresNetworkConnection()Z

    move-result v6

    if-nez v6, :cond_0

    .line 126
    :cond_2
    invoke-virtual {v4}, Landroid/support/v4/speech/tts/VoiceInfo;->getQuality()I

    move-result v6

    if-lt v6, v2, :cond_0

    .line 130
    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {v4}, Landroid/support/v4/speech/tts/VoiceInfo;->getQuality()I

    move-result v6

    if-gt v6, v2, :cond_3

    .line 132
    if-le v3, v0, :cond_0

    .line 133
    :cond_3
    move-object v1, v4

    .line 134
    move v0, v3

    .line 135
    invoke-virtual {v4}, Landroid/support/v4/speech/tts/VoiceInfo;->getQuality()I

    move-result v2

    goto :goto_0
.end method

.method public static highestQuality(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;Z)Landroid/support/v4/speech/tts/RequestConfig;
    .locals 2
    .param p0, "engineStatus"    # Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .param p1, "hasToBeEmbedded"    # Z

    .prologue
    .line 183
    .line 184
    new-instance v0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;-><init>(Ljava/util/Locale;)V

    .line 183
    invoke-static {p0, p1, v0}, Landroid/support/v4/speech/tts/RequestConfigHelper;->highestQuality(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;ZLandroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;)Landroid/support/v4/speech/tts/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public static highestQuality(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;ZLandroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;)Landroid/support/v4/speech/tts/RequestConfig;
    .locals 2
    .param p0, "engineStatus"    # Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .param p1, "hasToBeEmbedded"    # Z
    .param p2, "voiceScorer"    # Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;

    .prologue
    .line 161
    invoke-static {p0, p2, p1}, Landroid/support/v4/speech/tts/RequestConfigHelper;->getHighestQualityVoice(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;Z)Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v0

    .line 162
    .local v0, "voice":Landroid/support/v4/speech/tts/VoiceInfo;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->newBuilder()Landroid/support/v4/speech/tts/RequestConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->setVoice(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/support/v4/speech/tts/RequestConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/speech/tts/RequestConfig$Builder;->build()Landroid/support/v4/speech/tts/RequestConfig;

    move-result-object v1

    goto :goto_0
.end method
