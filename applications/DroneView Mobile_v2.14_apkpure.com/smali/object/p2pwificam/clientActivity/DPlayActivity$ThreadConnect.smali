.class Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;
.super Ljava/lang/Thread;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadConnect"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 632
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 634
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->connectDevice()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$124(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 635
    const-string v0, "DPlay"

    const-string v1, "ThreadConnect Finish "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method
