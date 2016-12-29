.class public Lcom/easyview/tutk/WifiAPStruct;
.super Ljava/lang/Object;
.source "WifiAPStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public enctype:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public mode:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public signal:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public ssid:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public status:B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/WifiAPStruct;->ssid:Lstruct/CString;

    .line 8
    return-void
.end method
