.class public Lobject/p2pipcam/system/SystemValue;
.super Ljava/lang/Object;
.source "SystemValue.java"


# static fields
.field public static ISRUN:Z

.field public static NOTI:I

.field public static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pipcam/bean/CameraParamsBean;",
            ">;"
        }
    .end annotation
.end field

.field public static checkSDStatu:I

.field public static deviceId:Ljava/lang/String;

.field public static deviceName:Ljava/lang/String;

.field public static devicePass:Ljava/lang/String;

.field public static pictChange:I

.field public static usrName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    .line 16
    sput-object v2, Lobject/p2pipcam/system/SystemValue;->deviceName:Ljava/lang/String;

    .line 17
    sput-object v2, Lobject/p2pipcam/system/SystemValue;->usrName:Ljava/lang/String;

    .line 18
    sput-object v2, Lobject/p2pipcam/system/SystemValue;->devicePass:Ljava/lang/String;

    .line 19
    sput-object v2, Lobject/p2pipcam/system/SystemValue;->deviceId:Ljava/lang/String;

    .line 20
    sput v1, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 21
    sput v1, Lobject/p2pipcam/system/SystemValue;->pictChange:I

    .line 22
    sput v1, Lobject/p2pipcam/system/SystemValue;->NOTI:I

    .line 23
    sput-boolean v1, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
