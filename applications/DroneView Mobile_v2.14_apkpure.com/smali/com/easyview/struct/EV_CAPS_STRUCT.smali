.class public Lcom/easyview/struct/EV_CAPS_STRUCT;
.super Ljava/lang/Object;
.source "EV_CAPS_STRUCT.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public caps:[B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public size:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/struct/EV_CAPS_STRUCT;->caps:[B

    .line 7
    return-void
.end method
