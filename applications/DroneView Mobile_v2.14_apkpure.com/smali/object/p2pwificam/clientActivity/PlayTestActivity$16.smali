.class Lobject/p2pwificam/clientActivity/PlayTestActivity$16;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1363
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->bgetCameraParamsThreadRuning:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$98(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    return-void

    .line 1365
    :cond_0
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->getCameraParams()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
