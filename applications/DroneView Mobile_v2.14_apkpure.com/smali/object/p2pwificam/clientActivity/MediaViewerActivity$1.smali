.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$1;
.super Landroid/os/Handler;
.source "MediaViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->finish()V

    .line 422
    :cond_0
    return-void
.end method
