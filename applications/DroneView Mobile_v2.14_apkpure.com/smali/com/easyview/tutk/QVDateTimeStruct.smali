.class public Lcom/easyview/tutk/QVDateTimeStruct;
.super Ljava/lang/Object;
.source "QVDateTimeStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public bSaveFlash:I
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public set_mask:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public timezone:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public utc_time:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x14

    sput v0, Lcom/easyview/tutk/QVDateTimeStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
