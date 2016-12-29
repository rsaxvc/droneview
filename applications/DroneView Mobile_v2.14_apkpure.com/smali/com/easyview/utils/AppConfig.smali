.class public Lcom/easyview/utils/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final isSupportBPush:Z = false

.field public static final isSupportBabyCam:Z = false

.field public static final isSupportBiVoice:Z = false

.field public static final isSupportCalloffButton:Z = false

.field public static final isSupportDebug:Z = false

.field public static final isSupportDrone:Z = true

.field public static final isSupportFPV:Z

.field public static final isSupportIOSwitch:Z

.field public static final isSupportLCDCtrl:Z

.field public static final isSupportLight:Z

.field public static final isSupportMU:Z

.field public static final isSupportMainMenu:Z

.field public static final isSupportNDT:Z

.field public static final isSupportServiceNDT:Z

.field public static final isSupportTUTK:Z

.field public static final isSupportTest:Z

.field public static final isSupportXGPush:Z


# instance fields
.field __isSupportBPush:Z

.field __isSupportBabyCam:Z

.field __isSupportBiVoice:Z

.field __isSupportCalloffButton:Z

.field __isSupportDebug:Z

.field __isSupportDrone:Z

.field __isSupportFPV:Z

.field __isSupportIOSwitch:Z

.field __isSupportLCDCtrl:Z

.field __isSupportLight:Z

.field __isSupportMU:Z

.field __isSupportMainMenu:Z

.field __isSupportNDT:Z

.field __isSupportServiceNDT:Z

.field __isSupportTUTK:Z

.field __isSupportTest:Z

.field __isSupportXGPush:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportDebug:Z

    .line 7
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportMainMenu:Z

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/utils/AppConfig;->__isSupportTUTK:Z

    .line 9
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportBiVoice:Z

    .line 10
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportDrone:Z

    .line 11
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportFPV:Z

    .line 12
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportCalloffButton:Z

    .line 13
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportTest:Z

    .line 14
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportIOSwitch:Z

    .line 15
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportXGPush:Z

    .line 16
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportNDT:Z

    .line 17
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportMU:Z

    .line 18
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportLight:Z

    .line 19
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportBabyCam:Z

    .line 20
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportServiceNDT:Z

    .line 21
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportLCDCtrl:Z

    .line 22
    iput-boolean v1, p0, Lcom/easyview/utils/AppConfig;->__isSupportBPush:Z

    .line 3
    return-void
.end method
