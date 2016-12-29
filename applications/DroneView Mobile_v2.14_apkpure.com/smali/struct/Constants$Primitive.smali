.class public final enum Lstruct/Constants$Primitive;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstruct/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lstruct/Constants$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lstruct/Constants$Primitive;

.field public static final enum BYTE:Lstruct/Constants$Primitive;

.field public static final enum CHAR:Lstruct/Constants$Primitive;

.field public static final enum DOUBLE:Lstruct/Constants$Primitive;

.field private static final synthetic ENUM$VALUES:[Lstruct/Constants$Primitive;

.field public static final enum FLOAT:Lstruct/Constants$Primitive;

.field public static final enum INT:Lstruct/Constants$Primitive;

.field public static final enum LONG:Lstruct/Constants$Primitive;

.field public static final enum OBJECT:Lstruct/Constants$Primitive;

.field public static final enum SHORT:Lstruct/Constants$Primitive;


# instance fields
.field order:I

.field signature:C

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lstruct/Constants$Primitive;

    const-string v1, "BOOLEAN"

    const-string v3, "boolean"

    const/16 v4, 0x5a

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v0, Lstruct/Constants$Primitive;->BOOLEAN:Lstruct/Constants$Primitive;

    .line 13
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "BYTE"

    const-string v6, "byte"

    const/16 v7, 0x42

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->BYTE:Lstruct/Constants$Primitive;

    .line 14
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "CHAR"

    const-string v6, "char"

    const/16 v7, 0x43

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->CHAR:Lstruct/Constants$Primitive;

    .line 15
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "SHORT"

    const-string v6, "short"

    const/16 v7, 0x53

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->SHORT:Lstruct/Constants$Primitive;

    .line 16
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "INT"

    const-string v6, "int"

    const/16 v7, 0x49

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->INT:Lstruct/Constants$Primitive;

    .line 17
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "LONG"

    const/4 v5, 0x5

    const-string v6, "long"

    const/16 v7, 0x4a

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->LONG:Lstruct/Constants$Primitive;

    .line 18
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "FLOAT"

    const/4 v5, 0x6

    const-string v6, "float"

    const/16 v7, 0x46

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->FLOAT:Lstruct/Constants$Primitive;

    .line 19
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "DOUBLE"

    const/4 v5, 0x7

    const-string v6, "double"

    const/16 v7, 0x44

    const/4 v8, 0x7

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->DOUBLE:Lstruct/Constants$Primitive;

    .line 20
    new-instance v3, Lstruct/Constants$Primitive;

    const-string v4, "OBJECT"

    const/16 v5, 0x8

    const-string v6, "object"

    const/16 v7, 0x4f

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lstruct/Constants$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;CI)V

    sput-object v3, Lstruct/Constants$Primitive;->OBJECT:Lstruct/Constants$Primitive;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lstruct/Constants$Primitive;

    sget-object v1, Lstruct/Constants$Primitive;->BOOLEAN:Lstruct/Constants$Primitive;

    aput-object v1, v0, v2

    sget-object v1, Lstruct/Constants$Primitive;->BYTE:Lstruct/Constants$Primitive;

    aput-object v1, v0, v9

    sget-object v1, Lstruct/Constants$Primitive;->CHAR:Lstruct/Constants$Primitive;

    aput-object v1, v0, v10

    sget-object v1, Lstruct/Constants$Primitive;->SHORT:Lstruct/Constants$Primitive;

    aput-object v1, v0, v11

    sget-object v1, Lstruct/Constants$Primitive;->INT:Lstruct/Constants$Primitive;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lstruct/Constants$Primitive;->LONG:Lstruct/Constants$Primitive;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lstruct/Constants$Primitive;->FLOAT:Lstruct/Constants$Primitive;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lstruct/Constants$Primitive;->DOUBLE:Lstruct/Constants$Primitive;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lstruct/Constants$Primitive;->OBJECT:Lstruct/Constants$Primitive;

    aput-object v2, v0, v1

    sput-object v0, Lstruct/Constants$Primitive;->ENUM$VALUES:[Lstruct/Constants$Primitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;CI)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "signature"    # C
    .param p5, "order"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lstruct/Constants$Primitive;->type:Ljava/lang/String;

    .line 27
    iput-char p4, p0, Lstruct/Constants$Primitive;->signature:C

    .line 28
    iput p5, p0, Lstruct/Constants$Primitive;->order:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lstruct/Constants$Primitive;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lstruct/Constants$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lstruct/Constants$Primitive;

    return-object v0
.end method

.method public static values()[Lstruct/Constants$Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lstruct/Constants$Primitive;->ENUM$VALUES:[Lstruct/Constants$Primitive;

    array-length v1, v0

    new-array v2, v1, [Lstruct/Constants$Primitive;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
