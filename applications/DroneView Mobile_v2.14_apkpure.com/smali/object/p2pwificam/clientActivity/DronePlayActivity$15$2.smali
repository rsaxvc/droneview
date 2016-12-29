.class Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 1297
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$96(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 1298
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v1

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$86(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1301
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25d

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$88(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1302
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$90(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1303
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$91(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1305
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$56(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$75(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$15$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$15;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1312
    return-void
.end method
