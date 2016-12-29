.class public Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LCDCtrlParam"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x80


# instance fields
.field public cmd:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public text:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x7c

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;->text:Lstruct/CString;

    .line 514
    return-void
.end method
