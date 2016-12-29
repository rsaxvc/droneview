.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEmailReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetEmailReq"
.end annotation


# static fields
.field static channel:I

.field static iCount:C

.field static iPort:I

.field static isTest:C

.field static move:C

.field static nDataEnc:C

.field static recEmail1:[C

.field static recEmail2:[C

.field static recEmail3:[C

.field static reserved:[C

.field static result_code:I

.field static sedEmail:[C

.field static smtpPswd:[C

.field static smtpServer:[C

.field static smtpUser:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 2

    .prologue
    .line 1096
    const/16 v1, 0x334

    new-array v0, v1, [B

    .line 1098
    .local v0, "result":[B
    return-object v0
.end method
