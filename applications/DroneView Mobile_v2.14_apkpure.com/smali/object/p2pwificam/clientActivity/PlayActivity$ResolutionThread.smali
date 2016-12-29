.class Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;
.super Ljava/lang/Thread;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolutionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 3277
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;)Lobject/p2pwificam/clientActivity/PlayActivity;
    .locals 1

    .prologue
    .line 3277
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3281
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3282
    :cond_0
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$121(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 3302
    return-void

    .line 3285
    :cond_1
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3290
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$121(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$122(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 3291
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$121(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3293
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread$1;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;)V

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3286
    :catch_0
    move-exception v0

    .line 3288
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
