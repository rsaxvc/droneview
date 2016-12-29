.class public Lcom/easyview/tutk/SimpleRespondStruct;
.super Ljava/lang/Object;
.source "SimpleRespondStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public reserved:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public result:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
