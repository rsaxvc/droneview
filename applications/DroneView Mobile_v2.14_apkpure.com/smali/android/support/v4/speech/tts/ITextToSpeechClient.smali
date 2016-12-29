.class interface abstract Landroid/support/v4/speech/tts/ITextToSpeechClient;
.super Ljava/lang/Object;
.source "ITextToSpeechClient.java"


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getEngineStatus()Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract queueAudio(Landroid/net/Uri;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
.end method

.method public abstract queueSilence(JLandroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
.end method

.method public abstract queueSpeak(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
.end method

.method public abstract queueSynthesizeToFile(Ljava/lang/String;Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Ljava/io/File;Landroid/support/v4/speech/tts/RequestConfig;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
.end method

.method public abstract setup(Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)V
.end method

.method public abstract stop()V
.end method
