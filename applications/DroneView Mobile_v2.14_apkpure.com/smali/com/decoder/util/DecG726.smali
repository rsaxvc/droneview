.class public Lcom/decoder/util/DecG726;
.super Ljava/lang/Object;
.source "DecG726.java"


# static fields
.field public static final API_ER_ANDROID_NULL:I = -0x2710

.field public static final FORMAT_ALAW:B = 0x1t

.field public static final FORMAT_LINEAR:B = 0x2t

.field public static final FORMAT_ULAW:B = 0x0t

.field public static final G726_16:I = 0x0

.field public static final G726_24:I = 0x1

.field public static final G726_32:I = 0x2

.field public static final G726_40:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    :try_start_0
    const-string v1, "G726Android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 24
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 25
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(G726Android),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native g726_dec_state_create(BB)I
.end method

.method public static native g726_dec_state_destroy()V
.end method

.method public static native g726_decode([BJ[B[J)I
.end method
