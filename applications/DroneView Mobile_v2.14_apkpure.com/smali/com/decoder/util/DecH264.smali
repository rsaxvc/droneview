.class public Lcom/decoder/util/DecH264;
.super Ljava/lang/Object;
.source "DecH264.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const-string v0, "H264Android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native DecoderNal(I[BI[I[B)I
.end method

.method public native InitDecoder()I
.end method

.method public native UninitDecoder(I)I
.end method
