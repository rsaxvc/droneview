.class Landroid/support/v4/speech/tts/TTSImplementationV1$1;
.super Ljava/lang/Object;
.source "TTSImplementationV1.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TTSImplementationV1;
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
    iput-object p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$0(Landroid/support/v4/speech/tts/TTSImplementationV1;Z)V

    .line 82
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # invokes: Landroid/support/v4/speech/tts/TTSImplementationV1;->onInit()V
    invoke-static {v0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$1(Landroid/support/v4/speech/tts/TTSImplementationV1;)V

    .line 84
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # getter for: Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnectionCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;
    invoke-static {v0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$2(Landroid/support/v4/speech/tts/TTSImplementationV1;)Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;->onConnectionSuccess()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$1;->this$0:Landroid/support/v4/speech/tts/TTSImplementationV1;

    # getter for: Landroid/support/v4/speech/tts/TTSImplementationV1;->mConnectionCallbacks:Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;
    invoke-static {v0}, Landroid/support/v4/speech/tts/TTSImplementationV1;->access$2(Landroid/support/v4/speech/tts/TTSImplementationV1;)Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;->onConnectionFailure()V

    goto :goto_0
.end method
