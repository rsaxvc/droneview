.class Lobject/p2pwificam/clientActivity/DronePlayActivity$19;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1409
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$107(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1410
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25d

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1411
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$108(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$109(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1413
    return-void
.end method
