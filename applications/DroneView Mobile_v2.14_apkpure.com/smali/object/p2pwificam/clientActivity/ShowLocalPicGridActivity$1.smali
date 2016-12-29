.class Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$1;
.super Landroid/os/Handler;
.source "ShowLocalPicGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->mAdapter:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;)Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method
