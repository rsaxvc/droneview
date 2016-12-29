.class Lcom/easyview/ppcs/PPCSCamera$1;
.super Ljava/lang/Object;
.source "PPCSCamera.java"

# interfaces
.implements Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/easyview/basecamera/ICameraSearchListener;


# direct methods
.method constructor <init>(Lcom/easyview/basecamera/ICameraSearchListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera$1;->val$listener:Lcom/easyview/basecamera/ICameraSearchListener;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    .line 120
    new-instance v0, Lcom/easyview/basecamera/CameraSearchInfo;

    invoke-direct {v0}, Lcom/easyview/basecamera/CameraSearchInfo;-><init>()V

    .line 121
    .local v0, "info":Lcom/easyview/basecamera/CameraSearchInfo;
    const/4 v1, 0x2

    iput v1, v0, Lcom/easyview/basecamera/CameraSearchInfo;->CameraType:I

    .line 122
    iput-object p4, v0, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    .line 123
    iput-object p5, v0, Lcom/easyview/basecamera/CameraSearchInfo;->IP:Ljava/lang/String;

    .line 124
    iput p6, v0, Lcom/easyview/basecamera/CameraSearchInfo;->port:I

    .line 125
    iput-object p3, v0, Lcom/easyview/basecamera/CameraSearchInfo;->deviceName:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/easyview/ppcs/PPCSCamera$1;->val$listener:Lcom/easyview/basecamera/ICameraSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/ppcs/PPCSCamera$1;->val$listener:Lcom/easyview/basecamera/ICameraSearchListener;

    invoke-interface {v1, v0}, Lcom/easyview/basecamera/ICameraSearchListener;->OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V

    .line 127
    :cond_0
    return-void
.end method
