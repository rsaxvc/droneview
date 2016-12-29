.class public abstract Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TextToSpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSynthesisFailure(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;I)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p2, "errorCode"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onSynthesisFallback(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .prologue
    .line 241
    return-void
.end method

.method public onSynthesisProgress(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;II)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p2, "charIndex"    # I
    .param p3, "msFromStart"    # I

    .prologue
    .line 270
    return-void
.end method

.method public onSynthesisStart(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .prologue
    .line 209
    return-void
.end method

.method public onSynthesisStop(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .prologue
    .line 223
    return-void
.end method

.method public onSynthesisSuccess(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .prologue
    .line 216
    return-void
.end method
