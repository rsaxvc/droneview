.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SAvEvent;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAvEvent"
.end annotation


# instance fields
.field event:B

.field reserved:[B

.field status:B

.field utctime:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SAvEvent;->utctime:[B

    .line 820
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SAvEvent;->reserved:[B

    .line 816
    return-void
.end method

.method public static getTotalSize()I
    .locals 1

    .prologue
    .line 823
    const/16 v0, 0xc

    return v0
.end method
