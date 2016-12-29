.class Lobject/p2pwificam/clientActivity/DronePlayActivity$18;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1399
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$107(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1400
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nFlip:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$104(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    and-int/lit8 v0, v1, 0x2

    .line 1401
    .local v0, "val":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25d

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1402
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$108(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1403
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$109(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1404
    return-void
.end method
