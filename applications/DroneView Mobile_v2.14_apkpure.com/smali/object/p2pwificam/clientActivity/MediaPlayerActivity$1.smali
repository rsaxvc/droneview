.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$1;
.super Landroid/os/Handler;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    .line 489
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 491
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->finish()V

    .line 494
    :cond_0
    return-void
.end method
