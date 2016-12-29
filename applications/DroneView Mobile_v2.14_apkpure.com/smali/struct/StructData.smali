.class public Lstruct/StructData;
.super Ljava/lang/Object;
.source "StructData.java"


# static fields
.field static ACCEPTED_MODIFIERS:I


# instance fields
.field fieldDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lstruct/StructFieldData;",
            ">;"
        }
    .end annotation
.end field

.field fields:[Ljava/lang/reflect/Field;

.field lengthedArrayFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field methods:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x7

    sput v0, Lstruct/StructData;->ACCEPTED_MODIFIERS:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)V
    .locals 9
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .param p2, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v4, p0, Lstruct/StructData;->fields:[Ljava/lang/reflect/Field;

    .line 14
    iput-object v4, p0, Lstruct/StructData;->methods:[Ljava/lang/reflect/Method;

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lstruct/StructData;->lengthedArrayFields:Ljava/util/HashMap;

    .line 16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lstruct/StructData;->fieldDataMap:Ljava/util/HashMap;

    .line 26
    iput-object p1, p0, Lstruct/StructData;->fields:[Ljava/lang/reflect/Field;

    .line 27
    iput-object p2, p0, Lstruct/StructData;->methods:[Ljava/lang/reflect/Method;

    .line 29
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 62
    return-void

    .line 29
    :cond_0
    aget-object v0, p1, v4

    .line 31
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    sget v7, Lstruct/StructData;->ACCEPTED_MODIFIERS:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    sget v7, Lstruct/StructData;->ACCEPTED_MODIFIERS:I

    or-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 33
    :cond_1
    new-instance v4, Lstruct/StructException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Field type should be public, private or protected : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_2
    new-instance v1, Lstruct/StructFieldData;

    invoke-direct {v1, v0}, Lstruct/StructFieldData;-><init>(Ljava/lang/reflect/Field;)V

    .line 38
    .local v1, "fieldData":Lstruct/StructFieldData;
    const-class v6, Lstruct/ArrayLengthMarker;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lstruct/ArrayLengthMarker;

    .line 39
    .local v3, "lengthMarker":Lstruct/ArrayLengthMarker;
    if-eqz v3, :cond_5

    .line 40
    invoke-virtual {v1, v8}, Lstruct/StructFieldData;->setArrayLengthMarker(Z)V

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "i":I
    :goto_1
    array-length v6, p1

    if-lt v2, v6, :cond_3

    .line 48
    :goto_2
    array-length v6, p1

    if-ne v2, v6, :cond_5

    .line 49
    new-instance v4, Lstruct/StructException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Lenght Marker Fields target is not found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lstruct/ArrayLengthMarker;->fieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_3
    invoke-interface {v3}, Lstruct/ArrayLengthMarker;->fieldName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 44
    iget-object v6, p0, Lstruct/StructData;->lengthedArrayFields:Ljava/util/HashMap;

    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Lstruct/StructUtils;->requiresGetterSetter(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 54
    invoke-static {p2, v0}, Lstruct/StructData;->getGetterName([Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lstruct/StructFieldData;->setGetter(Ljava/lang/reflect/Method;)V

    .line 55
    invoke-static {p2, v0}, Lstruct/StructData;->getSetterName([Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lstruct/StructFieldData;->setSetter(Ljava/lang/reflect/Method;)V

    .line 56
    invoke-virtual {v1, v8}, Lstruct/StructFieldData;->setRequiresGetterSetter(Z)V

    .line 58
    :cond_6
    invoke-static {v0}, Lstruct/Constants;->getPrimitive(Ljava/lang/reflect/Field;)Lstruct/Constants$Primitive;

    move-result-object v6

    invoke-virtual {v1, v6}, Lstruct/StructFieldData;->setType(Lstruct/Constants$Primitive;)V

    .line 60
    iget-object v6, p0, Lstruct/StructData;->fieldDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private static final getGetterName([Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "methods"    # [Ljava/lang/reflect/Method;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "getterName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "is"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "booleanGetterName":Ljava/lang/String;
    array-length v6, p0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    array-length v5, p0

    :goto_1
    if-lt v4, v5, :cond_3

    .line 90
    :cond_0
    new-instance v4, Lstruct/StructException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The field needs a getter method, but none supplied. Field: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_1
    aget-object v2, p0, v5

    .line 79
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v2

    .line 86
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .local v3, "method":Ljava/lang/reflect/Method;
    :goto_2
    return-object v3

    .line 78
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_3
    aget-object v2, p0, v4

    .line 85
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v2

    .line 86
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 84
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static final getSetterName([Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "methods"    # [Ljava/lang/reflect/Method;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "setterName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 106
    new-instance v2, Lstruct/StructException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The field needs a setter method, but none supplied. Field: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    aget-object v2, p0, v0

    return-object v2

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFieldData(Ljava/lang/String;)Lstruct/StructFieldData;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lstruct/StructData;->fieldDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstruct/StructFieldData;

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lstruct/StructData;->fields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getLenghtedArray(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lstruct/StructData;->lengthedArrayFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lstruct/StructData;->methods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public isLenghtedArray(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 118
    iget-object v0, p0, Lstruct/StructData;->lengthedArrayFields:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
