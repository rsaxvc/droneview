.class public Lcom/easyview/ndt/NDTService$NDTEvent;
.super Ljava/lang/Object;
.source "NDTService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ndt/NDTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NDTEvent"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x10


# instance fields
.field public event_index:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public event_time:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public event_type:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public event_value:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
