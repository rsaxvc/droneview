.class public Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera$IOCtrlQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IOCtrlSet"
.end annotation


# instance fields
.field public IOCtrlBuf:[B

.field public IOCtrlType:I

.field final synthetic this$1:Lcom/tutk/IOTC/Camera$IOCtrlQueue;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera$IOCtrlQueue;II[B)V
    .locals 0
    .param p2, "avIndex"    # I
    .param p3, "type"    # I
    .param p4, "buf"    # [B

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->this$1:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2886
    iput p3, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlType:I

    .line 2887
    iput-object p4, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    .line 2888
    return-void
.end method

.method public constructor <init>(Lcom/tutk/IOTC/Camera$IOCtrlQueue;I[B)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->this$1:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2891
    iput p2, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlType:I

    .line 2892
    iput-object p3, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    .line 2893
    return-void
.end method
