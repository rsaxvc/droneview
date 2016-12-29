.class Lobject/p2pwificam/clientActivity/DronePlayActivity$7;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1666
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->button_sel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$66(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1667
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    return-void

    .line 1648
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$59(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1651
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$61(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1654
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$62(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1657
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$63(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1660
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$64(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1663
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$65(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 1645
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800af
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
