.class Lobject/p2pwificam/clientActivity/PlayTestActivity$3;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 950
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 957
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->getCameraParams()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    .line 961
    return-void
.end method
