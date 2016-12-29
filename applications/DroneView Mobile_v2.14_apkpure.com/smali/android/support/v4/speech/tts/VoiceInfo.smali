.class public Landroid/support/v4/speech/tts/VoiceInfo;
.super Ljava/lang/Object;
.source "VoiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/speech/tts/VoiceInfo$Builder;
    }
.end annotation


# static fields
.field public static final FEATURE_MAY_AUTOINSTALL:Ljava/lang/String; = "mayAutoInstall"

.field public static final FEATURE_SPEAKER_GENDER:Ljava/lang/String; = "speakerGender"

.field public static final FEATURE_WORDS_PER_MINUTE:Ljava/lang/String; = "wordsPerMinute"

.field public static final LATENCY_HIGH:I = 0x190

.field public static final LATENCY_LOW:I = 0xc8

.field public static final LATENCY_NORMAL:I = 0x12c

.field public static final LATENCY_VERY_HIGH:I = 0x1f4

.field public static final LATENCY_VERY_LOW:I = 0x64

.field public static final QUALITY_HIGH:I = 0x190

.field public static final QUALITY_LOW:I = 0xc8

.field public static final QUALITY_NORMAL:I = 0x12c

.field public static final QUALITY_VERY_HIGH:I = 0x1f4

.field public static final QUALITY_VERY_LOW:I = 0x64


# instance fields
.field private final mAdditionalFeatures:Landroid/os/Bundle;

.field private final mLatency:I

.field private final mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private final mPrivateData:Ljava/lang/Object;

.field private final mQuality:I

.field private final mRequiresNetworkConnection:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;IIZLandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "quality"    # I
    .param p4, "latency"    # I
    .param p5, "requiresNetworkConnection"    # Z
    .param p6, "params"    # Landroid/os/Bundle;
    .param p7, "additionalFeatures"    # Landroid/os/Bundle;
    .param p8, "privateData"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLocale:Ljava/util/Locale;

    .line 110
    iput p3, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mQuality:I

    .line 111
    iput p4, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLatency:I

    .line 112
    iput-boolean p5, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mRequiresNetworkConnection:Z

    .line 113
    iput-object p6, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mParams:Landroid/os/Bundle;

    .line 114
    iput-object p7, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mAdditionalFeatures:Landroid/os/Bundle;

    .line 115
    iput-object p8, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mPrivateData:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method static synthetic access$0(Landroid/support/v4/speech/tts/VoiceInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Landroid/support/v4/speech/tts/VoiceInfo;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2(Landroid/support/v4/speech/tts/VoiceInfo;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mQuality:I

    return v0
.end method

.method static synthetic access$3(Landroid/support/v4/speech/tts/VoiceInfo;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLatency:I

    return v0
.end method

.method static synthetic access$4(Landroid/support/v4/speech/tts/VoiceInfo;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mRequiresNetworkConnection:Z

    return v0
.end method

.method static synthetic access$5(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$6(Landroid/support/v4/speech/tts/VoiceInfo;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mAdditionalFeatures:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public getAdditionalFeatures()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mAdditionalFeatures:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLatency:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsWithDefaults()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method getPrivateData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mPrivateData:Ljava/lang/Object;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mQuality:I

    return v0
.end method

.method public getRequiresNetworkConnection()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mRequiresNetworkConnection:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "VoiceInfo[Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    const-string v2, ", locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string v2, ", quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mQuality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    const-string v2, ", latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string v2, ", requiresNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mRequiresNetworkConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const-string v2, ", paramsWithDefaults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mParams:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string v2, ", additionalFeatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/speech/tts/VoiceInfo;->mAdditionalFeatures:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    return-object v1
.end method
