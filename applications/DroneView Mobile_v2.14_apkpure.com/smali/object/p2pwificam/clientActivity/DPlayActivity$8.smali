.class Lobject/p2pwificam/clientActivity/DPlayActivity$8;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1540
    .local v1, "t":J
    const/4 v0, 0x0

    .line 1541
    .local v0, "m":Z
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_Time:J
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$77(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1543
    const-string v3, "Drone"

    const-string v4, "onProgressChanged %d -> %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_Time:J
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$77(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v0, 0x1

    .line 1545
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$78(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1547
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    const v4, 0x7f0800c5

    if-ne v3, v4, :cond_2

    .line 1549
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1551
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    neg-int v4, p2

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$79(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1553
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$80(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1554
    if-eqz v0, :cond_2

    .line 1556
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1557
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3, p2, v9}, Lcom/easyview/camera/EVBaseCamera;->setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1560
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    const v4, 0x7f0800c6

    if-ne v3, v4, :cond_4

    .line 1562
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1564
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    neg-int v4, p2

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$82(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1566
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$83(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1567
    if-eqz v0, :cond_4

    .line 1569
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v3, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$84(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1570
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3, p2, v9}, Lcom/easyview/camera/EVBaseCamera;->setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1573
    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1577
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$80(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1578
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$83(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1579
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$78(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1580
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 1584
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_brightness:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1586
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_brightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1587
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1589
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_contrast:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$88(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1591
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_contrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$88(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$84(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1592
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1594
    :cond_1
    return-void
.end method
