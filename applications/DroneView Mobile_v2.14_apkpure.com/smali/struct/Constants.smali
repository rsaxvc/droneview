.class public Lstruct/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstruct/Constants$Primitive;
    }
.end annotation


# static fields
.field private static primitiveTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lstruct/Constants$Primitive;",
            ">;"
        }
    .end annotation
.end field

.field private static signatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lstruct/Constants$Primitive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lstruct/Constants;->primitiveTypes:Ljava/util/HashMap;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lstruct/Constants;->signatures:Ljava/util/HashMap;

    .line 33
    invoke-static {}, Lstruct/Constants$Primitive;->values()[Lstruct/Constants$Primitive;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, "p":Lstruct/Constants$Primitive;
    :goto_0
    if-lt v1, v3, :cond_0

    .line 37
    return-void

    .line 33
    :cond_0
    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lstruct/Constants;->primitiveTypes:Ljava/util/HashMap;

    iget-object v5, v0, Lstruct/Constants$Primitive;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v4, Lstruct/Constants;->signatures:Ljava/util/HashMap;

    iget-char v5, v0, Lstruct/Constants$Primitive;->signature:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPrimitive(C)Lstruct/Constants$Primitive;
    .locals 3
    .param p0, "signature"    # C

    .prologue
    .line 53
    sget-object v1, Lstruct/Constants;->signatures:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstruct/Constants$Primitive;

    .line 54
    .local v0, "p":Lstruct/Constants$Primitive;
    if-eqz v0, :cond_0

    .end local v0    # "p":Lstruct/Constants$Primitive;
    :goto_0
    return-object v0

    .restart local v0    # "p":Lstruct/Constants$Primitive;
    :cond_0
    sget-object v0, Lstruct/Constants$Primitive;->OBJECT:Lstruct/Constants$Primitive;

    goto :goto_0
.end method

.method public static final getPrimitive(Ljava/lang/String;)Lstruct/Constants$Primitive;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v1, Lstruct/Constants;->primitiveTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstruct/Constants$Primitive;

    .line 49
    .local v0, "p":Lstruct/Constants$Primitive;
    if-eqz v0, :cond_0

    .end local v0    # "p":Lstruct/Constants$Primitive;
    :goto_0
    return-object v0

    .restart local v0    # "p":Lstruct/Constants$Primitive;
    :cond_0
    sget-object v0, Lstruct/Constants$Primitive;->OBJECT:Lstruct/Constants$Primitive;

    goto :goto_0
.end method

.method public static final getPrimitive(Ljava/lang/reflect/Field;)Lstruct/Constants$Primitive;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lstruct/Constants;->getPrimitive(Ljava/lang/String;)Lstruct/Constants$Primitive;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lstruct/Constants;->getPrimitive(C)Lstruct/Constants$Primitive;

    move-result-object v0

    goto :goto_0
.end method
