.class Lobject/p2pwificam/clientActivity/DronePlayActivity$17;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1388
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$103(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1389
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nFlip:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$104(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    and-int/lit8 v0, v1, 0x3

    .line 1390
    .local v0, "val":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$87(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1392
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1393
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$106(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1394
    return-void
.end method
