.class public Lcom/easyview/tutk/EventStruct;
.super Ljava/lang/Object;
.source "EventStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public event:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public reserved:[B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public stTime:Lcom/easyview/tutk/DateTimeStruct;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public status:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/EventStruct;->reserved:[B

    .line 7
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/easyview/tutk/EventStruct;->stTime:Lcom/easyview/tutk/DateTimeStruct;

    invoke-virtual {v0}, Lcom/easyview/tutk/DateTimeStruct;->getLocalTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
