.class Lobject/p2pwificam/clientActivity/PlayActivity$10;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2675
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->btnLight:Landroid/widget/ImageButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$58(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->lightCtrlView:Landroid/view/View;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$59(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/View;

    move-result-object v4

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V
    invoke-static {v2, v3, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$60(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2677
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 2678
    .local v0, "sb_white":Landroid/widget/SeekBar;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 2679
    .local v1, "sb_yellow":Landroid/widget/SeekBar;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->light_white_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2680
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->light_yellow_value:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2681
    return-void
.end method
