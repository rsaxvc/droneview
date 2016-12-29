.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->showPopupWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private final synthetic val$cbx:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->val$cbx:Landroid/widget/CheckBox;

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1719
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->val$cbx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->set_event_event_notification(Landroid/content/Context;Z)V

    .line 1720
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->notification_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$20(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1721
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$21;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->notification_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$20(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1722
    return-void
.end method
