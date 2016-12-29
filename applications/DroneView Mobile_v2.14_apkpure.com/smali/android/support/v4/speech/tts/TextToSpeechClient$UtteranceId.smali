.class public Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;
.super Ljava/lang/Object;
.source "TextToSpeechClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/speech/tts/TextToSpeechClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UtteranceId"
.end annotation


# static fields
.field private static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    sget-object v0, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->id:I

    .line 356
    return-void
.end method


# virtual methods
.method public final toUniqueString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/speech/tts/TextToSpeechClient$UtteranceId;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
