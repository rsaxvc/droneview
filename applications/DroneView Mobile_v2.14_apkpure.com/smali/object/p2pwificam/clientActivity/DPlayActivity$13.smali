.class Lobject/p2pwificam/clientActivity/DPlayActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$13;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 2249
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2253
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2255
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$13;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const-class v3, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2256
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$13;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->stopService(Landroid/content/Intent;)Z

    .line 2258
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method
