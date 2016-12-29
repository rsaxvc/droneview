.class Lobject/p2pipcam/utils/NDTSUtils$1;
.super Landroid/os/Handler;
.source "NDTSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/NDTSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Lobject/p2pipcam/utils/NDTSUtils;->Close()V

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lobject/p2pipcam/utils/NDTSUtils;->access$0(Landroid/os/Handler;)V

    .line 31
    :cond_0
    return-void
.end method
