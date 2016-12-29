.class public final Landroid/support/v4/speech/tts/RequestConfigHelper$ExactLocaleMatcher;
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
    name = "ExactLocaleMatcher"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$ExactLocaleMatcher;->mLocale:Ljava/util/Locale;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$ExactLocaleMatcher;->mLocale:Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public scoreVoice(Landroid/support/v4/speech/tts/VoiceInfo;)I
    .locals 2
    .param p1, "voiceInfo"    # Landroid/support/v4/speech/tts/VoiceInfo;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/speech/tts/RequestConfigHelper$ExactLocaleMatcher;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/support/v4/speech/tts/VoiceInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
