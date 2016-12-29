.class public Lcom/easyview/bean/WifiScanBean;
.super Ljava/lang/Object;
.source "WifiScanBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private channel:I

.field private dbm0:I

.field private dbm1:I

.field private did:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mode:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/easyview/bean/WifiScanBean;->channel:I

    return v0
.end method

.method public getDbm0()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/easyview/bean/WifiScanBean;->dbm0:I

    return v0
.end method

.method public getDbm1()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/easyview/bean/WifiScanBean;->dbm1:I

    return v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/easyview/bean/WifiScanBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/easyview/bean/WifiScanBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/easyview/bean/WifiScanBean;->mode:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/easyview/bean/WifiScanBean;->security:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/easyview/bean/WifiScanBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/easyview/bean/WifiScanBean;->channel:I

    .line 81
    return-void
.end method

.method public setDbm0(I)V
    .locals 0
    .param p1, "dbm0"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/easyview/bean/WifiScanBean;->dbm0:I

    .line 57
    return-void
.end method

.method public setDbm1(I)V
    .locals 0
    .param p1, "dbm1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/easyview/bean/WifiScanBean;->dbm1:I

    .line 65
    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/easyview/bean/WifiScanBean;->did:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/easyview/bean/WifiScanBean;->mac:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/easyview/bean/WifiScanBean;->mode:I

    .line 73
    return-void
.end method

.method public setSecurity(I)V
    .locals 0
    .param p1, "security"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/easyview/bean/WifiScanBean;->security:I

    .line 49
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/easyview/bean/WifiScanBean;->ssid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiScanBean [did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easyview/bean/WifiScanBean;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiScanBean;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiScanBean;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, ", security="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiScanBean;->security:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbm0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiScanBean;->dbm0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dbm1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/easyview/bean/WifiScanBean;->dbm1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiScanBean;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiScanBean;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
