.class public Lstruct/StructUtils;
.super Ljava/lang/Object;
.source "StructUtils.java"


# static fields
.field private static structInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lstruct/StructData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lstruct/StructUtils;->structInfoCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getStructInfo(Ljava/lang/Object;)Lstruct/StructData;
    .locals 14
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 21
    const-class v11, Lstruct/StructUtils;

    monitor-enter v11

    :try_start_0
    sget-object v10, Lstruct/StructUtils;->structInfoCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lstruct/StructData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .local v4, "info":Lstruct/StructData;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 52
    .end local v4    # "info":Lstruct/StructData;
    .local v5, "info":Ljava/lang/Object;
    :goto_0
    monitor-exit v11

    return-object v5

    .line 26
    .end local v5    # "info":Ljava/lang/Object;
    .restart local v4    # "info":Lstruct/StructData;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v12, Lstruct/StructClass;

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 27
    invoke-static {p0}, Lstruct/StructUtils;->isAccessible(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 29
    .local v1, "annotatedFields":[Ljava/lang/reflect/Field;
    array-length v10, v1

    new-array v9, v10, [Ljava/lang/reflect/Field;

    .line 30
    .local v9, "tmpStructFields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 31
    .local v0, "annotatedFieldCount":I
    array-length v12, v1

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v12, :cond_1

    .line 42
    new-array v8, v0, [Ljava/lang/reflect/Field;

    .line 44
    .local v8, "structFields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v0, :cond_5

    .line 50
    new-instance v4, Lstruct/StructData;

    .end local v4    # "info":Lstruct/StructData;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-direct {v4, v8, v10}, Lstruct/StructData;-><init>([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)V

    .line 51
    .restart local v4    # "info":Lstruct/StructData;
    sget-object v10, Lstruct/StructUtils;->structInfoCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 52
    .restart local v5    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 31
    .end local v3    # "i":I
    .end local v5    # "info":Ljava/lang/Object;
    .end local v8    # "structFields":[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v2, v1, v10

    .line 32
    .local v2, "f":Ljava/lang/reflect/Field;
    const-class v13, Lstruct/StructField;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lstruct/StructField;

    .line 33
    .local v7, "sf":Lstruct/StructField;
    if-eqz v7, :cond_4

    .line 34
    invoke-interface {v7}, Lstruct/StructField;->order()I

    move-result v6

    .line 35
    .local v6, "order":I
    if-ltz v6, :cond_2

    array-length v13, v1

    if-lt v6, v13, :cond_3

    .line 36
    :cond_2
    new-instance v10, Lstruct/StructException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Order is illegal for StructField : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .end local v0    # "annotatedFieldCount":I
    .end local v1    # "annotatedFields":[Ljava/lang/reflect/Field;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "info":Lstruct/StructData;
    .end local v6    # "order":I
    .end local v7    # "sf":Lstruct/StructField;
    .end local v9    # "tmpStructFields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 38
    .restart local v0    # "annotatedFieldCount":I
    .restart local v1    # "annotatedFields":[Ljava/lang/reflect/Field;
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "info":Lstruct/StructData;
    .restart local v6    # "order":I
    .restart local v7    # "sf":Lstruct/StructField;
    .restart local v9    # "tmpStructFields":[Ljava/lang/reflect/Field;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 39
    :try_start_2
    aput-object v2, v9, v6

    .line 31
    .end local v6    # "order":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 45
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "sf":Lstruct/StructField;
    .restart local v3    # "i":I
    .restart local v8    # "structFields":[Ljava/lang/reflect/Field;
    :cond_5
    aget-object v10, v9, v3

    if-nez v10, :cond_6

    .line 46
    new-instance v10, Lstruct/StructException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Order error for annotated fields! : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 48
    :cond_6
    aget-object v10, v9, v3

    aput-object v10, v8, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 54
    .end local v0    # "annotatedFieldCount":I
    .end local v1    # "annotatedFields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v8    # "structFields":[Ljava/lang/reflect/Field;
    .end local v9    # "tmpStructFields":[Ljava/lang/reflect/Field;
    :cond_7
    new-instance v10, Lstruct/StructException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "No struct Annotation found for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static isAccessible(Ljava/lang/Object;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 65
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lstruct/StructException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Struct operations are only accessible for public classes. Class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    and-int/lit16 v1, v0, 0x600

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lstruct/StructException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Struct operations are not accessible for abstract classes and interfaces. Class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lstruct/StructException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    return-void
.end method

.method public static requiresGetterSetter(I)Z
    .locals 1
    .param p0, "modifier"    # I

    .prologue
    .line 77
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
