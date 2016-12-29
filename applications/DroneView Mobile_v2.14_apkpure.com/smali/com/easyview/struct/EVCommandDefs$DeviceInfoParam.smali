.class public Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfoParam"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final struct_size:I = 0x24


# instance fields
.field public DeviceVersion:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public UpgradeVersion:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public have_upgrade:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;->DeviceVersion:Lstruct/CString;

    .line 510
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;->UpgradeVersion:Lstruct/CString;

    .line 502
    return-void
.end method
