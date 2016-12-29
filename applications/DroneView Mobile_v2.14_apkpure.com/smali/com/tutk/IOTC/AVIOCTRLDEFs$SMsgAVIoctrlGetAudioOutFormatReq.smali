.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetAudioOutFormatReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetAudioOutFormatReq"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 1

    .prologue
    .line 1297
    const/16 v0, 0x8

    new-array v0, v0, [B

    return-object v0
.end method
