.class public Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVCommonResp"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x20


# instance fields
.field public command:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public data0:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public data1:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public data2:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public data3:I
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public data4:I
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public data5:I
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public data6:I
    .annotation runtime Lstruct/StructField;
        order = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
