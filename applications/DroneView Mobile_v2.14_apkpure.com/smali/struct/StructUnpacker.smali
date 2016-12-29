.class public Lstruct/StructUnpacker;
.super Lstruct/StructInput;
.source "StructUnpacker.java"


# instance fields
.field dataInput:Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 41
    invoke-direct {p0}, Lstruct/StructInput;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2}, Lstruct/StructUnpacker;->init(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bufferToUnpack"    # [B

    .prologue
    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, v1}, Lstruct/StructUnpacker;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 35
    return-void
.end method

.method public constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 1
    .param p1, "bufferToUnpack"    # [B
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lstruct/StructUnpacker;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected init(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 25
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 26
    new-instance v0, Lstruct/LEDataInputStream;

    invoke-direct {v0, p1}, Lstruct/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    return v0
.end method

.method protected readBooleanArray([Z)V
    .locals 2
    .param p1, "buffer"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 163
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readBoolean()Z

    move-result v1

    aput-boolean v1, p1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    return v0
.end method

.method protected readByteArray([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 167
    return-void
.end method

.method protected readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readChar()C

    move-result v0

    return v0
.end method

.method protected readCharArray([C)V
    .locals 2
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 172
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readChar()C

    move-result v1

    aput-char v1, p1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method protected readDoubleArray([D)V
    .locals 3
    .param p1, "buffer"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 197
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readDouble()D

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    return v0
.end method

.method protected readFloatArray([F)V
    .locals 2
    .param p1, "buffer"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 192
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readFloat()F

    move-result v1

    aput v1, p1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    return v0
.end method

.method protected readIntArray([I)V
    .locals 2
    .param p1, "buffer"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 182
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readInt()I

    move-result v1

    aput v1, p1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readLongArray([J)V
    .locals 3
    .param p1, "buffer"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 187
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readLong()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readObject(Ljava/lang/Object;)V
    .locals 22
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_0

    new-instance v18, Lstruct/StructException;

    const-string v19, "Struct objects cannot be null."

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 52
    :cond_0
    invoke-static/range {p1 .. p1}, Lstruct/StructUtils;->getStructInfo(Ljava/lang/Object;)Lstruct/StructData;

    move-result-object v12

    .line 53
    .local v12, "info":Lstruct/StructData;
    invoke-virtual {v12}, Lstruct/StructData;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 55
    .local v10, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v10

    move/from16 v20, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 126
    return-void

    .line 55
    :cond_1
    aget-object v6, v10, v19

    .line 57
    .local v6, "currentField":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;

    move-result-object v9

    .line 58
    .local v9, "fieldData":Lstruct/StructFieldData;
    if-nez v9, :cond_2

    .line 59
    new-instance v18, Lstruct/StructException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Field Data not found for field: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 61
    :cond_2
    const/4 v5, -0x1

    .line 62
    .local v5, "arrayLength":I
    const/4 v15, 0x0

    .line 64
    .local v15, "lengthedArray":Z
    :try_start_0
    invoke-virtual {v12, v6}, Lstruct/StructData;->isLenghtedArray(Ljava/lang/reflect/Field;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 65
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getLenghtedArray(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 66
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;

    move-result-object v14

    .line 67
    .local v14, "lengthMarker":Lstruct/StructFieldData;
    invoke-virtual {v14}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 68
    invoke-virtual {v14}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v18

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 72
    :goto_1
    const/4 v15, 0x1

    .line 75
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v14    # "lengthMarker":Lstruct/StructFieldData;
    :cond_3
    invoke-virtual {v9}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 76
    invoke-virtual {v9}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 77
    .local v11, "getter":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Lstruct/StructFieldData;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v17

    .line 79
    .local v17, "setter":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_4

    if-nez v17, :cond_6

    .line 80
    :cond_4
    new-instance v18, Lstruct/StructException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " getter/setter required for : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v17    # "setter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/Exception;
    new-instance v18, Lstruct/StructException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lstruct/StructException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 70
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "f":Ljava/lang/reflect/Field;
    .restart local v14    # "lengthMarker":Lstruct/StructFieldData;
    :cond_5
    :try_start_1
    invoke-virtual {v14}, Lstruct/StructFieldData;->getField()Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_1

    .line 83
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v14    # "lengthMarker":Lstruct/StructFieldData;
    .restart local v11    # "getter":Ljava/lang/reflect/Method;
    .restart local v17    # "setter":Ljava/lang/reflect/Method;
    :cond_6
    if-eqz v15, :cond_7

    if-ltz v5, :cond_7

    .line 84
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 85
    .local v16, "ret":Ljava/lang/Object;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aput-object v16, v18, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_7

    .line 87
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 88
    .local v4, "array":[Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-lt v13, v5, :cond_8

    .line 93
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_7
    if-nez v15, :cond_9

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 94
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 95
    new-instance v18, Lstruct/StructException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Arrays can not be null :"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 89
    .restart local v4    # "array":[Ljava/lang/Object;
    .restart local v13    # "j":I
    .restart local v16    # "ret":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v4, v13

    .line 88
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 98
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v9, v11, v1, v2}, Lstruct/StructUnpacker;->readField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 55
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v17    # "setter":Ljava/lang/reflect/Method;
    :cond_a
    :goto_3
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_0

    .line 102
    :cond_b
    if-eqz v15, :cond_c

    if-ltz v5, :cond_c

    .line 103
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 104
    .restart local v16    # "ret":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_c

    .line 106
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 107
    .restart local v4    # "array":[Ljava/lang/Object;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    if-lt v13, v5, :cond_d

    .line 112
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_c
    if-nez v15, :cond_e

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_e

    .line 114
    new-instance v18, Lstruct/StructException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Arrays can not be null. : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 108
    .restart local v4    # "array":[Ljava/lang/Object;
    .restart local v13    # "j":I
    .restart local v16    # "ret":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v4, v13

    .line 107
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 117
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_e
    if-eqz v15, :cond_f

    if-eqz v15, :cond_a

    if-ltz v5, :cond_a

    .line 118
    :cond_f
    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-virtual {v0, v9, v1, v2, v3}, Lstruct/StructUnpacker;->readField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected readObjectArray([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 202
    return-void

    .line 201
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lstruct/StructUnpacker;->dataInput:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    return v0
.end method

.method protected readShortArray([S)V
    .locals 2
    .param p1, "buffer"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 177
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lstruct/StructUnpacker;->readShort()S

    move-result v1

    aput-short v1, p1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unpack(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objectToUnpack"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
