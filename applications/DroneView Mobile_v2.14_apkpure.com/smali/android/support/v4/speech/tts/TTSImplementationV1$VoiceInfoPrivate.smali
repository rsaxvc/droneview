.class Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;
.super Ljava/lang/Object;
.source "TTSImplementationV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TTSImplementationV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceInfoPrivate"
.end annotation


# static fields
.field static final VOICE_TYPE_EMBEDDED:I = 0x1

.field static final VOICE_TYPE_NETWORK:I = 0x2

.field static final VOICE_TYPE_UNKNOWN:I = 0x3


# instance fields
.field mVoiceType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "voiceType"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;->mVoiceType:I

    .line 222
    return-void
.end method

.method static getVoiceType(Landroid/support/v4/speech/tts/VoiceInfo;)I
    .locals 1
    .param p0, "voiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/support/v4/speech/tts/VoiceInfo;->getPrivateData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;

    iget v0, v0, Landroid/support/v4/speech/tts/TTSImplementationV1$VoiceInfoPrivate;->mVoiceType:I

    return v0
.end method
