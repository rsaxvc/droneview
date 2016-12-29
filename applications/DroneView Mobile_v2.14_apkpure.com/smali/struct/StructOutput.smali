.class public abstract Lstruct/StructOutput;
.super Ljava/io/OutputStream;
.source "StructOutput.java"


# static fields
.field private static synthetic $SWITCH_TABLE$struct$Constants$Primitive:[I


# direct methods
.method static synthetic $SWITCH_TABLE$struct$Constants$Primitive()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lstruct/StructOutput;->$SWITCH_TABLE$struct$Constants$Primitive:[I

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
    sput-object v0, Lstruct/StructOutput;->$SWITCH_TABLE$struct$Constants$Primitive:[I

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
    .line 9
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public handleObject(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lstruct/StructException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lstruct/StructOutput;->writeObject(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBooleanArray([ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeByte(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeByteArray([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeChar(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeCharArray([CI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDouble(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDoubleArray([DI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "fieldData"    # Lstruct/StructFieldData;
    .param p2, "getter"    # Ljava/lang/reflect/Method;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p1}, Lstruct/StructFieldData;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_9

    .line 70
    invoke-static {}, Lstruct/StructOutput;->$SWITCH_TABLE$struct$Constants$Primitive()[I

    move-result-object v3

    invoke-virtual {p1}, Lstruct/StructFieldData;->getType()Lstruct/Constants$Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 115
    if-eqz p2, :cond_8

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lstruct/StructOutput;->handleObject(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 72
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeBoolean(Z)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeBoolean(Z)V

    goto :goto_0

    .line 77
    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeByte(B)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeByte(B)V

    goto :goto_0

    .line 82
    :pswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeShort(S)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeShort(S)V

    goto :goto_0

    .line 87
    :pswitch_3
    if-eqz p2, :cond_3

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeInt(I)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeInt(I)V

    goto :goto_0

    .line 93
    :pswitch_4
    if-eqz p2, :cond_4

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 95
    .local v1, "longValue":J
    :goto_1
    invoke-virtual {p0, v1, v2}, Lstruct/StructOutput;->writeLong(J)V

    goto :goto_0

    .line 94
    .end local v1    # "longValue":J
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    .restart local v1    # "longValue":J
    goto :goto_1

    .line 99
    .end local v1    # "longValue":J
    :pswitch_5
    if-eqz p2, :cond_5

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeChar(C)V

    goto/16 :goto_0

    .line 100
    :cond_5
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeChar(C)V

    goto/16 :goto_0

    .line 104
    :pswitch_6
    if-eqz p2, :cond_6

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeFloat(F)V

    goto/16 :goto_0

    .line 105
    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-virtual {p0, v3}, Lstruct/StructOutput;->writeFloat(F)V

    goto/16 :goto_0

    .line 109
    :pswitch_7
    if-eqz p2, :cond_7

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lstruct/StructOutput;->writeDouble(D)V

    goto/16 :goto_0

    .line 110
    :cond_7
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lstruct/StructOutput;->writeDouble(D)V

    goto/16 :goto_0

    .line 116
    :cond_8
    invoke-virtual {p0, v0, p3}, Lstruct/StructOutput;->handleObject(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    :cond_9
    invoke-static {}, Lstruct/StructOutput;->$SWITCH_TABLE$struct$Constants$Primitive()[I

    move-result-object v3

    invoke-virtual {p1}, Lstruct/StructFieldData;->getType()Lstruct/Constants$Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lstruct/Constants$Primitive;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 162
    if-eqz p2, :cond_12

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeObjectArray([Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 122
    :pswitch_8
    if-eqz p2, :cond_a

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeBooleanArray([ZI)V

    goto/16 :goto_0

    .line 123
    :cond_a
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeBooleanArray([ZI)V

    goto/16 :goto_0

    .line 127
    :pswitch_9
    if-eqz p2, :cond_b

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeByteArray([BI)V

    goto/16 :goto_0

    .line 128
    :cond_b
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeByteArray([BI)V

    goto/16 :goto_0

    .line 132
    :pswitch_a
    if-eqz p2, :cond_c

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeCharArray([CI)V

    goto/16 :goto_0

    .line 133
    :cond_c
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeCharArray([CI)V

    goto/16 :goto_0

    .line 137
    :pswitch_b
    if-eqz p2, :cond_d

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeShortArray([SI)V

    goto/16 :goto_0

    .line 138
    :cond_d
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeShortArray([SI)V

    goto/16 :goto_0

    .line 142
    :pswitch_c
    if-eqz p2, :cond_e

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeIntArray([II)V

    goto/16 :goto_0

    .line 143
    :cond_e
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeIntArray([II)V

    goto/16 :goto_0

    .line 147
    :pswitch_d
    if-eqz p2, :cond_f

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeLongArray([JI)V

    goto/16 :goto_0

    .line 148
    :cond_f
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeLongArray([JI)V

    goto/16 :goto_0

    .line 152
    :pswitch_e
    if-eqz p2, :cond_10

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeFloatArray([FI)V

    goto/16 :goto_0

    .line 153
    :cond_10
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeFloatArray([FI)V

    goto/16 :goto_0

    .line 157
    :pswitch_f
    if-eqz p2, :cond_11

    invoke-virtual {p2, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeDoubleArray([DI)V

    goto/16 :goto_0

    .line 158
    :cond_11
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeDoubleArray([DI)V

    goto/16 :goto_0

    .line 163
    :cond_12
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p4}, Lstruct/StructOutput;->writeObjectArray([Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 70
    nop

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

    .line 120
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

.method public abstract writeFloat(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFloatArray([FI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeInt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeIntArray([II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeLong(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeLongArray([JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 16
    if-nez p1, :cond_0

    new-instance v6, Lstruct/StructException;

    const-string v7, "Struct classes cant be null. "

    invoke-direct {v6, v7}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 17
    :cond_0
    invoke-static {p1}, Lstruct/StructUtils;->getStructInfo(Ljava/lang/Object;)Lstruct/StructData;

    move-result-object v4

    .line 19
    .local v4, "info":Lstruct/StructData;
    const/4 v5, 0x0

    .line 20
    .local v5, "lengthedArray":Z
    const/4 v0, 0x0

    .line 22
    .local v0, "arrayLength":I
    invoke-virtual {v4}, Lstruct/StructData;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_1

    .line 60
    return-void

    .line 22
    :cond_1
    aget-object v1, v8, v7

    .line 24
    .local v1, "currentField":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lstruct/StructData;->getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;

    move-result-object v3

    .line 25
    .local v3, "fieldData":Lstruct/StructFieldData;
    if-nez v3, :cond_2

    .line 26
    new-instance v6, Lstruct/StructException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Field Data not found for field: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 28
    :cond_2
    const/4 v5, 0x0

    .line 29
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v3}, Lstruct/StructFieldData;->isArrayLengthMarker()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    invoke-virtual {v3}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 33
    invoke-virtual {v3}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 37
    :goto_1
    const/4 v5, 0x1

    .line 39
    :cond_3
    invoke-virtual {v3}, Lstruct/StructFieldData;->requiresGetterSetter()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 40
    if-eqz v5, :cond_5

    if-ltz v0, :cond_5

    .line 41
    invoke-virtual {v3}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {p0, v3, v6, p1, v0}, Lstruct/StructOutput;->writeField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/Object;I)V

    .line 22
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {v3}, Lstruct/StructFieldData;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    .line 43
    :cond_5
    invoke-virtual {v3}, Lstruct/StructFieldData;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v10, -0x1

    invoke-virtual {p0, v3, v6, p1, v10}, Lstruct/StructOutput;->writeField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lstruct/StructException;

    invoke-direct {v6, v2}, Lstruct/StructException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v5, :cond_7

    if-ltz v0, :cond_7

    .line 48
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v6, p1, v0}, Lstruct/StructOutput;->writeField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/Object;I)V

    goto :goto_2

    .line 52
    :cond_7
    const/4 v6, 0x0

    const/4 v10, -0x1

    invoke-virtual {p0, v3, v6, p1, v10}, Lstruct/StructOutput;->writeField(Lstruct/StructFieldData;Ljava/lang/reflect/Method;Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public abstract writeObjectArray([Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lstruct/StructException;
        }
    .end annotation
.end method

.method public abstract writeShort(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeShortArray([SI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
