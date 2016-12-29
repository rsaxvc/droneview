.class public Lcom/easyview/struct/EVCommandDefs$ExtInfos;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtInfos"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x54


# instance fields
.field public count:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public values:[Lcom/easyview/struct/EVCommandDefs$ExtInfo;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$ExtInfos;->values:[Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    .line 336
    return-void
.end method
