.class Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayTestActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$26(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 402
    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 403
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayTestActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$83(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayTestActivity;

    move-result-object v0

    const v1, 0x7f0601a9

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToastLong(I)V

    .line 405
    return-void
.end method
