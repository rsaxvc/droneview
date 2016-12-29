.class public Lcom/easyview/bean/WifiBean;
.super Ljava/lang/Object;
.source "WifiBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private authtype:I

.field private channel:I

.field private dbm0:I

.field private defkey:I

.field private did:Ljava/lang/String;

.field private enable:I

.field private encryp:I

.field private key1:Ljava/lang/String;

.field private key1_bits:I

.field private key2:Ljava/lang/String;

.field private key2_bits:I

.field private key3:Ljava/lang/String;

.field private key3_bits:I

.field private key4:Ljava/lang/String;

.field private key4_bits:I

.field private keyformat:I

.field private mode:I

.field private ssid:Ljava/lang/String;

.field private wpa_psk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->did:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->ssid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->key1:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->key2:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->key3:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->key4:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/easyview/bean/WifiBean;->wpa_psk:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public getAuthtype()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/easyview/bean/WifiBean;->authtype:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/easyview/bean/WifiBean;->channel:I

    return v0
.end method

.method public getDbm0()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/easyview/bean/WifiBean;->dbm0:I

    return v0
.end method

.method public getDefkey()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/easyview/bean/WifiBean;->defkey:I

    return v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/easyview/bean/WifiBean;->enable:I

    return v0
.end method

.method public getEncryp()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/easyview/bean/WifiBean;->encryp:I

    return v0
.end method

.method public getKey1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->key1:Ljava/lang/String;

    return-object v0
.end method

.method public getKey1_bits()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/easyview/bean/WifiBean;->key1_bits:I

    return v0
.end method

.method public getKey2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->key2:Ljava/lang/String;

    return-object v0
.end method

.method public getKey2_bits()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/easyview/bean/WifiBean;->key2_bits:I

    return v0
.end method

.method public getKey3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->key3:Ljava/lang/String;

    return-object v0
.end method

.method public getKey3_bits()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/easyview/bean/WifiBean;->key3_bits:I

    return v0
.end method

.method public getKey4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->key4:Ljava/lang/String;

    return-object v0
.end method

.method public getKey4_bits()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/easyview/bean/WifiBean;->key4_bits:I

    return v0
.end method

.method public getKeyformat()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/easyview/bean/WifiBean;->keyformat:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/easyview/bean/WifiBean;->mode:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getWpa_psk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/easyview/bean/WifiBean;->wpa_psk:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthtype(I)V
    .locals 0
    .param p1, "authtype"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/easyview/bean/WifiBean;->authtype:I

    .line 81
    return-void
.end method

.method public setChannel(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/easyview/bean/WifiBean;->channel:I

    .line 65
    return-void
.end method

.method public setDbm0(I)V
    .locals 0
    .param p1, "dbm0"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/easyview/bean/WifiBean;->dbm0:I

    .line 33
    return-void
.end method

.method public setDefkey(I)V
    .locals 0
    .param p1, "defkey"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/easyview/bean/WifiBean;->defkey:I

    .line 105
    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->did:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEnable(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/easyview/bean/WifiBean;->enable:I

    .line 49
    return-void
.end method

.method public setEncryp(I)V
    .locals 0
    .param p1, "encryp"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/easyview/bean/WifiBean;->encryp:I

    .line 89
    return-void
.end method

.method public setKey1(Ljava/lang/String;)V
    .locals 0
    .param p1, "key1"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->key1:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setKey1_bits(I)V
    .locals 0
    .param p1, "key1_bits"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/easyview/bean/WifiBean;->key1_bits:I

    .line 145
    return-void
.end method

.method public setKey2(Ljava/lang/String;)V
    .locals 0
    .param p1, "key2"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->key2:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setKey2_bits(I)V
    .locals 0
    .param p1, "key2_bits"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/easyview/bean/WifiBean;->key2_bits:I

    .line 153
    return-void
.end method

.method public setKey3(Ljava/lang/String;)V
    .locals 0
    .param p1, "key3"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->key3:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setKey3_bits(I)V
    .locals 0
    .param p1, "key3_bits"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/easyview/bean/WifiBean;->key3_bits:I

    .line 161
    return-void
.end method

.method public setKey4(Ljava/lang/String;)V
    .locals 0
    .param p1, "key4"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->key4:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setKey4_bits(I)V
    .locals 0
    .param p1, "key4_bits"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/easyview/bean/WifiBean;->key4_bits:I

    .line 169
    return-void
.end method

.method public setKeyformat(I)V
    .locals 0
    .param p1, "keyformat"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/easyview/bean/WifiBean;->keyformat:I

    .line 97
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/easyview/bean/WifiBean;->mode:I

    .line 73
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->ssid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setWpa_psk(Ljava/lang/String;)V
    .locals 0
    .param p1, "wpa_psk"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/easyview/bean/WifiBean;->wpa_psk:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiBean [did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->enable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget v1, p0, Lcom/easyview/bean/WifiBean;->authtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->encryp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyformat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->keyformat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, ", defkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->defkey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->key1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->key2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string v1, ", key3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->key3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->key4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key1_bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget v1, p0, Lcom/easyview/bean/WifiBean;->key1_bits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key2_bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->key2_bits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key3_bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    iget v1, p0, Lcom/easyview/bean/WifiBean;->key3_bits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key4_bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/easyview/bean/WifiBean;->key4_bits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wpa_psk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/easyview/bean/WifiBean;->wpa_psk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
