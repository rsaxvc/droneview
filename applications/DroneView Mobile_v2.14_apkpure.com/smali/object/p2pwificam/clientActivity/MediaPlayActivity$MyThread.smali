.class Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;
.super Ljava/lang/Thread;
.source "MediaPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)Lobject/p2pwificam/clientActivity/MediaPlayActivity;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 96
    :cond_0
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    iget-boolean v2, v2, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->exit:Z

    if-nez v2, :cond_1

    .line 121
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 122
    return-void

    .line 97
    :cond_1
    const-string v2, "tagx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "i2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$10(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$11(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$11(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$12(Lobject/p2pwificam/clientActivity/MediaPlayActivity;I)V

    .line 99
    const/16 v1, 0x3a98

    .line 100
    .local v1, "wait_ms":I
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$10(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v2

    if-lez v2, :cond_2

    const/16 v1, 0x1388

    .line 102
    :cond_2
    int-to-long v2, v1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i2:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$10(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->i1:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$11(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 108
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    new-instance v3, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;

    invoke-direct {v3, p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)V

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
