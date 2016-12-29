.class Lobject/p2pwificam/clientActivity/DPlayActivity$22;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1818
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$162(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1819
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$163(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$164(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1821
    return-void
.end method
