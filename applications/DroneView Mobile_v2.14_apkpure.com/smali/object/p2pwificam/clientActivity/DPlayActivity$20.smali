.class Lobject/p2pwificam/clientActivity/DPlayActivity$20;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1800
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$159(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1801
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$142(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/easyview/camera/EVBaseCamera;->setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1802
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$160(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$161(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1804
    return-void
.end method
