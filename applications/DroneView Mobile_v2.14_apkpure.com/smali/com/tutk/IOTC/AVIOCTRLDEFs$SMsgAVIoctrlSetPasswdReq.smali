.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetPasswdReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetPasswdReq"
.end annotation


# instance fields
.field newPasswd:[B

.field oldPasswd:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetPasswdReq;->oldPasswd:[B

    .line 525
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetPasswdReq;->newPasswd:[B

    .line 523
    return-void
.end method

.method public static parseContent(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "oldPwd"    # Ljava/lang/String;
    .param p1, "newPwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 530
    .local v1, "oldpwd":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 531
    .local v0, "newpwd":[B
    const/16 v3, 0x40

    new-array v2, v3, [B

    .line 533
    .local v2, "result":[B
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/16 v3, 0x20

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    return-object v2
.end method
