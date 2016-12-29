.class Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;
.super Ljava/lang/Object;
.source "TTSImplementationV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TTSImplementationV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInternal"
.end annotation


# instance fields
.field requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

.field utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;


# direct methods
.method public constructor <init>(Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;)V
    .locals 0
    .param p1, "utteranceId"    # Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
    .param p2, "requestCallbacks"    # Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->utteranceId:Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;

    .line 147
    iput-object p2, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$RequestInternal;->requestCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$RequestCallbacks;

    .line 148
    return-void
.end method
