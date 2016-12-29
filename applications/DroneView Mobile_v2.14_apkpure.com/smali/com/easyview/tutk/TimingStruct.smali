.class public Lcom/easyview/tutk/TimingStruct;
.super Ljava/lang/Object;
.source "TimingStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x10


# instance fields
.field public channel:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public reserved:[B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public size:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public time:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/TimingStruct;->reserved:[B

    .line 6
    return-void
.end method
