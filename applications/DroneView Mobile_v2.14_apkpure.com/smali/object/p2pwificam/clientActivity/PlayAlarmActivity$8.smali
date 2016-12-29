.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;
.super Landroid/os/Handler;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 2601
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

    .line 2605
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2607
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2644
    :goto_0
    :pswitch_0
    return-void

    .line 2615
    :pswitch_1
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 2616
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewSnap:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$39(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2617
    :catch_0
    move-exception v0

    .line 2619
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2626
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2630
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2635
    :pswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewOpenLock:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$41(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2607
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
