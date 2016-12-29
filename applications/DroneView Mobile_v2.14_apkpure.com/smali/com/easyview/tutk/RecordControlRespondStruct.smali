.class public Lcom/easyview/tutk/RecordControlRespondStruct;
.super Ljava/lang/Object;
.source "RecordControlRespondStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public command:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public reserved:[B
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
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/RecordControlRespondStruct;->reserved:[B

    .line 7
    return-void
.end method
