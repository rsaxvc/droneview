.class public abstract Lstruct/StructInput;
.super Ljava/io/InputStream;
.source "StructInput.java"


# static fields
.field private static synthetic $SWITCH_TABLE$struct$Constants$Primitive:[I


# direct methods
.method static synthetic $SWITCH_TABLE$struct$Constants$Primitive()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lstruct/StructInput;->$SWITCH_TABLE$struct$Constants$Primitive:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lstruct/Constants$Primitive;->values()[Lstruct/Constants$Primitive;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lstruct/Constants$Primitive;->BOOLEAN:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lstruct/Constants$Primitive;->BYTE:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lstruct/Constants$Primitive;->CHAR:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lstruct/Constants$Primitive;->DOUBLE:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lstruct/Constants$Primitive;->FLOAT:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lstruct/Constants$Primitive;->INT:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lstruct/Constants$Primitive;->LONG:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lstruct/Constants$Primitive;->OBJECT:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lstruct/Constants$Primitive;->SHORT:Lstruct/Constants$Primitive;

    invoke-virtual {v1}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lstruct/StructInput;->$SWITCH_TABLE$struct$Constants$Primitive:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public handleObject(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lstruct/StructException;,
            Ljava/io/IOException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lstruct/StructException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CString objects should be initialized before unpacking :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lstruct/StructInput;->readObject(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract readBoolean()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readBooleanArray([Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readByteArray([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readChar()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readCharArray([C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readDouble()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readDoubleArray([D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 7
    .param p1, "fieldData"    # Lstruct/StructFieldData;
    .param p2, "getter"    # Ljava/lang/reflect/Method;
    .param p3, "setter"    # Ljava/lang/reflect/Method;
    .param p4, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p1}, Lstruct/StructFieldData;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_b

    .line 94
    invoke-static {}, Lstruct/StructInput;->$SWITCH_TABLE$struct$Constants$Primitive()[I

    move-result-object v2

    invoke-virtual {p1}, Lstruct/StructFieldData;->getType()Lstruct/Constants$Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 136
    if-eqz p3, :cond_a

    .line 137
    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 139
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CString"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    new-instance v2, Lstruct/StructException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CString objects should be initialized :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_0
    if-eqz p3, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lstruct/StructInput;->readBoolean()Z

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 101
    :pswitch_1
    if-eqz p3, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lstruct/StructInput;->readByte()B

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_0

    .line 106
    :pswitch_2
    if-eqz p3, :cond_2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lstruct/StructInput;->readShort()S

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_0

    .line 111
    :pswitch_3
    if-eqz p3, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lstruct/StructInput;->readInt()I

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 116
    :pswitch_4
    if-eqz p3, :cond_4

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Lstruct/StructInput;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, p4, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_0

    .line 121
    :pswitch_5
    if-eqz p3, :cond_5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-virtual {p0}, Lstruct/StructInput;->readChar()C

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto/16 :goto_0

    .line 126
    :pswitch_6
    if-eqz p3, :cond_6

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lstruct/StructInput;->readFloat()F

    move-result v2

    invoke-virtual {v0, p4, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 131
    :pswitch_7
    if-eqz p3, :cond_7

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lstruct/StructInput;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    :cond_7
    invoke-virtual {p0}, Lstruct/StructInput;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, p4, v2, v3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 142
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 144
    :cond_9
    invoke-virtual {p0, v1}, Lstruct/StructInput;->readObject(Ljava/lang/Object;)V

    .line 145
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {p3, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    .end local v1    # "object":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0, v0, p4}, Lstruct/StructInput;->handleObject(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 153
    new-instance v2, Lstruct/StructException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Arrays can not be null : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_c
    invoke-static {}, Lstruct/StructInput;->$SWITCH_TABLE$struct$Constants$Primitive()[I

    move-result-object v2

    invoke-virtual {p1}, Lstruct/StructFieldData;->getType()Lstruct/Constants$Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 196
    if-eqz p2, :cond_15

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readObjectArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    :pswitch_8
    if-eqz p2, :cond_d

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readBooleanArray([Z)V

    goto/16 :goto_0

    .line 157
    :cond_d
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readBooleanArray([Z)V

    goto/16 :goto_0

    .line 161
    :pswitch_9
    if-eqz p2, :cond_e

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readByteArray([B)V

    goto/16 :goto_0

    .line 162
    :cond_e
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readByteArray([B)V

    goto/16 :goto_0

    .line 166
    :pswitch_a
    if-eqz p2, :cond_f

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readCharArray([C)V

    goto/16 :goto_0

    .line 167
    :cond_f
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readCharArray([C)V

    goto/16 :goto_0

    .line 171
    :pswitch_b
    if-eqz p2, :cond_10

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readShortArray([S)V

    goto/16 :goto_0

    .line 172
    :cond_10
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readShortArray([S)V

    goto/16 :goto_0

    .line 176
    :pswitch_c
    if-eqz p2, :cond_11

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readIntArray([I)V

    goto/16 :goto_0

    .line 177
    :cond_11
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readIntArray([I)V

    goto/16 :goto_0

    .line 181
    :pswitch_d
    if-eqz p2, :cond_12

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readLongArray([J)V

    goto/16 :goto_0

    .line 182
    :cond_12
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readLongArray([J)V

    goto/16 :goto_0

    .line 186
    :pswitch_e
    if-eqz p2, :cond_13

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readFloatArray([F)V

    goto/16 :goto_0

    .line 187
    :cond_13
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readFloatArray([F)V

    goto/16 :goto_0

    .line 191
    :pswitch_f
    if-eqz p2, :cond_14

    invoke-virtual {p2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readDoubleArray([D)V

    goto/16 :goto_0

    .line 192
    :cond_14
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readDoubleArray([D)V

    goto/16 :goto_0

    .line 197
    :cond_15
    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lstruct/StructInput;->readObjectArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected abstract readFloat()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readFloatArray([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readIntArray([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readLongArray([J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 13
    if-nez p1, :cond_0

    new-instance v18, Lstruct/StructException;

    const-string v19, "Struct objects cannot be null."

    invoke-direct/range {v18 .. v19}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 14
    :cond_0
    invoke-static/range {p1 .. p1}, Lstruct/StructUtils;->getStructInfo(Ljava/lang/Object;)Lstruct/StructData;

    move-result-object v12

    .line 15
    .local v12, "info":Lstruct/StructData;
    invoke-virtual {v12}, Lstruct/StructData;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 17
    .local v10, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v10

    move/from16 v20, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 88
    return-void

    .line 17
    :cond_1
    aget-object v6, v10, v19

    .line 19
    .local v6, "currentField":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;

    move-result-object v9

    .line 20
    .local v9, "fieldData":Lstruct/StructFieldData;
    if-nez v9, :cond_2

    .line 21
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

    .line 23
    :cond_2
    const/4 v5, -0x1

    .line 24
    .local v5, "arrayLength":I
    const/4 v15, 0x0

    .line 26
    .local v15, "lengthedArray":Z
    :try_start_0
    invoke-virtual {v12, v6}, Lstruct/StructData;->isLenghtedArray(Ljava/lang/reflect/Field;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 27
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getLenghtedArray(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 28
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lstruct/StructData;->getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;

    move-result-object v14

    .line 29
    .local v14, "lengthMarker":Lstruct/StructFieldData;
    invoke-virtual {v14}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 30
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

    .line 34
    :goto_1
    const/4 v15, 0x1

    .line 37
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v14    # "lengthMarker":Lstruct/StructFieldData;
    :cond_3
    invoke-virtual {v9}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 38
    invoke-virtual {v9}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 39
    .local v11, "getter":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Lstruct/StructFieldData;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v17

    .line 41
    .local v17, "setter":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_4

    if-nez v17, :cond_6

    .line 42
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

    .line 84
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v17    # "setter":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    .line 85
    .local v7, "e":Ljava/lang/Exception;
    new-instance v18, Lstruct/StructException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lstruct/StructException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 32
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

    .line 45
    .end local v8    # "f":Ljava/lang/reflect/Field;
    .end local v14    # "lengthMarker":Lstruct/StructFieldData;
    .restart local v11    # "getter":Ljava/lang/reflect/Method;
    .restart local v17    # "setter":Ljava/lang/reflect/Method;
    :cond_6
    if-eqz v15, :cond_7

    if-ltz v5, :cond_7

    .line 46
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 47
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

    .line 48
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_7

    .line 49
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 50
    .local v4, "array":[Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-lt v13, v5, :cond_8

    .line 55
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

    .line 56
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 57
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

    .line 51
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

    .line 50
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 60
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v9, v11, v1, v2}, Lstruct/StructInput;->readField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 17
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v17    # "setter":Ljava/lang/reflect/Method;
    :cond_a
    :goto_3
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_0

    .line 64
    :cond_b
    if-eqz v15, :cond_c

    if-ltz v5, :cond_c

    .line 65
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 66
    .restart local v16    # "ret":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_c

    .line 68
    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 69
    .restart local v4    # "array":[Ljava/lang/Object;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    if-lt v13, v5, :cond_d

    .line 74
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

    .line 75
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_e

    .line 76
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

    .line 70
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

    .line 69
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 79
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v13    # "j":I
    .end local v16    # "ret":Ljava/lang/Object;
    :cond_e
    if-eqz v15, :cond_f

    if-eqz v15, :cond_a

    if-ltz v5, :cond_a

    .line 80
    :cond_f
    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-virtual {v0, v9, v1, v2, v3}, Lstruct/StructInput;->readField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected abstract readObjectArray([Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lstruct/StructException;
        }
    .end annotation
.end method

.method protected abstract readShort()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readShortArray([S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
