.class public Lcom/easyview/tutk/QVRecordStruct;
.super Ljava/lang/Object;
.source "QVRecordStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public PackTime:B
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public RecordMode:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public bRecAudio:B
    .annotation runtime Lstruct/StructField;
        order = 0x7
    .end annotation
.end field

.field public bSaveFlash:B
    .annotation runtime Lstruct/StructField;
        order = 0x8
    .end annotation
.end field

.field public chn:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public enable:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public hour:[B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public load:I

.field public reserver:[B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xbc

    sput v0, Lcom/easyview/tutk/QVRecordStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xa8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVRecordStruct;->hour:[B

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVRecordStruct;->reserver:[B

    .line 7
    return-void
.end method
