.class public Lcom/easyview/tutk/TimeZoneStruct;
.super Ljava/lang/Object;
.source "TimeZoneStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public cbSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public nGMTDiff:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public nIsSupportTimeZone:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public szTimeZone:[B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/TimeZoneStruct;->szTimeZone:[B

    .line 6
    return-void
.end method
