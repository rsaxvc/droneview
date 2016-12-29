.class Lobject/p2pwificam/clientActivity/DronePlayActivity$8;
.super Landroid/os/Handler;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1677
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 1680
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1682
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1724
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1685
    :sswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const-string v4, "isFirst"

    invoke-virtual {v3, v4, v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$67(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/content/SharedPreferences;)V

    .line 1686
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->preference:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$68(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "playflag"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1688
    .local v1, "playflag":Ljava/lang/Boolean;
    const-string v2, "ViewRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callBackpenLockParams    playflag == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->quit()V

    goto :goto_0

    .line 1699
    .end local v1    # "playflag":Ljava/lang/Boolean;
    :sswitch_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1700
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewSnap:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$69(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1707
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :sswitch_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$70(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1711
    :sswitch_4
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewRecord:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$70(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1716
    :sswitch_5
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewOpenLock:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$71(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1682
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
