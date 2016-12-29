.class Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    .line 1695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1698
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$149(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1699
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$139(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/easyview/camera/EVBaseCamera;->setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1702
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$141(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/easyview/camera/EVBaseCamera;->setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1703
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$143(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/easyview/camera/EVBaseCamera;->setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1704
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$144(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/easyview/camera/EVBaseCamera;->setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1706
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$103(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$130(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1711
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$22(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1712
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$17$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$17;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1715
    return-void
.end method
