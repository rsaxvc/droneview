.class public Lcom/easyview/struct/EVCommandDefs$IOSwitchParams;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOSwitchParams"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0xa0


# instance fields
.field public params:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$IOSwitchParams;->params:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    .line 482
    return-void
.end method
