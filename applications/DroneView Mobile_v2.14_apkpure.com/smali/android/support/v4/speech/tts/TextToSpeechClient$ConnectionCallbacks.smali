.class public interface abstract Landroid/support/v4/speech/tts/TextToSpeechClient$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TextToSpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallbacks"
.end annotation


# virtual methods
.method public abstract onConnectionFailure()V
.end method

.method public abstract onConnectionSuccess()V
.end method

.method public abstract onEngineStatusChange(Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;)V
.end method

.method public abstract onServiceDisconnected()V
.end method
