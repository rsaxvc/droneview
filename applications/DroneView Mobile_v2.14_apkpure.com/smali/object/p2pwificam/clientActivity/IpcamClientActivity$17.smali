.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;
.super Ljava/lang/Thread;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

.field private final synthetic val$did:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$pwd:Ljava/lang/String;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$did:Ljava/lang/String;

    iput-object p4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$user:Ljava/lang/String;

    iput-object p5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$pwd:Ljava/lang/String;

    .line 919
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 921
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$did:Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$user:Ljava/lang/String;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$pwd:Ljava/lang/String;

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$19(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$did:Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$user:Ljava/lang/String;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$pwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lobject/p2pipcam/adapter/CameraEditAdapter;->addCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    new-instance v0, Landroid/content/Intent;

    .line 924
    const-string v1, "del_add_modify_camera"

    .line 923
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "intentAdd":Landroid/content/Intent;
    const-string v1, "type"

    .line 926
    const/4 v2, 0x1

    .line 925
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    const-string v1, "cameraid"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$did:Ljava/lang/String;

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v1, "name"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$17;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 931
    return-void
.end method
