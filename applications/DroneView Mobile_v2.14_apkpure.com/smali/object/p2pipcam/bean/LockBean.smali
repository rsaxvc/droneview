.class public Lobject/p2pipcam/bean/LockBean;
.super Ljava/lang/Object;
.source "LockBean.java"


# instance fields
.field private cmd:I

.field private newLockPwd:Ljava/lang/String;

.field private oldLockPwd:Ljava/lang/String;

.field private openLockPwd:Ljava/lang/String;

.field private openLockTime:I

.field private reserver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lobject/p2pipcam/bean/LockBean;->cmd:I

    .line 8
    const-string v0, "888888"

    iput-object v0, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    .line 9
    const-string v0, "888888"

    iput-object v0, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    .line 10
    const-string v0, "888888"

    iput-object v0, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    .line 11
    iput v1, p0, Lobject/p2pipcam/bean/LockBean;->openLockTime:I

    .line 5
    return-void
.end method

.method public static final byteArrayToInt_Little([B)I
    .locals 5
    .param p0, "byt"    # [B

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 148
    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 149
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    array-length v1, p0

    if-ne v1, v4, :cond_2

    .line 151
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 152
    :cond_2
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 153
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static final intToByteArray_Little(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public arrary()[B
    .locals 7

    .prologue
    const/16 v3, 0x28

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 69
    new-array v2, v3, [B

    .line 70
    .local v2, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 74
    iget v3, p0, Lobject/p2pipcam/bean/LockBean;->cmd:I

    invoke-static {v3}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 75
    .local v0, "data":[B
    invoke-static {v0, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 78
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 79
    invoke-static {v0, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_0
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 83
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 84
    const/16 v3, 0xc

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_1
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 88
    iget-object v3, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 89
    const/16 v3, 0x14

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_2
    iget v3, p0, Lobject/p2pipcam/bean/LockBean;->openLockTime:I

    invoke-static {v3}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 92
    const/16 v3, 0x1c

    invoke-static {v0, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v2

    .line 72
    .end local v0    # "data":[B
    :cond_3
    aput-byte v4, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCmd()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lobject/p2pipcam/bean/LockBean;->cmd:I

    return v0
.end method

.method public getNewLockPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getOldLockPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenLockPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenLockTime()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lobject/p2pipcam/bean/LockBean;->openLockTime:I

    return v0
.end method

.method public getReserver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lobject/p2pipcam/bean/LockBean;->reserver:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 20
    iput p1, p0, Lobject/p2pipcam/bean/LockBean;->cmd:I

    .line 21
    return-void
.end method

.method public setNewLockPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "newLockPwd"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOldLockPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldLockPwd"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOpenLockPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "openLockPwd"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOpenLockTime(I)V
    .locals 0
    .param p1, "openLockTime"    # I

    .prologue
    .line 52
    iput p1, p0, Lobject/p2pipcam/bean/LockBean;->openLockTime:I

    .line 53
    return-void
.end method

.method public setReserver(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserver"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lobject/p2pipcam/bean/LockBean;->reserver:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmd == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lobject/p2pipcam/bean/LockBean;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  openLockPwd == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/LockBean;->openLockPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   oldLockPwd  == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/LockBean;->oldLockPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string v1, "  newLockPwd ==  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/bean/LockBean;->newLockPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  openLockTime==  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lobject/p2pipcam/bean/LockBean;->openLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
