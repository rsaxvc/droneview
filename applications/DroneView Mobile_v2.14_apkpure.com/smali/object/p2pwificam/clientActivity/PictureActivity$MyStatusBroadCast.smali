.class Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "PictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PictureActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/PictureActivity;Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;-><init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string v1, "camera_status_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$MyStatusBroadCast;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$0(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/adapter/PictureActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->notifyDataSetChanged()V

    .line 220
    :cond_0
    return-void
.end method
