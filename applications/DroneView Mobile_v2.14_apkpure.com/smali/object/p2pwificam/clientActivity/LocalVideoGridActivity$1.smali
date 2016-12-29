.class Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$1;
.super Landroid/os/Handler;
.source "LocalVideoGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalVideoGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
