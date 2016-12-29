.class Lobject/p2pwificam/clientActivity/PlayActivity$4;
.super Landroid/os/Handler;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1050
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1057
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->getCameraParams()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$15(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 1060
    return-void
.end method
