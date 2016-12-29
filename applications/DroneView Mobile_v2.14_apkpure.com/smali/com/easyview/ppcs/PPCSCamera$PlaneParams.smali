.class public Lcom/easyview/ppcs/PPCSCamera$PlaneParams;
.super Ljava/lang/Object;
.source "PPCSCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/ppcs/PPCSCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaneParams"
.end annotation

.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public DefaultName:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public WiFiName:Lstruct/CString;
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public showDate:I
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->WiFiName:Lstruct/CString;

    .line 72
    new-instance v0, Lstruct/CString;

    invoke-direct {v0, v1}, Lstruct/CString;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->DefaultName:Lstruct/CString;

    .line 68
    return-void
.end method
