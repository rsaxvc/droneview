.class public Lcom/easyview/tutk/FrameInfoStruct;
.super Ljava/lang/Object;
.source "FrameInfoStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public cam_index:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public codec_id:S
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public flags:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public onlineNum:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public reserve1:[B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public reserve2:I
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public timestamp:I
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/FrameInfoStruct;->reserve1:[B

    .line 7
    return-void
.end method
