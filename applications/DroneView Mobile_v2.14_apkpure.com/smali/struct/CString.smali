.class public Lstruct/CString;
.super Ljava/lang/Object;
.source "CString.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2f19ba19249e02edL


# instance fields
.field private buffer:[B
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 18
    new-array v0, p1, [B

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CI)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fillChar"    # C
    .param p3, "len"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lstruct/CString;->buffer:[B

    .line 32
    if-nez p1, :cond_0

    const-string p1, ""

    .line 34
    :cond_0
    new-array v1, p3, [B

    iput-object v1, p0, Lstruct/CString;->buffer:[B

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lstruct/CString;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lstruct/CString;->copyData([BI)V

    .line 40
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lstruct/CString;->buffer:[B

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 22
    new-array v0, p2, [B

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lstruct/CString;->copyData([BI)V

    .line 24
    return-void
.end method

.method public constructor <init>([BCI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "fillChar"    # C
    .param p3, "len"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lstruct/CString;->buffer:[B

    .line 43
    new-array v1, p3, [B

    iput-object v1, p0, Lstruct/CString;->buffer:[B

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lstruct/CString;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 48
    invoke-direct {p0, p1, p3}, Lstruct/CString;->copyData([BI)V

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lstruct/CString;->buffer:[B

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 27
    new-array v0, p2, [B

    iput-object v0, p0, Lstruct/CString;->buffer:[B

    .line 28
    invoke-direct {p0, p1, p2}, Lstruct/CString;->copyData([BI)V

    .line 29
    return-void
.end method

.method private copyData([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 52
    array-length v0, p1

    if-ge v0, p2, :cond_0

    .line 53
    iget-object v0, p0, Lstruct/CString;->buffer:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lstruct/CString;->buffer:[B

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public asCString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lstruct/CString;->buffer:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lstruct/CString;->buffer:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lstruct/CString;->buffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 95
    .local v1, "str":Ljava/lang/String;
    return-object v1

    .line 93
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public asCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lstruct/CString;->buffer:[B

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lstruct/CString;->buffer:[B

    aget-byte v4, v4, v1

    if-nez v4, :cond_1

    .line 102
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lstruct/CString;->buffer:[B

    invoke-direct {v2, v4, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 104
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lstruct/CString;->buffer:[B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    move-object v2, v3

    .line 109
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 101
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .restart local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lstruct/CString;

    .line 61
    .local v0, "str":Lstruct/CString;
    invoke-virtual {v0}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lstruct/CString;->buffer:[B

    return-object v0
.end method

.method public setBuffer([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 117
    iput-object p1, p0, Lstruct/CString;->buffer:[B

    .line 118
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lstruct/CString;->buffer:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v0, p0, Lstruct/CString;->buffer:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    aput-byte v3, v0, v1

    .line 70
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    .local v0, "data":[B
    const/4 v2, 0x0

    iget-object v3, p0, Lstruct/CString;->buffer:[B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v2, p0, Lstruct/CString;->buffer:[B

    array-length v3, v0

    const/4 v4, 0x0

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lstruct/CString;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
