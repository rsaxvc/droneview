.class Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AlarmActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/AlarmActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/AlarmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/AlarmActivity;Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/AlarmActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string v4, "camera_event_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/AlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/AlarmActivity;->access$0(Lobject/p2pwificam/clientActivity/AlarmActivity;)Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->notifyDataSetChanged()V

    .line 93
    :cond_0
    const-string v4, "camera_status_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const-string v4, "cameraid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "did":Ljava/lang/String;
    const-string v4, "pppp_status"

    .line 96
    const/4 v5, -0x1

    .line 95
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "status":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/AlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/AlarmActivity;->access$0(Lobject/p2pwificam/clientActivity/AlarmActivity;)Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->notifyDataSetChanged()V

    .line 99
    .end local v1    # "did":Ljava/lang/String;
    .end local v2    # "status":I
    :cond_1
    const-string v4, "del_add_modify_camera"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, "type":I
    const-string v4, "cameraid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "did":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 140
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/AlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AlarmActivity;->listAdapter:Lobject/p2pipcam/adapter/AlarmActivityAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/AlarmActivity;->access$0(Lobject/p2pwificam/clientActivity/AlarmActivity;)Lobject/p2pipcam/adapter/AlarmActivityAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/AlarmActivityAdapter;->notifyDataSetChanged()V

    .line 142
    .end local v1    # "did":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_2
    return-void

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
