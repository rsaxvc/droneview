.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

.field private final synthetic val$data:[I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->val$data:[I

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 399
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->val$data:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 401
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->val$data:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->delEvents([ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->delSelected()V

    .line 404
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_edit:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$20(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_delete:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$21(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_export:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$22(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->button_cancel:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$23(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->adapter:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$24(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->setCanSel(Z)V

    .line 409
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$1;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    return-void
.end method
