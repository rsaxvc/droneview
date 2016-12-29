.class public Lcom/easyview/struct/EVCommandDefs$DeviceParams;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceParams"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x90


# instance fields
.field public DefaultName:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public WiFiName:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public brightness:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public contrast:I
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public date_code:S
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public flag:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public rotate:S
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->WiFiName:Lstruct/CString;

    .line 405
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->DefaultName:Lstruct/CString;

    .line 389
    return-void
.end method
