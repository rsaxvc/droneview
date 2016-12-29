.class Lobject/p2pwificam/clientActivity/PlayActivity$16;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 3304
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3307
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3309
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3328
    :goto_0
    return-void

    .line 3312
    :sswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    goto :goto_0

    .line 3317
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    goto :goto_0

    .line 3322
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$16;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->showExtInfo()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$69(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    goto :goto_0

    .line 3309
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
