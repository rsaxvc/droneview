.class public Landroid/support/v4/speech/tts/TextToSpeechClientCompat;
.super Ljava/lang/Object;
.source "TextToSpeechClientCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextToSpeechClient(Landroid/content/Context;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)Landroid/support/v4/speech/tts/TextToSpeechClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultRequestCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;
    .param p2, "connectionCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v4/speech/tts/TextToSpeechClientCompat;->createTextToSpeechClient(Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)Landroid/support/v4/speech/tts/TextToSpeechClient;

    move-result-object v0

    return-object v0
.end method

.method public static createTextToSpeechClient(Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)Landroid/support/v4/speech/tts/TextToSpeechClient;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "engine"    # Ljava/lang/String;
    .param p2, "fallbackToDefaultEngine"    # Z
    .param p3, "defaultRequestCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;
    .param p4, "connectionCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    .prologue
    .line 59
    new-instance v1, Landroid/support/v4/speech/tts/TTSImplementationV1;

    invoke-direct {v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;-><init>()V

    .line 61
    .local v1, "implementation":Landroid/support/v4/speech/tts/ITextToSpeechClient;
    new-instance v0, Landroid/support/v4/speech/tts/TextToSpeechClient;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/speech/tts/TextToSpeechClient;-><init>(Landroid/support/v4/speech/tts/ITextToSpeechClient;Landroid/content/Context;Ljava/lang/String;ZLandroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;)V

    return-object v0
.end method
