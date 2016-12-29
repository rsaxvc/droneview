.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetSupportStreamReq"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentSize()I
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x4

    return v0
.end method

.method public static parseContent()[B
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x4

    new-array v0, v0, [B

    return-object v0
.end method
