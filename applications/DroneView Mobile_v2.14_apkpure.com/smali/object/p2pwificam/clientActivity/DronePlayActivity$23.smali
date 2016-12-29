.class Lobject/p2pwificam/clientActivity/DronePlayActivity$23;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->show_setup_view()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x32

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1454
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$103(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1455
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$107(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1456
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1457
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$37(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1458
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$110(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1460
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$113(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1461
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$114(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1462
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1463
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$106(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1464
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$108(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1465
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$109(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1466
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$111(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1467
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$112(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1469
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v1, v1, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->DefaultName:Lstruct/CString;

    invoke-virtual {v1}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, "WiFiName":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1475
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1478
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25d

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1479
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1480
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1481
    return-void
.end method
