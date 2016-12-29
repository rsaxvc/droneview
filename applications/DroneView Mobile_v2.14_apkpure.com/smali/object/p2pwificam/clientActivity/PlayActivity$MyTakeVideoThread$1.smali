.class Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$109(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayActivity;

    move-result-object v0

    const v1, 0x7f0601a9

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToastLong(I)V

    .line 439
    return-void
.end method
