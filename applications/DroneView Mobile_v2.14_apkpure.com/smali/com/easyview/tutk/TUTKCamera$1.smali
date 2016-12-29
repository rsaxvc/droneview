.class Lcom/easyview/tutk/TUTKCamera$1;
.super Ljava/lang/Object;
.source "TUTKCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyview/tutk/TUTKCamera;->ptzControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/tutk/TUTKCamera;


# direct methods
.method constructor <init>(Lcom/easyview/tutk/TUTKCamera;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera$1;->this$0:Lcom/easyview/tutk/TUTKCamera;

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 831
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 832
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/PTZControlStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/PTZControlStruct;-><init>()V

    .line 833
    .local v2, "s":Lcom/easyview/tutk/PTZControlStruct;
    iput-byte v4, v2, Lcom/easyview/tutk/PTZControlStruct;->control:B

    .line 834
    const/16 v3, 0x8

    iput-byte v3, v2, Lcom/easyview/tutk/PTZControlStruct;->speed:B

    .line 836
    :try_start_0
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 837
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera$1;->this$0:Lcom/easyview/tutk/TUTKCamera;

    # getter for: Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;
    invoke-static {v3}, Lcom/easyview/tutk/TUTKCamera;->access$0(Lcom/easyview/tutk/TUTKCamera;)Lcom/tutk/IOTC/Camera;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method
