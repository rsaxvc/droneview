.class Lobject/p2pwificam/clientActivity/StartActivity$1;
.super Landroid/os/Handler;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/StartActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    .line 70
    const/4 v0, 0x0

    .line 75
    .local v0, "in":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "in":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    const-class v2, Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .restart local v0    # "in":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/StartActivity;->access$0(Lobject/p2pwificam/clientActivity/StartActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 87
    const-string v1, "mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "did"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->event_did:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/StartActivity;->access$1(Lobject/p2pwificam/clientActivity/StartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "event_type"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->event_type:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/StartActivity;->access$2(Lobject/p2pwificam/clientActivity/StartActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "event_index"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->event_index:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/StartActivity;->access$3(Lobject/p2pwificam/clientActivity/StartActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v1, "event_time"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    # getter for: Lobject/p2pwificam/clientActivity/StartActivity;->event_time:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/StartActivity;->access$4(Lobject/p2pwificam/clientActivity/StartActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/StartActivity$1;->this$0:Lobject/p2pwificam/clientActivity/StartActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/StartActivity;->finish()V

    .line 102
    return-void
.end method
