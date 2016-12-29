.class Lobject/p2pwificam/clientActivity/PlayActivity$22;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->showSureDialogPlay(Landroid/content/Context;)V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$22;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->Stop()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$68(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 593
    return-void
.end method
