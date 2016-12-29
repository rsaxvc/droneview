.class public Lstruct/LEDataOutputStream;
.super Ljava/lang/Object;
.source "LEDataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field protected d:Ljava/io/DataOutputStream;

.field w:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    .line 19
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 154
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 118
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final write([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 149
    return-void
.end method

.method public final declared-synchronized write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 124
    return-void
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 129
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final writeChar(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 40
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 42
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 94
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lstruct/LEDataOutputStream;->writeChar(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeDouble(D)V
    .locals 2
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lstruct/LEDataOutputStream;->writeLong(J)V

    .line 86
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lstruct/LEDataOutputStream;->writeInt(I)V

    .line 78
    return-void
.end method

.method public final writeInt(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 50
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 51
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 52
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 54
    return-void
.end method

.method public final writeLong(J)V
    .locals 6
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 62
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x1

    shr-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x2

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x3

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x5

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x6

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x7

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lstruct/LEDataOutputStream;->w:[B

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 70
    return-void
.end method

.method public final writeShort(I)V
    .locals 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 28
    iget-object v0, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 29
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lstruct/LEDataOutputStream;->w:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 30
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lstruct/LEDataOutputStream;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    return-void
.end method
