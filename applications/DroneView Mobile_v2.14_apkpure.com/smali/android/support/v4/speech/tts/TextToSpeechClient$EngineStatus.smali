.class public final Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TextToSpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EngineStatus"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mVoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/speech/tts/VoiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/speech/tts/VoiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/speech/tts/VoiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;->mVoices:Ljava/util/List;

    .line 325
    iput-object p1, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;->mPackageName:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public getEnginePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/speech/tts/VoiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$EngineStatus;->mVoices:Ljava/util/List;

    return-object v0
.end method
