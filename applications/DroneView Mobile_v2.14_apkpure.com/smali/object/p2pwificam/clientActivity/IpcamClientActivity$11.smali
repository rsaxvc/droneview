.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1760
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/utils/Pub;->get_event_notification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/NDTSUtils;->Start(Landroid/content/Context;I)V

    .line 1767
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$11;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/utils/NDTSUtils;->Stop(Landroid/content/Context;)V

    goto :goto_0
.end method
