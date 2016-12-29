.class public Lstruct/StructPacker;
.super Lstruct/StructOutput;
.source "StructPacker.java"


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field protected dataOutput:Ljava/io/DataOutput;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, v1}, Lstruct/StructPacker;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 31
    invoke-direct {p0}, Lstruct/StructOutput;-><init>()V

    .line 32
    invoke-virtual {p0, p1, p2}, Lstruct/StructPacker;->init(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 33
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .end local p1    # "os":Ljava/io/OutputStream;
    iput-object p1, p0, Lstruct/StructPacker;->bos:Ljava/io/ByteArrayOutputStream;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1}, Lstruct/StructPacker;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected init(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 17
    new-instance v0, Lstruct/LEDataOutputStream;

    invoke-direct {v0, p1}, Lstruct/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    goto :goto_0
.end method

.method public pack(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "objectToPack"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lstruct/StructPacker;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toArray()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lstruct/StructPacker;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 47
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .locals 3
    .param p1, "buffer"    # [Z
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 79
    :cond_0
    array-length p2, p1

    .line 80
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 82
    return-void

    .line 81
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget-boolean v2, p1, v0

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 51
    return-void
.end method

.method public writeByteArray([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 89
    :cond_1
    array-length p2, p1

    .line 90
    :cond_2
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_0
.end method

.method public writeChar(C)V
    .locals 1
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChar(I)V

    .line 67
    return-void
.end method

.method public writeCharArray([CI)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 95
    :cond_0
    array-length p2, p1

    .line 96
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 98
    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeChar(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 75
    return-void
.end method

.method public writeDoubleArray([DI)V
    .locals 4
    .param p1, "buffer"    # [D
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 130
    :cond_0
    array-length p2, p1

    .line 131
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 133
    return-void

    .line 132
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget-wide v2, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 71
    return-void
.end method

.method public writeFloatArray([FI)V
    .locals 3
    .param p1, "buffer"    # [F
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 123
    :cond_0
    array-length p2, p1

    .line 124
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 126
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget v2, p1, v0

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 59
    return-void
.end method

.method public writeIntArray([II)V
    .locals 3
    .param p1, "buffer"    # [I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 109
    :cond_0
    array-length p2, p1

    .line 110
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 112
    return-void

    .line 111
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget v2, p1, v0

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 63
    return-void
.end method

.method public writeLongArray([JI)V
    .locals 4
    .param p1, "buffer"    # [J
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 116
    :cond_0
    array-length p2, p1

    .line 117
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 119
    return-void

    .line 118
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget-wide v2, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeObjectArray([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "buffer"    # [Ljava/lang/Object;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 137
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    array-length v1, p1

    if-le p2, v1, :cond_3

    .line 140
    :cond_2
    array-length p2, p1

    .line 141
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 142
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 55
    return-void
.end method

.method public writeShortArray([SI)V
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 102
    :cond_0
    array-length p2, p1

    .line 103
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 105
    return-void

    .line 104
    :cond_2
    iget-object v1, p0, Lstruct/StructPacker;->dataOutput:Ljava/io/DataOutput;

    aget-short v2, p1, v0

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
