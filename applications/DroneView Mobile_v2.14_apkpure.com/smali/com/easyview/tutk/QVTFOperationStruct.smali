.class public Lcom/easyview/tutk/QVTFOperationStruct;
.super Ljava/lang/Object;
.source "QVTFOperationStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public chn:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public opt:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public reserve:[B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xc

    sput v0, Lcom/easyview/tutk/QVTFOperationStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVTFOperationStruct;->reserve:[B

    .line 7
    return-void
.end method
