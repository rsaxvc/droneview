.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;
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
    name = "StartPPPPThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$StartPPPPThread;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->StartCameraPPPP()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$10(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method
