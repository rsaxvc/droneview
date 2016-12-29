.class public Lcom/easyview/tutk/QVDiskStateStruct;
.super Ljava/lang/Object;
.source "QVDiskStateStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public DISKFreeRecord:[J
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public DISKFreeSize:[J
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public DISKState:[B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public DISKTotalSize:[J
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public load:I

.field public rev:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xd0

    sput v0, Lcom/easyview/tutk/QVDiskStateStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVDiskStateStruct;->DISKState:[B

    .line 16
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/easyview/tutk/QVDiskStateStruct;->DISKTotalSize:[J

    .line 18
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/easyview/tutk/QVDiskStateStruct;->DISKFreeSize:[J

    .line 20
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/easyview/tutk/QVDiskStateStruct;->DISKFreeRecord:[J

    .line 7
    return-void
.end method
