.class public final Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;
.super Ljava/lang/Object;
.source "RequestConfigHelper.java"

# interfaces
.implements Landroid/support/v4/speech/tts/RequestConfigHelper$VoiceScorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/RequestConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageMatcher"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;->mLocale:Ljava/util/Locale;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;->mLocale:Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public scoreVoice(Landroid/support/v4/speech/tts/VoiceInfo;)I
    .locals 3
    .param p1, "voiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 88
    .local v0, "voiceLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x3

    .line 97
    :goto_0
    return v1

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$LanguageMatcher;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
