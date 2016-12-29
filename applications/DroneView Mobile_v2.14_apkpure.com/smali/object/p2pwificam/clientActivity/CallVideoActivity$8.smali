.class Lobject/p2pwificam/clientActivity/CallVideoActivity$8;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 714
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 717
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 719
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 754
    :goto_0
    :sswitch_0
    return-void

    .line 722
    :sswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/4 v2, 0x2

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->Hangup(I)V
    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    goto :goto_0

    .line 728
    :sswitch_2
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 729
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewSnap:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$20(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 736
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :sswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$21(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 740
    :sswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$21(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 745
    :sswitch_5
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewOpenLock:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$22(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 719
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
    .end sparse-switch
.end method
