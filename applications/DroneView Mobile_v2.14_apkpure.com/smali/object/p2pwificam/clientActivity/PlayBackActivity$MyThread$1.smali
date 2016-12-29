.class Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;)Lobject/p2pwificam/clientActivity/PlayBackActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lobject/p2pwificam/clientActivity/PlayBackActivity;->exit:Z

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;)Lobject/p2pwificam/clientActivity/PlayBackActivity;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->finish()V

    .line 81
    const-string v0, "tagx"

    const-string v1, "PlayBackActivity.this.finish();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread$1;->this$1:Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->this$0:Lobject/p2pwificam/clientActivity/PlayBackActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;->access$0(Lobject/p2pwificam/clientActivity/PlayBackActivity$MyThread;)Lobject/p2pwificam/clientActivity/PlayBackActivity;

    move-result-object v0

    const v1, 0x7f040006

    .line 83
    const/high16 v2, 0x7f040000

    .line 82
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/PlayBackActivity;->overridePendingTransition(II)V

    .line 84
    return-void
.end method
