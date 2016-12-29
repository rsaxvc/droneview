.class Lobject/p2pwificam/clientActivity/DPlayActivity$10;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2087
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->button_sel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$111(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2088
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    return-void

    .line 2069
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$104(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2072
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$106(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2075
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$107(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2078
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$108(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2081
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$109(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2084
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$110(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 2066
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
