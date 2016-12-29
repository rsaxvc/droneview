.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 795
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 798
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 799
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 801
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 802
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->timeoutHandle:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 811
    .end local v0    # "msgMessage":Landroid/os/Message;
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isExit:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 806
    const v2, 0x7f060198

    const/4 v3, 0x0

    .line 805
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 809
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->finish()V

    goto :goto_0
.end method
