.class public Landroid/support/v4/speech/tts/TextToSpeechClient;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;,
        Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;,
        Landroid/support/v4/speech/tts/TextToSpeechClient$Params;,
        Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;,
        Landroid/support/v4/speech/tts/TextToSpeechClient$Status;,
        Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextToSpeechClient"


# instance fields
.field private final mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;


# direct methods
.method constructor <init>(Landroid/support/v4/speech/tts/ITextToSpeechClient;Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)V
    .locals 6
    .param p1, "implementation"    # Landroid/support/v4/speech/tts/ITextToSpeechClient;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "fallbackToDefaultEngine"    # Z
    .param p5, "defaultRequestCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;
    .param p6, "connectionCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    .line 376
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->setup(Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)V

    .line 378
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->connect()V

    .line 393
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->disconnect()V

    .line 411
    return-void
.end method

.method public getEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->getEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public queueAudio(Landroid/net/Uri;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 2
    .param p1, "audioUrl"    # Landroid/net/Uri;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audioUrl can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    if-nez p2, :cond_1

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utteranceId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    if-nez p3, :cond_2

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_2
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->queueAudio(Landroid/net/Uri;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_3
    const-string v0, "TextToSpeechClient"

    const-string v1, "TTS Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queueSilence(JLandroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 2
    .param p1, "durationInMs"    # J
    .param p3, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 521
    if-nez p3, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utteranceId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->queueSilence(JLandroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v0, "TextToSpeechClient"

    const-string v1, "TTS Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queueSpeak(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 2
    .param p1, "utterance"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p4, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utterance can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utteranceId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    if-nez p3, :cond_2

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_2
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->queueSpeak(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_3
    const-string v0, "TextToSpeechClient"

    const-string v1, "TTS Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queueSynthesizeToFile(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Ljava/io/File;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 6
    .param p1, "utterance"    # Ljava/lang/String;
    .param p2, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p3, "outputFile"    # Ljava/io/File;
    .param p4, "config"    # Landroid/support/v4/speech/tts/RequestConfig;
    .param p5, "callbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utterance can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    if-nez p2, :cond_1

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "utteranceId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    if-nez p3, :cond_2

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputFile can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_2
    if-nez p4, :cond_3

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_3
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->queueSynthesizeToFile(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Ljava/io/File;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_4
    const-string v0, "TextToSpeechClient"

    const-string v1, "TTS Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient;->mImplementation:Landroid/support/v4/speech/tts/ITextToSpeechClient;

    invoke-interface {v0}, Landroid/support/v4/speech/tts/ITextToSpeechClient;->stop()V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string v0, "TextToSpeechClient"

    const-string v1, "TTS Client is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
