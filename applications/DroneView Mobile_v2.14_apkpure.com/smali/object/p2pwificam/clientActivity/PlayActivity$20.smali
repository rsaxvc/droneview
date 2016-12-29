.class Lobject/p2pwificam/clientActivity/PlayActivity$20;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 3466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x1010003

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3470
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->showSwitchButton:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$72(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3472
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$73(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 3473
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v0, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3474
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$74(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3481
    :goto_0
    return-void

    .line 3477
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$73(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 3478
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v0, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3479
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$20;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$74(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
