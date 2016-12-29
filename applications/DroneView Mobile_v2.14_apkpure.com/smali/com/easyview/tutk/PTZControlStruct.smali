.class public Lcom/easyview/tutk/PTZControlStruct;
.super Ljava/lang/Object;
.source "PTZControlStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public aux:B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public channel:B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public control:B
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public limit:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public point:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public reserve:[B
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public speed:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/PTZControlStruct;->reserve:[B

    .line 7
    return-void
.end method
