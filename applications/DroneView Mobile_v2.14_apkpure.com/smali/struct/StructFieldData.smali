.class public Lstruct/StructFieldData;
.super Ljava/lang/Object;
.source "StructFieldData.java"


# instance fields
.field private arrayLengthMarker:Z

.field private field:Ljava/lang/reflect/Field;

.field private getter:Ljava/lang/reflect/Method;

.field private requiresGetterSetter:Z

.field private setter:Ljava/lang/reflect/Method;

.field private type:Lstruct/Constants$Primitive;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    .line 13
    iput-boolean v0, p0, Lstruct/StructFieldData;->arrayLengthMarker:Z

    .line 28
    iput-object p1, p0, Lstruct/StructFieldData;->field:Ljava/lang/reflect/Field;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;Lstruct/Constants$Primitive;ZLjava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "requiresGetterSetter"    # Z
    .param p3, "getter"    # Ljava/lang/reflect/Method;
    .param p4, "setter"    # Ljava/lang/reflect/Method;
    .param p5, "type"    # Lstruct/Constants$Primitive;
    .param p6, "isArrayLenghtMarker"    # Z
    .param p7, "lengthDefinedArray"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    .line 13
    iput-boolean v0, p0, Lstruct/StructFieldData;->arrayLengthMarker:Z

    .line 20
    iput-object p1, p0, Lstruct/StructFieldData;->field:Ljava/lang/reflect/Field;

    .line 21
    iput-boolean p2, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    .line 22
    iput-object p3, p0, Lstruct/StructFieldData;->getter:Ljava/lang/reflect/Method;

    .line 23
    iput-object p4, p0, Lstruct/StructFieldData;->setter:Ljava/lang/reflect/Method;

    .line 24
    iput-object p5, p0, Lstruct/StructFieldData;->type:Lstruct/Constants$Primitive;

    .line 25
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lstruct/StructFieldData;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getGetter()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lstruct/StructFieldData;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSetter()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lstruct/StructFieldData;->setter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getType()Lstruct/Constants$Primitive;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lstruct/StructFieldData;->type:Lstruct/Constants$Primitive;

    return-object v0
.end method

.method public isArrayLengthMarker()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lstruct/StructFieldData;->arrayLengthMarker:Z

    return v0
.end method

.method public isRequiresGetterSetter()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    return v0
.end method

.method public requiresGetterSetter()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    return v0
.end method

.method public setArrayLengthMarker(Z)V
    .locals 0
    .param p1, "arrayLengthMarker"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lstruct/StructFieldData;->arrayLengthMarker:Z

    .line 69
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 36
    iput-object p1, p0, Lstruct/StructFieldData;->field:Ljava/lang/reflect/Field;

    .line 37
    return-void
.end method

.method public setGetter(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "getter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 52
    iput-object p1, p0, Lstruct/StructFieldData;->getter:Ljava/lang/reflect/Method;

    .line 53
    return-void
.end method

.method public setRequiresGetterSetter(Z)V
    .locals 0
    .param p1, "requiresGetterSetter"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lstruct/StructFieldData;->requiresGetterSetter:Z

    .line 45
    return-void
.end method

.method public setSetter(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "setter"    # Ljava/lang/reflect/Method;

    .prologue
    .line 60
    iput-object p1, p0, Lstruct/StructFieldData;->setter:Ljava/lang/reflect/Method;

    .line 61
    return-void
.end method

.method public setType(Lstruct/Constants$Primitive;)V
    .locals 0
    .param p1, "type"    # Lstruct/Constants$Primitive;

    .prologue
    .line 76
    iput-object p1, p0, Lstruct/StructFieldData;->type:Lstruct/Constants$Primitive;

    .line 77
    return-void
.end method
