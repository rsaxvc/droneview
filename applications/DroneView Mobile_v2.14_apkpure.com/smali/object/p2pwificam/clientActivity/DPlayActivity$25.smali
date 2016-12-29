.class Lobject/p2pwificam/clientActivity/DPlayActivity$25;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->show_setup_view()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x32

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1853
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$156(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1854
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$159(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1855
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$81(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1856
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$84(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1857
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$146(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$162(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1859
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$165(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1860
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$166(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1861
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$157(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1862
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$158(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1863
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$160(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1864
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$161(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1865
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$163(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1866
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$164(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1868
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getDefaultWiFiName()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, "WiFiName":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$154(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1871
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$154(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1874
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$147(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1876
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$140(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/easyview/camera/EVBaseCamera;->setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1877
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$142(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/easyview/camera/EVBaseCamera;->setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1878
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/easyview/camera/EVBaseCamera;->setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1879
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$25;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/easyview/camera/EVBaseCamera;->setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1880
    return-void
.end method
