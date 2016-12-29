.class public final Landroid/support/v4/speech/tts/TextToSpeechClient$Status;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TextToSpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final ERROR_DOWNLOADING_ADDITIONAL_DATA:I = 0x11

.field public static final ERROR_INVALID_REQUEST:I = 0xf

.field public static final ERROR_NETWORK:I = 0xd

.field public static final ERROR_NETWORK_TIMEOUT:I = 0xe

.field public static final ERROR_NON_UNIQUE_UTTERANCE_ID:I = 0x10

.field public static final ERROR_OUTPUT:I = 0xc

.field public static final ERROR_SERVICE:I = 0xb

.field public static final ERROR_SYNTHESIS:I = 0xa

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final STOPPED:I = 0x64

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
