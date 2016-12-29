.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAlarm(Lcom/easyview/basecamera/ICamera;I)V
    .locals 5
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "alarmType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1550
    packed-switch p2, :pswitch_data_0

    .line 1565
    :goto_0
    return-void

    .line 1552
    :pswitch_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1553
    const v3, 0x7f060152

    .line 1552
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, "strMotionAlarm":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    invoke-static {v2, v1, v3, v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$8(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    goto :goto_0

    .line 1557
    .end local v1    # "strMotionAlarm":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1558
    const v3, 0x7f060153

    .line 1557
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "strGpioAlarm":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$5;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    invoke-static {v2, v0, v3, v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$8(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    goto :goto_0

    .line 1550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
