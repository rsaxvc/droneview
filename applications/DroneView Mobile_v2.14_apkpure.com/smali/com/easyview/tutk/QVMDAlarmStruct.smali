.class public Lcom/easyview/tutk/QVMDAlarmStruct;
.super Ljava/lang/Object;
.source "QVMDAlarmStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static struct_size:I


# instance fields
.field public RegionSetting:[B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public Sensitive:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public bAlarmOut:B
    .annotation runtime Lstruct/StructField;
        order = 0x9
    .end annotation
.end field

.field public bBuzzerMoo:B
    .annotation runtime Lstruct/StructField;
        order = 0x8
    .end annotation
.end field

.field public bESMS:B
    .annotation runtime Lstruct/StructField;
        order = 0x10
    .end annotation
.end field

.field public bEnable:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public bFTP:B
    .annotation runtime Lstruct/StructField;
        order = 0xf
    .end annotation
.end field

.field public bFullSreen:B
    .annotation runtime Lstruct/StructField;
        order = 0x11
    .end annotation
.end field

.field public bPreRecord:B
    .annotation runtime Lstruct/StructField;
        order = 0xb
    .end annotation
.end field

.field public bPtzMove:B
    .annotation runtime Lstruct/StructField;
        order = 0xd
    .end annotation
.end field

.field public bRecord:[B
    .annotation runtime Lstruct/StructField;
        order = 0xa
    .end annotation
.end field

.field public bSAD:B
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public bSaveFlash:B
    .annotation runtime Lstruct/StructField;
        order = 0x13
    .end annotation
.end field

.field public bSendCenter:B
    .annotation runtime Lstruct/StructField;
        order = 0x12
    .end annotation
.end field

.field public bSendEmail:B
    .annotation runtime Lstruct/StructField;
        order = 0xe
    .end annotation
.end field

.field public bShotSnap:B
    .annotation runtime Lstruct/StructField;
        order = 0xc
    .end annotation
.end field

.field public chn:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public dwSize:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public hour:[B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public reserver:[B
    .annotation runtime Lstruct/StructField;
        order = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xf4

    sput v0, Lcom/easyview/tutk/QVMDAlarmStruct;->struct_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVMDAlarmStruct;->RegionSetting:[B

    .line 20
    const/16 v0, 0xa8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVMDAlarmStruct;->hour:[B

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVMDAlarmStruct;->reserver:[B

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/QVMDAlarmStruct;->bRecord:[B

    .line 7
    return-void
.end method
