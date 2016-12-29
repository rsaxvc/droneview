.class public Lcom/easyview/struct/EVCommandDefs$ExtThresholds;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtThresholds"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x7c


# instance fields
.field public count:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    .line 356
    return-void
.end method
