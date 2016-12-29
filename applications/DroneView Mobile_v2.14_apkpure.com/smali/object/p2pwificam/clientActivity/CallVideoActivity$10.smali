.class Lobject/p2pwificam/clientActivity/CallVideoActivity$10;
.super Ljava/lang/Object;
.source "CallVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$10;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1044
    const-string v0, "CallVideoActivity"

    const-string v1, "auto hangup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$10;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/4 v1, 0x1

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->Hangup(I)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 1046
    return-void
.end method
