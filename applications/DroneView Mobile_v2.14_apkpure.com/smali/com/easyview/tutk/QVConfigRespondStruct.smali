.class public Lcom/easyview/tutk/QVConfigRespondStruct;
.super Ljava/lang/Object;
.source "QVConfigRespondStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public cmd:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public datasize:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public result:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
