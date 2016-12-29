.class Lobject/p2pwificam/clientActivity/ScreenOffReceiver$1;
.super Ljava/lang/Object;
.source "ScreenOffReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ScreenOffReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ScreenOffReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ScreenOffReceiver$1;->this$0:Lobject/p2pwificam/clientActivity/ScreenOffReceiver;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lobject/p2pipcam/utils/NDTSUtils;->Close()V

    .line 40
    const-string v1, "NDT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen Off KillProcess"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;
    invoke-static {}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$0()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    # getter for: Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;
    invoke-static {}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$0()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 50
    .local v0, "in":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "in":Landroid/content/Intent;
    # getter for: Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;
    invoke-static {}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$0()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lobject/p2pwificam/clientActivity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0    # "in":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    # getter for: Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;
    invoke-static {}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    const-string v1, "NDT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    # getter for: Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->_activity:Landroid/app/Activity;
    invoke-static {}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ScreenOffReceiver;->access$1(Landroid/app/Activity;)V

    .line 59
    .end local v0    # "in":Landroid/content/Intent;
    :cond_0
    return-void
.end method
