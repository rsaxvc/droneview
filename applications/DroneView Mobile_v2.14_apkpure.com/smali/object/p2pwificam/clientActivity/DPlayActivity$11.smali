.class Lobject/p2pwificam/clientActivity/DPlayActivity$11;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 2091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2094
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$98(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2098
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$112(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, -0xff6421

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2099
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$112(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2100
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$113(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->onYUVData:Lcom/easyview/basecamera/ICamera$IYUVDataListener;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$114(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V

    goto :goto_0

    .line 2105
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->StopVideo()V

    .line 2106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$112(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, -0x7fff6421

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2107
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$112(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2108
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$113(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    goto :goto_0
.end method
