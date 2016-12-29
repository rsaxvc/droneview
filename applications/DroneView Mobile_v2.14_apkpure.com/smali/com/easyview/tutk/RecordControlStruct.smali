.class public Lcom/easyview/tutk/RecordControlStruct;
.super Ljava/lang/Object;
.source "RecordControlStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final RECORD_DEL:I = 0x11

.field public static final RECORD_DOWNLOAD:I = 0x12

.field public static final RECORD_PLAY_BACKWARD:I = 0x5

.field public static final RECORD_PLAY_END:I = 0x7

.field public static final RECORD_PLAY_FORWARD:I = 0x4

.field public static final RECORD_PLAY_PAUSE:I = 0x0

.field public static final RECORD_PLAY_SEEKTIME:I = 0x6

.field public static final RECORD_PLAY_START:I = 0x10

.field public static final RECORD_PLAY_STEPBACKWARD:I = 0x3

.field public static final RECORD_PLAY_STEPFORWARD:I = 0x2

.field public static final RECORD_PLAY_STOP:I = 0x1


# instance fields
.field public Param:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public channel:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public command:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public reserved:[B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public stTimeDay:Lcom/easyview/tutk/DateTimeStruct;
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/easyview/tutk/DateTimeStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/DateTimeStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/RecordControlStruct;->stTimeDay:Lcom/easyview/tutk/DateTimeStruct;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/RecordControlStruct;->reserved:[B

    .line 7
    return-void
.end method
