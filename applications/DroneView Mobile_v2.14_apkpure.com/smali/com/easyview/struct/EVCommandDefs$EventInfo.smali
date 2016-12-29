.class public Lcom/easyview/struct/EVCommandDefs$EventInfo;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0xc


# instance fields
.field public file_id:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public index:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
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
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
