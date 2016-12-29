.class public Lcom/easyview/tutk/QVMailStruct;
.super Ljava/lang/Object;
.source "QVMailStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public attachment:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0xa
    .end annotation
.end field

.field public bEnableEmail:I
    .annotation runtime Lstruct/StructField;
        order = 0xb
    .end annotation
.end field

.field public bSaveFlash:B
    .annotation runtime Lstruct/StructField;
        order = 0x10
    .end annotation
.end field

.field public csEMailUser:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public csEmailFrom:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public csEmailPass:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public csEmailServer:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public csEmailTo0:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public csEmailTo1:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public csEmailTo2:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x7
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public intervaltime:B
    .annotation runtime Lstruct/StructField;
        order = 0xf
    .end annotation
.end field

.field public logintype:B
    .annotation runtime Lstruct/StructField;
        order = 0xe
    .end annotation
.end field

.field public port:I
    .annotation runtime Lstruct/StructField;
        order = 0xc
    .end annotation
.end field

.field public ssl:B
    .annotation runtime Lstruct/StructField;
        order = 0xd
    .end annotation
.end field

.field public subject:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x8
    .end annotation
.end field

.field public text:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x1b0

    sput v0, Lcom/easyview/tutk/QVMailStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailServer:Lstruct/CString;

    .line 15
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEMailUser:Lstruct/CString;

    .line 17
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailPass:Lstruct/CString;

    .line 19
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailFrom:Lstruct/CString;

    .line 21
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailTo0:Lstruct/CString;

    .line 23
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailTo1:Lstruct/CString;

    .line 25
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->csEmailTo2:Lstruct/CString;

    .line 27
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->subject:Lstruct/CString;

    .line 29
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->text:Lstruct/CString;

    .line 31
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v2}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVMailStruct;->attachment:Lstruct/CString;

    .line 8
    return-void
.end method
