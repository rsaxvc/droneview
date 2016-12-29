.class Landroid/support/v4/speech/tts/TTSImplementationV1;
.super Ljava/lang/Object;
.source "TTSImplementationV1.java"

# interfaces
.implements Landroid/support/v4/speech/tts/ITextToSpeechClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;,
        Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "android.support.v4.speech.tts"


# instance fields
.field private volatile mConnected:Z

.field private mConnectionCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

.field private mEngine:Ljava/lang/String;

.field private mEngineStatus:Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

.field private mLock:Ljava/lang/Object;

.field private mOldClient:Landroid/speech/tts/TextToSpeech;

.field mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mUtteranceIdToRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    .line 79
    new-instance v0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;

    invoke-direct {v0, p0}, Landroid/support/v4/speech/tts/TTSImplementationV1$1;-><init>(Landroid/support/v4/speech/tts/TTSImplementationV1;)V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1
    .param p1, "client"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    .line 79
    new-instance v0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;

    invoke-direct {v0, p0}, Landroid/support/v4/speech/tts/TTSImplementationV1$1;-><init>(Landroid/support/v4/speech/tts/TTSImplementationV1;)V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    .line 63
    return-void
.end method

.method static synthetic access$0(Landroid/support/v4/speech/tts/TTSImplementationV1;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    return-void
.end method

.method static synthetic access$1(Landroid/support/v4/speech/tts/TTSImplementationV1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->onInit()V

    return-void
.end method

.method static synthetic access$2(Landroid/support/v4/speech/tts/TTSImplementationV1;)Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnectionCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    return-object v0
.end method

.method static synthetic access$3(Landroid/support/v4/speech/tts/TTSImplementationV1;Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->getCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Landroid/support/v4/speech/tts/TTSImplementationV1;Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    move-result-object v0

    return-object v0
.end method

.method private addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I
    .locals 4
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p2, "callback"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 163
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 165
    :cond_0
    :try_start_0
    monitor-exit v1

    const/16 v0, 0xf

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v3, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    invoke-direct {v3, p1, p2}, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;-><init>(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V

    .line 167
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    monitor-exit v1

    const/16 v0, 0x10

    goto :goto_0

    .line 171
    :cond_2
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createParameters(Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)Ljava/util/HashMap;
    .locals 4
    .param p1, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/speech/tts/RequestConfig;",
            "Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    invoke-virtual {p2}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p1}, Landroid/support/v4/speech/tts/RequestConfig;->getVoice()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;->getVoiceType(Landroid/support/v4/speech/tts/VoiceInfo;)I

    move-result v1

    .line 336
    .local v1, "voiceType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 337
    const-string v2, "networkTts"

    .line 338
    const-string v3, "true"

    .line 337
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 339
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 340
    const-string v2, "embeddedTts"

    .line 341
    const-string v3, "true"

    .line 340
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private generateEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .locals 13

    .prologue
    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v1, "defaultParams":Landroid/os/Bundle;
    const-string v8, "speechPitch"

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 233
    const-string v8, "speechSpeed"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v7, "voicesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/speech/tts/VoiceInfo;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_0

    .line 299
    new-instance v8, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

    iget-object v9, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mEngine:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v8

    .line 237
    :cond_0
    aget-object v6, v9, v8

    .line 238
    .local v6, "locale":Ljava/util/Locale;
    const/4 v3, 0x2

    .line 239
    .local v3, "expectedStatus":I
    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 240
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 241
    const/4 v3, 0x0

    .line 248
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 249
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 250
    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    .line 252
    :cond_2
    iget-object v11, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v11, v6}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eq v11, v3, :cond_5

    .line 237
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 243
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 255
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_2

    .line 260
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :cond_5
    iget-object v11, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-static {v11, v6}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1;->getFeatures(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v4

    .line 262
    .local v4, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    invoke-direct {v0}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;-><init>()V

    .line 263
    .local v0, "builder":Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setLatency(I)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 264
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setQuality(I)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 265
    invoke-virtual {v0, v6}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setLocale(Ljava/util/Locale;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 266
    invoke-virtual {v0, v1}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setParamsWithDefaults(Landroid/os/Bundle;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 268
    const/4 v5, 0x1

    .line 269
    .local v5, "isUnknown":Z
    if-eqz v4, :cond_6

    const-string v11, "embeddedTts"

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 270
    const/4 v5, 0x0

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-embedded"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setName(Ljava/lang/String;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 272
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setRequiresNetworkConnection(Z)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 274
    new-instance v11, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;

    .line 275
    const/4 v12, 0x1

    .line 274
    invoke-direct {v11, v12}, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;-><init>(I)V

    .line 273
    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setPrivateData(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->build()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_6
    if-eqz v4, :cond_7

    const-string v11, "networkTts"

    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 280
    const/4 v5, 0x0

    .line 281
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-network"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setName(Ljava/lang/String;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 282
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setRequiresNetworkConnection(Z)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 284
    new-instance v11, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;

    .line 285
    const/4 v12, 0x2

    .line 284
    invoke-direct {v11, v12}, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;-><init>(I)V

    .line 283
    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setPrivateData(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->build()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_7
    if-eqz v5, :cond_3

    .line 290
    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setName(Ljava/lang/String;)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 291
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setRequiresNetworkConnection(Z)Landroid/support/v4/speech/tts/VoiceInfo$Builder;

    .line 293
    new-instance v11, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;

    .line 294
    const/4 v12, 0x3

    .line 293
    invoke-direct {v11, v12}, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;-><init>(I)V

    .line 292
    invoke-virtual {v0, v11}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->setPrivateData(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v0}, Landroid/support/v4/speech/tts/VoiceInfo$Builder;->build()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private getCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    .locals 2
    .param p1, "utteranceIdStr"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onInit()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->generateEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mEngineStatus:Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

    .line 93
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    .line 94
    new-instance v1, Landroid/support/v4/speech/tts/TTSImplementationV1$2;

    invoke-direct {v1, p0}, Landroid/support/v4/speech/tts/TTSImplementationV1$2;-><init>(Landroid/support/v4/speech/tts/TTSImplementationV1;)V

    .line 93
    invoke-static {v0, v1}, Landroid/support/v4/speech/tts/TextToSpeechICSMR1;->setUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V

    .line 128
    return-void
.end method

.method private removeCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    .locals 2
    .param p1, "utteranceIdStr"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    monitor-exit v1

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeCallbackAndErr(Ljava/lang/String;I)V
    .locals 4
    .param p1, "utteranceIdStr"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 205
    iget-object v2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mUtteranceIdToRequest:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    .line 207
    .local v0, "c":Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    iget-object v1, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    iget-object v3, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    invoke-virtual {v1, v3, p2}, Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;->onSynthesisFailure(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;I)V

    .line 205
    monitor-exit v2

    .line 209
    return-void

    .line 205
    .end local v0    # "c":Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "android.support.v4.speech.tts"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mEngine:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/support/v4/speech/tts/TextToSpeechICS;->construct(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "android.support.v4.speech.tts"

    const-string v1, "Already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    .line 313
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDefaultSpeechRate()F
    .locals 2

    .prologue
    .line 456
    const-string v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mEngineStatus:Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

    return-object v0
.end method

.method getSecureSettingInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queueAudio(Landroid/net/Uri;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 5
    .param p1, "audioUri"    # Landroid/net/Uri;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 432
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    if-nez v1, :cond_1

    .line 433
    :cond_0
    const-string v1, "android.support.v4.speech.tts"

    const-string v2, "Client is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v2

    .line 438
    if-eqz p4, :cond_3

    .line 439
    :try_start_0
    invoke-direct {p0, p2, p4}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    .line 443
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "earconName":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3}, Landroid/support/v4/speech/tts/RequestConfig;->getVoice()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/speech/tts/VoiceInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 445
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x1

    .line 447
    invoke-direct {p0, p3, p2}, Landroid/support/v4/speech/tts/TTSImplementationV1;->createParameters(Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)Ljava/util/HashMap;

    move-result-object v4

    .line 446
    invoke-virtual {v1, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {p2}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v1

    .line 449
    const/4 v3, -0x1

    .line 448
    invoke-direct {p0, v1, v3}, Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallbackAndErr(Ljava/lang/String;I)V

    .line 437
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "earconName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 441
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    invoke-direct {p0, p2, v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public queueSilence(JLandroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 4
    .param p1, "durationInMs"    # J
    .param p3, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const-string v0, "android.support.v4.speech.tts"

    const-string v1, "Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 416
    if-eqz p4, :cond_3

    .line 417
    :try_start_0
    invoke-direct {p0, p3, p4}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    .line 421
    :goto_1
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    .line 422
    const/4 v3, 0x0

    invoke-direct {p0, v3, p3}, Landroid/support/v4/speech/tts/TTSImplementationV1;->createParameters(Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)Ljava/util/HashMap;

    move-result-object v3

    .line 421
    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p3}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v0

    .line 424
    const/4 v2, -0x1

    .line 423
    invoke-direct {p0, v0, v2}, Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallbackAndErr(Ljava/lang/String;I)V

    .line 415
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 419
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    invoke-direct {p0, p3, v0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public queueSpeak(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 5
    .param p1, "utterance"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 349
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    if-nez v1, :cond_1

    .line 350
    :cond_0
    const-string v1, "android.support.v4.speech.tts"

    const-string v2, "Client is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v2

    .line 355
    if-eqz p4, :cond_3

    .line 356
    :try_start_0
    invoke-direct {p0, p2, p4}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    .line 360
    :goto_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3}, Landroid/support/v4/speech/tts/RequestConfig;->getVoice()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/speech/tts/VoiceInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 361
    invoke-virtual {p3}, Landroid/support/v4/speech/tts/RequestConfig;->getVoiceParams()Landroid/os/Bundle;

    move-result-object v1

    .line 362
    const-string v3, "speechSpeed"

    .line 361
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 365
    .local v0, "speed":F
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .end local v0    # "speed":F
    :goto_2
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 366
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3}, Landroid/support/v4/speech/tts/RequestConfig;->getVoiceParams()Landroid/os/Bundle;

    move-result-object v3

    .line 367
    const-string v4, "speechPitch"

    .line 366
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 368
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x1

    .line 369
    invoke-direct {p0, p3, p2}, Landroid/support/v4/speech/tts/TTSImplementationV1;->createParameters(Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)Ljava/util/HashMap;

    move-result-object v4

    .line 368
    invoke-virtual {v1, p1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p2}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v1

    .line 371
    const/4 v3, -0x1

    .line 370
    invoke-direct {p0, v1, v3}, Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallbackAndErr(Ljava/lang/String;I)V

    .line 354
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 358
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    invoke-direct {p0, p2, v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    goto :goto_1

    .line 365
    .restart local v0    # "speed":F
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->getDefaultSpeechRate()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2
.end method

.method public queueSynthesizeToFile(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Ljava/io/File;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 5
    .param p1, "utterance"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "outputFile"    # Ljava/io/File;
    .param p4, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p5, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 380
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnected:Z

    if-nez v1, :cond_1

    .line 381
    :cond_0
    const-string v1, "android.support.v4.speech.tts"

    const-string v2, "Client is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v2

    .line 386
    if-eqz p5, :cond_3

    .line 387
    :try_start_0
    invoke-direct {p0, p2, p5}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    .line 391
    :goto_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p4}, Landroid/support/v4/speech/tts/RequestConfig;->getVoice()Landroid/support/v4/speech/tts/VoiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/speech/tts/VoiceInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 392
    invoke-virtual {p4}, Landroid/support/v4/speech/tts/RequestConfig;->getVoiceParams()Landroid/os/Bundle;

    move-result-object v1

    .line 393
    const-string v3, "speechSpeed"

    .line 392
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 396
    .local v0, "speed":F
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .end local v0    # "speed":F
    :goto_2
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 397
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p4}, Landroid/support/v4/speech/tts/RequestConfig;->getVoiceParams()Landroid/os/Bundle;

    move-result-object v3

    .line 398
    const-string v4, "speechPitch"

    .line 397
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 399
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0, p4, p2}, Landroid/support/v4/speech/tts/TTSImplementationV1;->createParameters(Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)Ljava/util/HashMap;

    move-result-object v3

    .line 400
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v1, p1, v3, v4}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {p2}, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->toUniqueString()Ljava/lang/String;

    move-result-object v1

    .line 402
    const/4 v3, -0x1

    .line 401
    invoke-direct {p0, v1, v3}, Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallbackAndErr(Ljava/lang/String;I)V

    .line 385
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 389
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    invoke-direct {p0, p2, v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->addCallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)I

    goto :goto_1

    .line 396
    .restart local v0    # "speed":F
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->getDefaultSpeechRate()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2
.end method

.method public setup(Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Ljava/lang/String;
    .param p3, "fallbackToDefaultEngine"    # Z
    .param p4, "defaultRequestCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;
    .param p5, "connectionCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mEngine:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mDefaultRequestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .line 71
    iput-object p5, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnectionCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    .line 72
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "android.support.v4.speech.tts"

    const-string v1, "Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1;->mOldClient:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 325
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
