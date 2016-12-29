.class public Lstruct/JavaStruct;
.super Ljava/lang/Object;
.source "JavaStruct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPacker(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)Lstruct/StructPacker;
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 19
    new-instance v0, Lstruct/StructPacker;

    invoke-direct {v0, p0, p1}, Lstruct/StructPacker;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static getUnpacker(Ljava/io/InputStream;Ljava/nio/ByteOrder;)Lstruct/StructUnpacker;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 32
    new-instance v0, Lstruct/StructUnpacker;

    invoke-direct {v0, p0, p1}, Lstruct/StructUnpacker;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static final pack(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Lstruct/JavaStruct;->pack(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final pack(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lstruct/StructPacker;

    invoke-direct {v0, p1}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 15
    .local v0, "packer":Lstruct/StructPacker;
    invoke-virtual {v0, p0}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method public static final unpack(Ljava/lang/Object;[B)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, p1, v0}, Lstruct/JavaStruct;->unpack(Ljava/lang/Object;[BLjava/nio/ByteOrder;)V

    .line 24
    return-void
.end method

.method public static final unpack(Ljava/lang/Object;[BLjava/nio/ByteOrder;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "buffer"    # [B
    .param p2, "order"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lstruct/StructUnpacker;

    invoke-direct {v0, p1, p2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 28
    .local v0, "unpacker":Lstruct/StructUnpacker;
    invoke-virtual {v0, p0}, Lstruct/StructUnpacker;->unpack(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
