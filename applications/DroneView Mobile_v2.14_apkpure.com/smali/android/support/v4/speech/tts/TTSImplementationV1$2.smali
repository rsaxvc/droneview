.class Landroid/support/v4/speech/tts/TTSImplementationV1$2;
.super Ljava/lang/Object;
.source "TTSImplementationV1.java"

# interfaces
.implements Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/speech/tts/TTSImplementationV1;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;


# direct methods
.method constructor <init>(Landroid/support/v4/speech/tts/TTSImplementationV1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$2;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$2;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # invokes: Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    invoke-static {v1, p1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$4(Landroid/support/v4/speech/tts/TTSImplementationV1;Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    move-result-object v0

    .line 121
    .local v0, "requestInternal":Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .line 125
    iget-object v2, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .line 124
    invoke-virtual {v1, v2}, Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;->onSynthesisSuccess(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$2;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # invokes: Landroid/support/v4/speech/tts/TTSImplementationV1;->removeCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    invoke-static {v1, p1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$4(Landroid/support/v4/speech/tts/TTSImplementationV1;Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    move-result-object v0

    .line 109
    .local v0, "requestInternal":Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .line 113
    iget-object v2, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .line 114
    const/4 v3, -0x1

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;->onSynthesisFailure(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;I)V

    goto :goto_0
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$2;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # invokes: Landroid/support/v4/speech/tts/TTSImplementationV1;->getCallback(Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    invoke-static {v1, p1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$3(Landroid/support/v4/speech/tts/TTSImplementationV1;Ljava/lang/String;)Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;

    move-result-object v0

    .line 98
    .local v0, "requestInternal":Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .line 102
    iget-object v2, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .line 101
    invoke-virtual {v1, v2}, Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;->onSynthesisStart(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;)V

    goto :goto_0
.end method
