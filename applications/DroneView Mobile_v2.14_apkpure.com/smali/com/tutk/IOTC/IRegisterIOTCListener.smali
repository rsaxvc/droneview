.class public interface abstract Lcom/tutk/IOTC/IRegisterIOTCListener;
.super Ljava/lang/Object;
.source "IRegisterIOTCListener.java"


# virtual methods
.method public abstract receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V
.end method

.method public abstract receiveFrameData(Lcom/tutk/IOTC/Camera;ILandroid/graphics/Bitmap;)V
.end method

.method public abstract receiveFrameInfo(Lcom/tutk/IOTC/Camera;IJIIII)V
.end method

.method public abstract receiveIOCtrlData(Lcom/tutk/IOTC/Camera;II[B)V
.end method

.method public abstract receiveOriginalFrameData(Lcom/tutk/IOTC/Camera;I[BI[BI)V
.end method

.method public abstract receiveRGBData(Lcom/tutk/IOTC/Camera;I[BII)V
.end method

.method public abstract receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V
.end method
