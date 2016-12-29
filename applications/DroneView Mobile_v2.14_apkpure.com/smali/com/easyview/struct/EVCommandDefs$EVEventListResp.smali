.class public Lcom/easyview/struct/EVCommandDefs$EVEventListResp;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVEventListResp"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x8


# instance fields
.field public count:S
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public endflag:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public index:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public total:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
