.class public Lcom/easyview/tutk/EventReportStruct;
.super Ljava/lang/Object;
.source "EventReportStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public channel:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public event:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public stTime:Lcom/easyview/tutk/DateTimeStruct;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public time:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public value:I
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/easyview/tutk/DateTimeStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/DateTimeStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/EventReportStruct;->stTime:Lcom/easyview/tutk/DateTimeStruct;

    .line 7
    return-void
.end method
