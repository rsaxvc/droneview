.class Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/VideoActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/VideoActivity;Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "action":Ljava/lang/String;
    const-string v1, "camera_status_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$0(Lobject/p2pwificam/clientActivity/VideoActivity;)Lobject/p2pipcam/adapter/VideoActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->notifyDataSetChanged()V

    .line 222
    const-string v1, "tag"

    const-string v2, "camera_status_change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method
