.class public Lcom/easyview/tutk/WifiSettingStruct;
.super Ljava/lang/Object;
.source "WifiSettingStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public enctype:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public mode:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public password:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public reserved:[B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public ssid:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/WifiSettingStruct;->ssid:Lstruct/CString;

    .line 12
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/WifiSettingStruct;->password:Lstruct/CString;

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/WifiSettingStruct;->reserved:[B

    .line 8
    return-void
.end method
