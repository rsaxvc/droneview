.class Lobject/p2pwificam/clientActivity/LightActivity$1;
.super Ljava/lang/Object;
.source "LightActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/LightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LightActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 142
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f080140

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$0(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v1, 0x7f080143

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$1(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 148
    :cond_1
    const-string v0, "LightActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LightSeekBar onStopTrackingTouch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/LightActivity;->access$2(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/LightActivity;->access$3(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$4(Lobject/p2pwificam/clientActivity/LightActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$4(Lobject/p2pwificam/clientActivity/LightActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_white_value:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/LightActivity;->access$2(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/LightActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->light_yellow_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/LightActivity;->access$3(Lobject/p2pwificam/clientActivity/LightActivity;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easyview/basecamera/BaseCamera;->setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 150
    :cond_2
    return-void
.end method
