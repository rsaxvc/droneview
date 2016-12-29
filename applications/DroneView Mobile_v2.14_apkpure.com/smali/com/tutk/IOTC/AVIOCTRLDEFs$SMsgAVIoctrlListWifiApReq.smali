.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListWifiApReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlListWifiApReq"
.end annotation


# static fields
.field static reserved:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListWifiApReq;->reserved:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListWifiApReq;->reserved:[B

    return-object v0
.end method
