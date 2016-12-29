.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$26(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 394
    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$83(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->access$0(Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;)Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    move-result-object v0

    const v1, 0x7f0601a9

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToastLong(I)V

    .line 397
    return-void
.end method
