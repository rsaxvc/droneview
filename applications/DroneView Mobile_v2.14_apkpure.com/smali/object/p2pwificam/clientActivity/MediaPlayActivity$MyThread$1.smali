.class Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;
.super Ljava/lang/Object;
.source "MediaPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->exit:Z

    .line 113
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->finish()V

    .line 114
    const-string v0, "tagx"

    const-string v1, "PlayBackActivity.this.finish();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity$MyThread;)Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    move-result-object v0

    const v1, 0x7f040006

    .line 116
    const/high16 v2, 0x7f040000

    .line 115
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->overridePendingTransition(II)V

    .line 117
    return-void
.end method
