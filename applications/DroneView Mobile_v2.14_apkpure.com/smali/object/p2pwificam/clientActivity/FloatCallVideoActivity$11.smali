.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "FloatCallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 1034
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1037
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    const-class v3, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService(Landroid/content/Intent;)Z

    .line 1043
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method