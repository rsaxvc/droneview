.class public Lcom/easyview/tutk/QVServerTimeStruct;
.super Ljava/lang/Object;
.source "QVServerTimeStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public DateMode:B
    .annotation runtime Lstruct/StructField;
        order = 0x7
    .end annotation
.end field

.field public Dst:B
    .annotation runtime Lstruct/StructField;
        order = 0xc
    .end annotation
.end field

.field public DstMode:B
    .annotation runtime Lstruct/StructField;
        order = 0xd
    .end annotation
.end field

.field public EndHour:B
    .annotation runtime Lstruct/StructField;
        order = 0x13
    .end annotation
.end field

.field public EndMonth:B
    .annotation runtime Lstruct/StructField;
        order = 0x11
    .end annotation
.end field

.field public EndWeek:B
    .annotation runtime Lstruct/StructField;
        order = 0x10
    .end annotation
.end field

.field public LockGUITime:B
    .annotation runtime Lstruct/StructField;
        order = 0x16
    .end annotation
.end field

.field public MenuAutoExitTime:B
    .annotation runtime Lstruct/StructField;
        order = 0x15
    .end annotation
.end field

.field public Offset:B
    .annotation runtime Lstruct/StructField;
        order = 0x14
    .end annotation
.end field

.field public StartHour:B
    .annotation runtime Lstruct/StructField;
        order = 0x12
    .end annotation
.end field

.field public StartMonth:B
    .annotation runtime Lstruct/StructField;
        order = 0xf
    .end annotation
.end field

.field public StartWeek:B
    .annotation runtime Lstruct/StructField;
        order = 0xe
    .end annotation
.end field

.field public TimeMode:B
    .annotation runtime Lstruct/StructField;
        order = 0x8
    .end annotation
.end field

.field public bSaveFlash:B
    .annotation runtime Lstruct/StructField;
        order = 0x17
    .end annotation
.end field

.field public bdstmode:B
    .annotation runtime Lstruct/StructField;
        order = 0x9
    .end annotation
.end field

.field public citytimezone:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0xb
    .end annotation
.end field

.field public day:I
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public hour:I
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public minute:I
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public month:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public second:I
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public timezone:B
    .annotation runtime Lstruct/StructField;
        order = 0xa
    .end annotation
.end field

.field public year:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x4c

    sput v0, Lcom/easyview/tutk/QVServerTimeStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lstruct/CString;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/tutk/QVServerTimeStruct;->citytimezone:Lstruct/CString;

    .line 8
    return-void
.end method
