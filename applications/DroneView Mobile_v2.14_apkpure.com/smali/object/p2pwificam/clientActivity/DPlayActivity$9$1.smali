.class Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1926
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->vedioview:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$95(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1927
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1928
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1929
    return-void
.end method
