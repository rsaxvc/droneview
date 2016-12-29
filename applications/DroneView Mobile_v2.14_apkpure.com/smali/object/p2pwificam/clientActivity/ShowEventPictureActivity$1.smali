.class Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$1;
.super Landroid/os/Handler;
.source "ShowEventPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;Z)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
